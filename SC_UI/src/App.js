import React, { useState } from "react";
import ProductsList from "./features/products/ProductsList";
import ProductDetails from "./features/products/ProductDetails";
import ProductForm from "./features/products/ProductForm";
import ProductFilters from "./features/products/ProductFilters";
import Cart from "./features/cart/Cart";
import Menu from "./features/menu/Navbar";
import { Container } from "react-bootstrap";
import { Routes, Route } from "react-router-dom";
import "./App.css";
import AddProduct from "./features/admin/AddProduct";
import UpdateProduct from "./features/admin/UpdateProduct";

export default function App() {
  const [editingProduct, setEditingProduct] = useState(null);

  return (
    <>
      <Menu /> 
      <div className="main-content" style={{background: '#d5dde6ff'}}>
        <Container className="app-container">
          <Routes>
            <Route path="/" element={<ProductsList />} />
            <Route path="/product/:productId" element={<ProductDetails />} />
            <Route path="/cart" element={<Cart />} />
            <Route path="/addproduct" element={<AddProduct/>} />
            <Route path="/updateproduct" element={<UpdateProduct/>} />
          </Routes>
        </Container>
      </div>
    </>
  );
}
