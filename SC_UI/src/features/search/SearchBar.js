import React, { useState, useEffect, useRef } from "react";
import { useDispatch, useSelector } from "react-redux";
import { setFilters } from "../products/productsSlice";
import { BsSearch } from "react-icons/bs";
import { fetchProductsByQuery } from "../products/productsSlice";
import { useNavigate } from "react-router-dom";
import "../menu/Navbar.css";

export default function SearchBar() {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [query, setQuery] = useState("");
  const [showSuggestions, setShowSuggestions] = useState(false);
  const [suggestions, setSuggestions] = useState([]);
  const abortRef = useRef(null);
  const debounceRef = useRef(null);
  const wrapperRef = useRef(null);

  const handleChange = (e) => {
    const val = e.target.value;
    setQuery(val);
    setShowSuggestions(val.trim().length > 0);
  };

  useEffect(() => {
    // debounce input
    if (debounceRef.current) clearTimeout(debounceRef.current);
    if (!query || !query.trim()) {
      setSuggestions([]);
      return;
    }
    debounceRef.current = setTimeout(async () => {
      // cancel previous fetch
      if (abortRef.current) abortRef.current.abort();
      const controller = new AbortController();
      abortRef.current = controller;
      try {
        const q = encodeURIComponent(query.trim());
        const res = await fetch(`https://localhost:7150/api/Product/GetAutoSuggestedProducts?query=${q}`, { signal: controller.signal });
        if (!res.ok) return setSuggestions([]);
        const data = await res.json();
        // expect data to be an array of suggestions (strings or objects)
        if (!data) return setSuggestions([]);
        // normalize to [{ name, id? }]
        const items = Array.isArray(data) ? data.slice(0, 8) : [];
        const normalized = items.map((it) => {
          if (!it) return null;
          if (typeof it === "string") return { name: it };
          if (typeof it === "object") return { name: it.name ?? it.title ?? String(it), id: it.id ?? it.categoryId ?? it.pId ?? undefined };
          return null;
        }).filter(Boolean);
        setSuggestions(normalized);
      } catch (err) {
        if (err.name === 'AbortError') return;
        setSuggestions([]);
      }
    }, 250);

    return () => {
      if (debounceRef.current) clearTimeout(debounceRef.current);
    };
  }, [query]);

  useEffect(() => {
    // Handle click outside to close suggestions
    const handleClickOutside = (event) => {
      if (wrapperRef.current && !wrapperRef.current.contains(event.target)) {
        setShowSuggestions(false);
      }
    };

    document.addEventListener("mousedown", handleClickOutside);
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!query.trim()) return;
    // dispatch(setFilters({ search: query }));
    navigate(`/search?k=${encodeURIComponent(query.toLowerCase())}`, { state: { query } });
    dispatch(fetchProductsByQuery(query));
    setShowSuggestions(false);
  };

  const handleSuggestionClick = (name) => {
    setQuery(name);
    navigate(`/search?k=${encodeURIComponent(name)}`, { state: { query: name } });
    dispatch(fetchProductsByQuery(name));
    setShowSuggestions(false);
  };

  return (
    <div className="nav-search-wrapper mx-auto" ref={wrapperRef}>
      <form className="nav-search-form" onSubmit={handleSubmit}>
        <input
          name="navSearch"
          className="nav-search"
          type="search"
          placeholder="Search Products"
          aria-label="Search"
          autoComplete="off"
          value={query}
          onChange={handleChange}
          onFocus={() => query && setShowSuggestions(true)}
        />
        <button
          className="nav-search-btn"
          type="submit"
          aria-label="Search button"
        >
          <BsSearch />
        </button>

        {showSuggestions && suggestions.length > 0 && (
          <div className="search-suggestions">
            {suggestions.map((product) => (
              <div
                key={product.pId}
                className="suggestion-item"
                onClick={() => handleSuggestionClick(product.name)}
              >
                <span className="suggestion-name">{product.name}</span>
              </div>
            ))}
          </div>
        )}
      </form>
    </div>
  );
}
