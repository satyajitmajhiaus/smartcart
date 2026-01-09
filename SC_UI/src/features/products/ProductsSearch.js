import React, { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { selectFilteredProducts } from "./productsSlice";
import Product from "./Product";
import { Row, Col } from "react-bootstrap";
import ProductFilters from "./ProductFilters";
import { useNavigate, useParams, useSearchParams } from "react-router-dom";
import { FaPlus } from "react-icons/fa";
import LoadingSpinner from "../../utilities/LoadingSpinner";
import "./product.css";

export default function ProductsSearch() {
  const { loading } = useSelector(
    (state) => state.products
  );
  const [searchParams] = useSearchParams();
  const { categoryId } = useParams();
  const [searchQueryText, setQueryText] = React.useState("");

  const { isLoggedIn, userType } = useSelector((state) => state.user);
  const products = useSelector(selectFilteredProducts);
  const dispatch = useDispatch();
  const navigate = useNavigate();

  useEffect(() => {
    // Get query parameter from search (e.g., ?k=sam) or category parameter
    const query = searchParams.get("k") || categoryId;
    const isSearchQuery = window.location.pathname.includes("/search");

    if (isSearchQuery) {
      setQueryText(" searched query '" + query + "'");
    } else {
      setQueryText(" category '" + query.replaceAll("-", " ") + "'");
    }
  }, [dispatch, searchParams, categoryId]);

  return (
    <div className="products-page">
      <ProductFilters />
      <div>
        {loading ? (
          <LoadingSpinner />
        ) : (
          <>
            <div className="cart-header">
              <span>
                <b>
                  Showing {products.length} results for {searchQueryText}
                </b>
              </span>
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
          </>
        )}
      </div>
    </div>
  );
}
