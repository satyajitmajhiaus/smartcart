import Carousel from "react-bootstrap/Carousel";
import Product from "../Product";
import { useSelector, useDispatch } from "react-redux";
import { useEffect, useState } from "react";
import LoadingSpinner from "../../../utilities/LoadingSpinner";
import { fetchRelatedProducts } from "./relatedProductsSlice";
import "./relatedProducts.css";

function RelatedProducts({ productId }) {
  const dispatch = useDispatch();
  const { relatedProducts, loading, error } = useSelector(
    (state) => state.relatedProducts
  );
  const [currentIndex, setCurrentIndex] = useState(0);
  const prductsPerSlide = 6;

  useEffect(() => {
    if (productId) {
      dispatch(fetchRelatedProducts(productId));
    }
  }, [productId, dispatch]);

  if (error) {
    console.log("Error: ", error);
  }

  // Group products into chunks of 6
  const productChunks = [];
  for (let i = 0; i < relatedProducts.length; i += prductsPerSlide) {
    productChunks.push(relatedProducts.slice(i, i + prductsPerSlide));
  }

  const handleCarouselChange = (selectedIndex) => {
    setCurrentIndex(selectedIndex);
  };

  return (
    <div className="related-products-container">
      <h3 className="related-products-title">Related Products</h3>
      {loading && <LoadingSpinner />}
      {!relatedProducts || relatedProducts.length === 0 ? (
        <div className="no-products">No related products found.</div>
      ) : (
        <Carousel
          activeIndex={currentIndex}
          onSelect={handleCarouselChange}
          slide={false}
          interval={null}
          controls={productChunks.length > 1}
          indicators={false}
        >
          {productChunks.map((chunk, chunkIndex) => (
            <Carousel.Item key={chunkIndex}>
              <div className="carousel-products-wrapper">
                <div className="realted-products-grid">
                  {chunk.map((product) => (
                    <div
                      key={product.productId || product.id}
                      className="realted-product-grid-item"
                    >
                      <Product product={product} />
                    </div>
                  ))}
                </div>
              </div>
            </Carousel.Item>
          ))}
        </Carousel>
      )}
    </div>
  );
}

export default RelatedProducts;
