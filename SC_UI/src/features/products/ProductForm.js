import React, { useState, useEffect } from 'react';
import { useDispatch } from 'react-redux';
import { addProduct, updateProduct } from './productsSlice';

const emptyProduct = {
  id: null,
  name: '',
  description: '',
  price: 0,
  category: '',
  tags: [],
  stock: 0,
};

export default function ProductForm({ existingProduct, onSave }) {
  const [product, setProduct] = useState(existingProduct || emptyProduct);
  const dispatch = useDispatch();

  useEffect(() => {
    if (existingProduct) {
      setProduct(existingProduct);
    }
  }, [existingProduct]);

  const handleChange = e => {
    const { name, value } = e.target;
    setProduct(prev => ({ ...prev, [name]: name === 'price' || name === 'stock' ? Number(value) : value }));
  };

  const handleTagsChange = e => {
    setProduct(prev => ({ ...prev, tags: e.target.value.split(',').map(t => t.trim()) }));
  };

  const handleSubmit = e => {
    e.preventDefault();
    if (product.id) {
      dispatch(updateProduct(product));
    } else {
      dispatch(addProduct({ ...product, id: Date.now().toString() }));
    }
    if (onSave) onSave();
    setProduct(emptyProduct);
  };

  return (
    <form onSubmit={handleSubmit}>
      <input name="name" value={product.name} onChange={handleChange} placeholder="Name" required />
      <textarea name="description" value={product.description} onChange={handleChange} placeholder="Description" />
      <input name="price" type="number" value={product.price} onChange={handleChange} placeholder="Price" min="0" step="0.01" required />
      <input name="category" value={product.category} onChange={handleChange} placeholder="Category" />
      <input name="tags" value={product.tags.join(', ')} onChange={handleTagsChange} placeholder="Tags (comma separated)" />
      <input name="stock" type="number" value={product.stock} onChange={handleChange} placeholder="Stock" min="0" required />
      <button type="submit">Save Product</button>
    </form>
  );
}