import React, { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import {
  selectFilteredProducts,
  fetchProducts,
  deleteProduct,
} from "./productsSlice";
import Product from "./Product";
import { Row, Col } from "react-bootstrap";
import ProductFilters from "./ProductFilters";
import { useNavigate } from "react-router-dom";
import { FaPlus } from "react-icons/fa";

import "./product.css";

export default function ProductsList() {
  const { allproducts, loading, error } = useSelector(
    (state) => state.products
  );
  console.log("All products in ProductsList: ", allproducts);
  const { isLoggedIn, userType } = useSelector((state) => state.user);
  const products = useSelector(selectFilteredProducts);
  const dispatch = useDispatch();
  const navigate = useNavigate();
  useEffect(() => {
    dispatch(fetchProducts());
  }, [dispatch]);

  return (
    <div className="products-page">
      <ProductFilters />
      <div>
        <div className="cart-header">
          <h2>Product Catalog</h2>
          {isLoggedIn && userType === "admin" && (
            <div
              className="add-product"
              onClick={() => navigate("/addproduct")}
            >
              <FaPlus />
              <span className="add-product-text">Add Product</span>
            </div>
          )}
        </div>

        {products.length === 0 ? (
          <div className="empty-cart">
            <p>No products found.</p>
          </div>
        ) : (
          <div className="products-grid">
            <Row className="g-4">
              {products.map((product, index) => (
                <Col key={index} xs={12} sm={6} md={4} lg={3}>
                  <Product product={product} />
                </Col>
              ))}
            </Row>
          </div>
        )}
      </div>
    </div>
  );
}
