import React, { useState } from "react";
import { useParams, useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { addItem } from "../cart/cartSlice";
import { Container, Row, Col, Button } from "react-bootstrap";
import { FaArrowLeft, FaShoppingCart } from "react-icons/fa";
import "./productDetails.css";

export default function ProductDetails() {
  const { productId } = useParams();
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const products = useSelector((state) => state.products.items);
  const cartItems = useSelector((state) => state.cart.items);

  const product = products.find((p) => p.productId === parseInt(productId));
  const [quantity, setQuantity] = useState(1);

  if (!product) {
    return (
      <Container className="product-not-found">
        <div className="not-found-content">
          <h2>Product not found</h2>
          <Button variant="primary" onClick={() => navigate("/")}>
            Back to Products
          </Button>
        </div>
      </Container>
    );
  }

  const cartItem = cartItems.find((item) => item.pId === product.pId);
  const quantityInCart = cartItem ? cartItem.quantity : 0;
  const canAddMore = product.stock > quantityInCart;

  const handleAddToCart = () => {
    if (quantity > 0 && canAddMore) {
      for (let i = 0; i < quantity; i++) {
        dispatch(addItem(product));
      }
      setQuantity(1);
    }
  };

  const handleQuantityChange = (e) => {
    const value = parseInt(e.target.value);
    const maxAllowed = product.stock - quantityInCart;
    if (value > 0 && value <= maxAllowed) {
      setQuantity(value);
    }
  };

  const handleBuyNow = () => {
    if (quantity > 0 && canAddMore) {
      for (let i = 0; i < quantity; i++) {
        dispatch(addItem(product));
      }
      navigate("/cart");
    }
  };

  const totalPrice = (product.price * quantity).toFixed(2);
  const tagsArray = Array.isArray(product.tags)
    ? product.tags
    : product.tags
    ? product.tags.split(",").map((t) => t.trim())
    : [];

  return (
    <>
      <div className="cart-header">
        <h2>Product Details</h2>
      </div>
      <div className="back-button">
        <Button
          variant="link"
          onClick={() => navigate("/")}
          className="back-link"
        >
          <FaArrowLeft /> Back to Products
        </Button>
      </div>

      <div className="product-details-wrapper">
        <Row className="product-details-row">
          {/* Left Side - Image */}
          <Col lg={5} md={12} className="product-image-section">
            <div className="product-image-container">
              <img
                src={product.imageUrl}
                alt={product.name}
                className="product-detail-image"
              />
            </div>
          </Col>

          {/* Right Side - Details */}
          <Col lg={7} md={12} className="product-info-section">
            <div className="product-details-info">
              {/* Product Name and Category */}
              <div className="product-header-details">
                <h1 className="product-detail-name">{product.name}</h1>
                <p className="product-category">{product.category}</p>
              </div>

              {/* Price Section */}
              <div className="price-section">
                <div className="price-main">
                  <span className="currency">₹</span>
                  <span className="price-amount">
                    {product.price.toFixed(2)}
                  </span>
                </div>
              </div>

              {/* Stock Status */}
              <div className="stock-status">
                {product.stock > 0 ? (
                  <span className="in-stock">
                    <span className="stock-indicator">✓</span>
                    In Stock ({product.stock} items available)
                  </span>
                ) : (
                  <span className="out-of-stock">
                    <span className="stock-indicator">✕</span>
                    Out of Stock
                  </span>
                )}
              </div>

              {/* Description */}
              <div className="description-section">
                <h3>About this item</h3>
                <p>{product.description}</p>
              </div>

              {/* Tags */}
              {tagsArray.length > 0 && (
                <div className="tags-section">
                  <strong>Tags:</strong>
                  <div className="tags-container">
                    {tagsArray.map((tag, idx) => (
                      <span key={idx} className="tag-badge">
                        {tag}
                      </span>
                    ))}
                  </div>
                </div>
              )}

              {/* Quantity and Add to Cart Section */}
              <div className="action-section">
                <div className="quantity-selector">
                  <label>Quantity:</label>
                  <select
                    value={quantity}
                    onChange={handleQuantityChange}
                    disabled={!canAddMore}
                    className="quantity-dropdown"
                  >
                    {[
                      ...Array(Math.min(10, product.stock - quantityInCart)),
                    ].map((_, i) => (
                      <option key={i + 1} value={i + 1}>
                        {i + 1}
                      </option>
                    ))}
                  </select>
                </div>

                {/* Total Price */}
                <div className="total-price-section">
                  <span className="total-label">Total:</span>
                  <span className="total-amount">₹{totalPrice}</span>
                </div>
              </div>

              {/* Action Buttons */}
              <div className="button-section">
                <Button
                  className="add-to-cart-btn"
                  onClick={handleAddToCart}
                  disabled={!canAddMore || quantity === 0}
                >
                  <FaShoppingCart /> Add to Cart
                </Button>
                <Button
                  className="buy-now-btn"
                  onClick={handleBuyNow}
                  disabled={!canAddMore || quantity === 0}
                >
                  Buy Now
                </Button>
              </div>

              {!canAddMore && product.stock === 0 && (
                <p className="out-of-stock-message">
                  This item is currently out of stock
                </p>
              )}

              {quantityInCart > 0 && (
                <div className="already-in-cart-info">
                  <p>
                    You already have {quantityInCart} item(s) of this product in
                    your cart
                  </p>
                </div>
              )}
            </div>
          </Col>
        </Row>
      </div>
    </>
  );
}
