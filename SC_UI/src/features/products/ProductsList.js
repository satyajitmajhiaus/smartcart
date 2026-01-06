import React, { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { selectFilteredProducts, fetchProducts, deleteProduct } from "./productsSlice";
import Product from "./Product";
import { Row, Col } from "react-bootstrap";
import ProductFilters from "./ProductFilters";
import "./product.css";

export default function ProductsList() {
  const { allproducts, loading, error } = useSelector(
    (state) => state.products
  );
  console.log("All products in ProductsList: ", allproducts);
  const products = useSelector(selectFilteredProducts);
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(fetchProducts());    
  }, [dispatch]);

  return (
    <div className="products-page">
      <ProductFilters />
      <div>
        <div className="cart-header">
          <h2>Product Catalog</h2>
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
