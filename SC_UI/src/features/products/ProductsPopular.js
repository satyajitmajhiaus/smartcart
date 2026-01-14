import { useEffect, useState } from "react";
import { useSelector, useDispatch } from "react-redux";
import { fetchPopularProducts } from "./productsSlice";
import Product from "./Product";
import { Row, Col } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import { FaPlus, FaChevronLeft, FaChevronRight } from "react-icons/fa";
import LoadingSpinner from "../../utilities/LoadingSpinner";
import "./ProductsPopular.css";

export default function ProductsPopular() {
  
  const { isLoggedIn, userType } = useSelector((state) => state.user);
  const { popularProducts, loading, pagination } = useSelector(
    (state) => state.products
  );
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const [currentPage, setCurrentPage] = useState(1);
  const PAGE_SIZE = 24;

  useEffect(() => {
    dispatch(fetchPopularProducts({ page: currentPage, pageSize: PAGE_SIZE }));
  }, [currentPage, dispatch]);

  const handlePreviousPage = () => {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
      //window.scrollTo({ top: 0, behavior: "smooth" });
    }
  };

  const handleNextPage = () => {
    if (currentPage < pagination.totalPages) {
      setCurrentPage(currentPage + 1);
      //window.scrollTo({ top: 0, behavior: "smooth" });
    }
  };

  const handlePageClick = (pageNum) => {
    setCurrentPage(pageNum);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  // Generate page numbers to display (show 5 pages at a time)
  const getPaginationNumbers = () => {
    const pages = [];
    const totalPages = pagination.totalPages;
    const maxPagesToShow = 5;
    
    let startPage = Math.max(1, currentPage - Math.floor(maxPagesToShow / 2));
    let endPage = Math.min(totalPages, startPage + maxPagesToShow - 1);
    
    if (endPage - startPage < maxPagesToShow - 1) {
      startPage = Math.max(1, endPage - maxPagesToShow + 1);
    }
    
    for (let i = startPage; i <= endPage; i++) {
      pages.push(i);
    }
    
    return pages;
  };

  return (
    <div>
      <div>
        <div className="product-header">
          <h2>Popular Products</h2>
          {isLoggedIn && userType.toLowerCase() === "admin" && (
            <div
              className="add-product"
              onClick={() => navigate("/addproduct")}
            >
              <FaPlus />
              <span className="add-product-text">Add Product</span>
            </div>
          )}
        </div>
        {loading ? (
          <div className="products-grid"><LoadingSpinner /></div>
        ) : (
          <>
            {popularProducts.length === 0 ? (
              <div className="empty-cart">
                <p>No products found.</p>
              </div>
            ) : (
              <>
                <div className="products-grid">
                  <Row className="g-4">
                    {popularProducts.map((product, index) => (
                      <Col key={index} xs={12} sm={6} md={3} lg={2}>
                        <Product product={product} />
                      </Col>
                    ))}
                  </Row>
                </div>
                
                {/* Pagination Controls */}
                <div className="pagination-info">
                  Page {currentPage} of {pagination.totalPages} (
                  {pagination.totalItems} total products)
                </div>
                
                <div className="pagination-container">
                  <button
                    className="pagination-btn pagination-nav-btn"
                    onClick={handlePreviousPage}
                    disabled={currentPage === 1}
                    title="Previous page"
                  >
                    <FaChevronLeft /> Previous
                  </button>

                  <div className="pagination-numbers">
                    {/* Show first page if not visible */}
                    {getPaginationNumbers()[0] > 1 && (
                      <>
                        <button
                          className="pagination-btn"
                          onClick={() => handlePageClick(1)}
                        >
                          1
                        </button>
                        {getPaginationNumbers()[0] > 2 && (
                          <span className="pagination-ellipsis">...</span>
                        )}
                      </>
                    )}

                    {/* Show page numbers */}
                    {getPaginationNumbers().map((pageNum) => (
                      <button
                        key={pageNum}
                        className={`pagination-btn ${
                          pageNum === currentPage ? "active" : ""
                        }`}
                        onClick={() => handlePageClick(pageNum)}
                      >
                        {pageNum}
                      </button>
                    ))}

                    {/* Show last page if not visible */}
                    {getPaginationNumbers()[getPaginationNumbers().length - 1] <
                      pagination.totalPages && (
                      <>
                        {getPaginationNumbers()[
                          getPaginationNumbers().length - 1
                        ] <
                          pagination.totalPages - 1 && (
                          <span className="pagination-ellipsis">...</span>
                        )}
                        <button
                          className="pagination-btn"
                          onClick={() => handlePageClick(pagination.totalPages)}
                        >
                          {pagination.totalPages}
                        </button>
                      </>
                    )}
                  </div>

                  <button
                    className="pagination-btn pagination-nav-btn"
                    onClick={handleNextPage}
                    disabled={currentPage >= pagination.totalPages}
                    title="Next page"
                  >
                    Next <FaChevronRight />
                  </button>
                </div>

                
              </>
            )}
          </>
        )}
      </div>
    </div>
  );
}
