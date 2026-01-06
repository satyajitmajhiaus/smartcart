import React, { useState, useEffect } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import './admin.css';

const UpdateProduct = () => {
    const location = useLocation();
    const navigate = useNavigate();
    const product = location.state && location.state.product ? location.state.product : null;

    const [form, setForm] = useState({
        productId: product?.productId || product?.id || '',
        name: product?.name || '',
        price: product?.price || '',
        description: product?.description || '',
        categoryId: product?.categoryId || product?.category || '',
        stock: product?.stock || '',
        tags: product?.tags || '',
        imageUrl: product?.imageUrl || '',
        createdAt: product?.createdAt || new Date().toISOString(),
        modifiedAt: new Date().toISOString()
    });

    useEffect(() => {
        if (product) {
            setForm((s) => ({
                ...s,
                productId: product.productId || product.id || s.productId,
                name: product.name || s.name,
                price: product.price || s.price,
                description: product.description || s.description,
                categoryId: product.categoryId || product.category || s.categoryId,
                stock: product.stock || s.stock,
                tags: product.tags || s.tags,
                imageUrl: product.imageUrl || s.imageUrl,
                createdAt: product.createdAt || s.createdAt,
            }));
        }
    }, [product]);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setForm((s) => ({ ...s, [name]: value }));
    };

    const [loading, setLoading] = useState(false);
    const [message, setMessage] = useState(null);

    const handleSubmit = async (e) => {
        e.preventDefault();
        setLoading(true);
        setMessage(null);

        const payload = {
            productId: parseInt(form.productId, 10),
            name: form.name,
            description: form.description,
            categoryId: parseInt(form.categoryId, 10) || 0,
            currencyCode: 'INR',
            price: parseFloat(form.price) || 0,
            tags: form.tags,
            imageUrl: form.imageUrl || 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
            stock: parseInt(form.stock, 10) || 0,
            createdAt: form.createdAt || new Date().toISOString(),
            modifiedAt: new Date().toISOString(),
            popularityScore: product?.popularityScore || 0,
            rating: product?.rating || 0,
            reviewCount: product?.reviewCount || 0
        };

        try {
            const res = await fetch('https://localhost:7150/api/Product/UpdateProduct', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(payload),
            });

            if (!res.ok) {
                const text = await res.text();
                throw new Error(text || 'Failed to update product');
            }

            const data = await res.json();
            setMessage('Product updated successfully');
            setTimeout(() => navigate(`/product/${form.productId}`), 800);
        } catch (err) {
            setMessage(`Error: ${err.message}`);
        } finally {
            setLoading(false);
        }
    };

    if (!product) {
        return (
            <div className="product-card">
                <div className="product-header"><h2>Update Product</h2></div>
                <div style={{ padding: 20 }}>No product data provided. Navigate from product list edit button.</div>
            </div>
        );
    }

    return (
        <>
            <div className="product-header">
                <h2>Update Product</h2>
            </div>

            <div className="product-card">
                <form className="product-form" onSubmit={handleSubmit}>
                    <div className="form-row" hidden>
                        <label>Product Id</label>
                        <input name="productId" value={form.productId} onChange={handleChange} readOnly />
                    </div>

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
                        <label>Category Id</label>
                        <input name="categoryId" type="number" value={form.categoryId} onChange={handleChange} required/>
                    </div>

                    <div className="form-row">
                        <label>Stock</label>
                        <input name="stock" type="number" value={form.stock} onChange={handleChange} required/>
                    </div>

                    <div className="form-row">
                        <label>Image URL</label>
                        <input name="imageUrl" value={form.imageUrl} onChange={handleChange} />
                    </div>

                    <div className="form-row full-width">
                        <label>Tags (comma separated)</label>
                        <input name="tags" value={form.tags} onChange={handleChange} />
                    </div>

                    {message && <div className="form-message">{message}</div>}

                    <div className="form-row full-width actions">
                        <button type="submit" className="btn btn-primary" disabled={loading}>{loading ? 'Updating...' : 'Update Product'}</button>
                        <button type="button" className="btn btn-secondary" onClick={() => navigate(-1)}>Cancel</button>
                    </div>
                </form>
            </div>
        </>
    );
};

export default UpdateProduct;