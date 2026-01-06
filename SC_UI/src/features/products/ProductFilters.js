import React, { useMemo, useState } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { setFilters } from './productsSlice';
import './product.css';

export default function ProductFilters() {
  const dispatch = useDispatch();
  const products = useSelector((state) => state.products.items);
  const filters = useSelector((state) => state.products.filters);
  const categories = useSelector((state) => state.categories.items);

  const tags = useMemo(() => {
    const s = new Set();
    if (!products) return [];
    products.forEach((p) => {
      if (!p.tags) return;
      const tagArray = Array.isArray(p.tags) ? p.tags : p.tags.split(',').map((t) => t.trim());
      tagArray.forEach((t) => s.add(typeof t === 'string' ? t.trim() : t));
    });
    return Array.from(s);
  }, [products]);

  const [minPrice, setMinPrice] = useState(filters.priceRange[0] === 0 ? '' : filters.priceRange[0]);
  const [maxPrice, setMaxPrice] = useState(filters.priceRange[1] === Infinity ? '' : filters.priceRange[1]);

  const toggleTag = (tag) => {
    const nextTags = filters.tags.includes(tag)
      ? filters.tags.filter((t) => t !== tag)
      : [...filters.tags, tag];
    dispatch(setFilters({ tags: nextTags }));
  };

  const changeCategory = (e) => {
    dispatch(setFilters({ category: e.target.value }));
  };

  const applyPrice = () => {
    const min = minPrice === '' ? 0 : Number(minPrice);
    const max = maxPrice === '' ? Infinity : Number(maxPrice);
    dispatch(setFilters({ priceRange: [min, max] }));
  };

  const clearFilters = () => {
    dispatch(setFilters({ search: '', category: '', priceRange: [0, Infinity], tags: [], inStockOnly: false }));
    setMinPrice('');
    setMaxPrice('');
  };

  const toggleInStock = () => {
    dispatch(setFilters({ inStockOnly: !filters.inStockOnly }));
  };

  return (
    <aside className="filters-panel">
      <h4>Filters</h4>

      <div className="filter-section">
        <label>Category</label>
        <select value={filters.category} onChange={changeCategory}>
          <option key="all" value="">All</option>
          {(categories || []).map((c) => (
            <option key={c.categoryId ?? c.name} value={c.name}>{c.name}</option>
          ))}
        </select>
      </div>

      <div className="filter-section">
        <label>Price</label>
        <div className="price-inputs">
          <input type="number" placeholder="Min" value={minPrice} onChange={(e) => setMinPrice(e.target.value)} />
          <input type="number" placeholder="Max" value={maxPrice} onChange={(e) => setMaxPrice(e.target.value)} />
        </div>
        <button className="apply-btn" onClick={applyPrice}>Apply</button>
      </div>

      <div className="filter-section">
        <label>Tags</label>
        <div className="tags-list">
          {tags.map((t) => (
            <label key={t} className="tag-item">
              <input type="checkbox" checked={filters.tags.includes(t)} onChange={() => toggleTag(t)} /> {t}
            </label>
          ))}
        </div>
      </div>

      <div className="filter-section">
        <label>
          <input type="checkbox" checked={filters.inStockOnly} onChange={toggleInStock} /> In stock only
        </label>
      </div>

      <div className="filter-actions">
        <button className="clear-btn" onClick={clearFilters}>Clear</button>
      </div>
    </aside>
  );
}