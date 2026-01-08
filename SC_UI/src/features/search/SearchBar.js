import React, { useState, useMemo } from "react";
import { useDispatch, useSelector } from "react-redux";
import { setFilters } from "../products/productsSlice";
import { BsSearch } from "react-icons/bs";
import { fetchProductsByQuery } from "../products/productsSlice";
import { useNavigate } from "react-router-dom";
import "../menu/Navbar.css";

export default function SearchBar() {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const products = useSelector((state) => state.products.items);
  const [query, setQuery] = useState("");
  const [showSuggestions, setShowSuggestions] = useState(false);

  const suggestions = useMemo(() => {
    if (!query.trim()) return [];
    const q = query.toLowerCase();
    // match on name only, then deduplicate by name (case-insensitive), keeping first occurrence
    const matches = products.filter((p) => p.name.toLowerCase().includes(q));
    const seen = new Set();
    const unique = [];
    for (const p of matches) {
      const n = p.name.toLowerCase();
      if (!seen.has(n)) {
        seen.add(n);
        unique.push(p);
      }
      if (unique.length >= 8) break;
    }
    return unique;
  }, [query, products]);

  const handleChange = (e) => {
    const val = e.target.value;
    setQuery(val);
    setShowSuggestions(val.trim().length > 0);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!query.trim()) return;
    // dispatch(setFilters({ search: query }));
    navigate(`/search?k=${query.toLowerCase()}`, { state: { query } });
    dispatch(fetchProductsByQuery(query));
    setShowSuggestions(false);
  };

  const handleSuggestionClick = (name) => {
    setQuery(name);
    navigate(`/search?k=${query}`, { state: { query } });
    dispatch(fetchProductsByQuery(query));
    setShowSuggestions(false);
  };

  return (
    <div className="nav-search-wrapper mx-auto">
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
