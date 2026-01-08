import React, { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import {  
  fetchPopularProducts,
  deleteProduct,
} from "./productsSlice";
import Product from "./Product";
import { Row, Col } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import { FaPlus } from "react-icons/fa";
import "./ProductsPopular.css";

export default function ProductsPopular() {
  const { allproducts, loading, error } = useSelector(
    (state) => state.products
  );
  console.log("All products in ProductsList: ", allproducts);
  const { isLoggedIn, userType } = useSelector((state) => state.user);
  const popularProducts = useSelector((state) => state.products.popularProducts);
  const dispatch = useDispatch();
  const navigate = useNavigate();
  useEffect(() => {
    dispatch(fetchPopularProducts());
  }, []);

  return (
    <div>
      <div>
        <div className="product-header">
          <h2>Popular Products</h2>
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

        {popularProducts.length === 0 ? (
          <div className="empty-cart">
            <p>No products found.</p>
          </div>
        ) : (
          <div className="products-grid">
            <Row className="g-4">
              {popularProducts.map((product, index) => (
                <Col key={index} xs={12} sm={6} md={3} lg={2}>
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
