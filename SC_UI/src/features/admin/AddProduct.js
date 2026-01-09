import React, { useState } from "react";
import "./admin.css";
import { useNavigate } from "react-router-dom";
import { useSelector } from "react-redux";

const AddProduct = () => {
  const navigate = useNavigate();
  const categories = useSelector((state) => state.categories.items);

  const [form, setForm] = useState({
    name: "",
    price: "",
    description: "",
    categoryId: "",
    stock: "",
    tags: "",
    imageUrl: "",
  });

  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState(null);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setForm((s) => ({ ...s, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setMessage(null);

    const payload = {
      name: form.name,
      description: form.description,
      categoryId: parseInt(form.categoryId, 10) || 0,
      currencyCode: "INR",
      price: parseFloat(form.price) || 0,
      tags: form.tags,
      imageUrl:
        form.imageUrl ||
        "https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400",
      stock: parseInt(form.stock, 10) || 0,
      createdAt: new Date().toISOString(),
      modifiedAt: new Date().toISOString(),
      popularityScore: 0,
      rating: 0,
      reviewCount: 0,
    };

    try {
      const res = await fetch("https://localhost:7150/api/Product/AddProduct", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (!res.ok) {
        const text = await res.text();
        throw new Error(text || "Failed to add product");
      }

      const data = await res.json();
      // Show success popup and navigate
      if (data && data.productId) {
        alert(`Product "${form.name}" added successfully!`);
        navigate(`/product/${data.productId}`);
      } else {
        setMessage("Product added successfully");
        setTimeout(() => navigate("/"), 800);
      }
    } catch (err) {
      setMessage(`Error: ${err.message}`);
    } finally {
      setLoading(false);
    }
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
            <input
              name="name"
              value={form.name}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-row">
            <label>Price (₹)</label>
            <input
              name="price"
              type="number"
              step="0.01"
              value={form.price}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-row full-width">
            <label>Description</label>
            <textarea
              name="description"
              value={form.description}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-row filter-section">
            <label>Category</label>
            <select name="categoryId" value={form.categoryId} onChange={handleChange} required>
              <option value="">-- Select Category --</option>
              {categories.map((c) => (
                <option key={c.categoryId} value={c.categoryId}>
                  {c.name}
                </option>
              ))}
            </select>
          </div>

          <div className="form-row  filter-section">
            <label>Stock</label>
            <input
              name="stock"
              type="number"
              value={form.stock}
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-row  filter-section">
            <label>Image URL</label>
            <input
              name="imageUrl"
              value={form.imageUrl}
              onChange={handleChange}
            />
          </div>

          <div className="form-row full-width">
            <label>Tags (comma separated)</label>
            <input name="tags" value={form.tags} onChange={handleChange} />
          </div>

          {message && <div className="form-message">{message}</div>}

          <div className="form-row full-width actions">
            <button
              type="submit"
              className="btn btn-primary"
              disabled={loading}
            >
              {loading ? "Adding..." : "Add Product"}
            </button>
            <button
              type="button"
              className="btn btn-secondary"
              onClick={() =>
                setForm({
                  name: "",
                  price: "",
                  description: "",
                  categoryId: "",
                  stock: "",
                  tags: "",
                  imageUrl: "",
                })
              }
            >
              Clear
            </button>
          </div>
        </form>
      </div>
    </>
  );
};

export default AddProduct;
