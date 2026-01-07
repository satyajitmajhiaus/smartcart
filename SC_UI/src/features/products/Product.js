import React, { useState } from "react";
import Button from "react-bootstrap/Button";
import Card from "react-bootstrap/Card";
import Modal from "react-bootstrap/Modal";
import { addItem, removeItem } from "../cart/cartSlice";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { RiDeleteBinLine } from "react-icons/ri";
import { VscEdit } from "react-icons/vsc";
import { deleteProduct } from "./productsSlice";

import "./product.css";

function Product({ product }) {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [showConfirm, setShowConfirm] = useState(false);
  const [targetProduct, setTargetProduct] = useState(null);
  const cartItems = useSelector((state) => state.cart.items);
  const { isLoggedIn, userType } = useSelector((state) => state.user);
  const cartItem = cartItems.find(
    (item) => item.productId === product.productId
  );
  const quantityAddedToCart = cartItem ? cartItem.quantity : 0;
  const canAddMore = product.stock > quantityAddedToCart;

  const handleAddToCart = (e) => {
    e.stopPropagation();
    if (!canAddMore) return;
    dispatch(addItem(product));
  };

  const handleIncrement = (e) => {
    e.stopPropagation();
    if (canAddMore) {
      dispatch(addItem(product));
    }
  };

  const handleDecrement = (e) => {
    e.stopPropagation();
    if (quantityAddedToCart > 0) {
      dispatch(removeItem(product.productId));
    }
  };

  const handleNavigateToDetails = () => {
    navigate(`/product/${product.productId}`);
  };

  const handleEditProduct = (e) => {
    e.stopPropagation();
    navigate("/updateproduct", { state: { product } });
  };
  const handleDeleteProduct = (e) =>{
    e.stopPropagation();
    setTargetProduct(product);
    setShowConfirm(true);
  }

  const confirmDelete = async () => {
    if (!targetProduct) return;
    const id = targetProduct.productId ?? targetProduct.id ?? targetProduct.pId;
    try {
      const resp = await fetch(`https://localhost:7150/api/Product?id=${id}`, {
        method: "DELETE",
      });
      if (!resp.ok) {
        const text = await resp.text();
        alert(`Failed to delete product: ${resp.status} ${text}`);
      } else {
        dispatch(deleteProduct(id));
      }
    } catch (err) {
      console.error("Delete request failed:", err);
      alert("Failed to delete product. See console for details.");
    } finally {
      setShowConfirm(false);
      setTargetProduct(null);
    }
  };

  return (
    <Card className="product-card-width">
      <div
        className="product-card-image-wrapper"
        onClick={handleNavigateToDetails}
      >
        <Card.Img
          variant="top"
          src={product.imageUrl}
          className="product-card-image"
        />
        {isLoggedIn && userType === "admin" && (
          <div className="admin-controls">
            <button
              className="product-edit-btn"
              onClick={handleEditProduct}
              title="Edit product"
            >
              <VscEdit/>
            </button>
            <button
              className="product-edit-btn"
              onClick={handleDeleteProduct}
              title="Delete product"
            >
              <RiDeleteBinLine />
            </button>
          </div>
        )}
      </div>
      <Card.Body
        onClick={handleNavigateToDetails}
        className="product-card-body-clickable"
      >
        <Card.Title className="product-card-title">
          {product.name.length > 22
            ? `${product.name.substring(0, 22)}...`
            : product.name}
        </Card.Title>
        <div style={{ marginTop: 6 }}>
          {product.stock > 0 ? (
            <span className="product-stock-available">
              In stock: {product.stock}
            </span>
          ) : (
            <span className="product-stock-out-of-stock">Out of stock</span>
          )}
        </div>
        <Card.Text className="product-card-description">
          {product.description}
        </Card.Text>
        <div className="product-price">₹{product.price.toFixed(2)}</div>
      </Card.Body>
      <Card.Body className="product-card-actions">
        {quantityAddedToCart === 0 ? (
          <Button
            variant="primary"
            onClick={handleAddToCart}
            disabled={!canAddMore}
            className="w-100"
          >
            {canAddMore ? "Add to cart" : "Out of stock"}
          </Button>
        ) : (
          <div className="product-quantity-selector">
            <button
              className="quantity-btn minus-btn"
              onClick={handleDecrement}
              disabled={quantityAddedToCart === 0}
            >
              −
            </button>
            <span className="quantity-display">{quantityAddedToCart}</span>
            <button
              className="quantity-btn plus-btn"
              onClick={handleIncrement}
              disabled={!canAddMore}
            >
              +
            </button>
          </div>
        )}
      </Card.Body>
      <Modal show={showConfirm} onHide={() => setShowConfirm(false)}>
        <Modal.Header closeButton>
          <Modal.Title>Confirm delete</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          Are you sure you want to delete the product '{targetProduct?.name}'?
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={() => setShowConfirm(false)}>
            Cancel
          </Button>
          <Button variant="danger" onClick={confirmDelete}>
            Yes
          </Button>
        </Modal.Footer>
      </Modal>
    </Card>
  );
}

export default Product;
