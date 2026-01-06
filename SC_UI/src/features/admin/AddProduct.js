
import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { addProduct } from '../products/productsSlice';
import './admin.css';

const AddProduct = () => {
    const dispatch = useDispatch();
    const products = useSelector((state) => state.products.items || []);

    const [form, setForm] = useState({
        name: '',
        price: '',
        description: '',
        category: '',
        stock: '',
        tags: '',
    });

    const handleChange = (e) => {
        const { name, value } = e.target;
        setForm((s) => ({ ...s, [name]: value }));
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        const nextId = products && products.length ? Math.max(...products.map(p => p.id || 0)) + 1 : 1;
        const payload = {
            id: nextId,
            name: form.name,
            price: parseFloat(form.price) || 0,
            description: form.description,
            category: form.category,
            stock: parseInt(form.stock, 10) || 0,
            tags: form.tags ? form.tags.split(',').map(t => t.trim()).filter(Boolean) : [],
        };

        dispatch(addProduct(payload));
        setForm({ name: '', price: '', description: '', category: '', stock: '', tags: '' });
    };

    return (
        <>
            <div className="product-header">
                <h2>Add Product</h2>
            </div>

            <div className="product-card">
                <form className="product-form" onSubmit={handleSubmit}>
                    <div className="form-row">
                        <label>Name</label>
                        <input name="name" value={form.name} onChange={handleChange} required />
                    </div>

                    <div className="form-row">
                        <label>Price (₹)</label>
                        <input name="price" type="number" step="0.01" value={form.price} onChange={handleChange} required />
                    </div>

                    <div className="form-row full-width">
                        <label>Description</label>
                        <textarea name="description" value={form.description} onChange={handleChange} required/>
                    </div>

                    <div className="form-row">
                        <label>Category</label>
                        <input name="category" value={form.category} onChange={handleChange} required/>
                    </div>

                    <div className="form-row">
                        <label>Stock</label>
                        <input name="stock" type="number" value={form.stock} onChange={handleChange} required/>
                    </div>

                    <div className="form-row full-width">
                        <label>Tags (comma separated)</label>
                        <input name="tags" value={form.tags} onChange={handleChange} />
                    </div>

                    <div className="form-row full-width actions">
                        <button type="submit" className="btn btn-primary">Add Product</button>
                        <button type="button" className="btn btn-secondary" onClick={() => setForm({ name: '', price: '', description: '', category: '', stock: '', tags: '' })}>Clear</button>
                    </div>
                </form>
            </div>
        </>
    );
};

export default AddProduct;