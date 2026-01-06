import { useEffect, useState, useRef } from "react";
import { useDispatch, useSelector } from "react-redux";
import { fetchCategories } from "./categoriesSlice";
import { fetchProductsByCategory } from "../products/productsSlice";
import "./categories.css";

function Categories() {
  const dispatch = useDispatch();
  const { items: categories, loading, error } = useSelector(
    (state) => state.categories
  );
  const [hoveredCategory, setHoveredCategory] = useState(null);
  const [showLeftArrow, setShowLeftArrow] = useState(false);
  const [showRightArrow, setShowRightArrow] = useState(false);
  const [dropdownPos, setDropdownPos] = useState({ top: 0, left: 0 });
  const containerRef = useRef(null);

  // Organize categories into parent and subcategories
  const parentCategories = categories && Array.isArray(categories) 
    ? categories.filter((cat) => cat.parentCategoryId === null)
    : [];
  const getSubcategories = (parentId) => {
    return categories && Array.isArray(categories)
      ? categories.filter((cat) => cat.parentCategoryId === parentId)
      : [];
  };

  const handleClickCategory = (category) => {
    console.log(`Fetching products for category: ${category.name}`);
    dispatch(fetchProductsByCategory(category.categoryId));
  };

  const checkScrollPosition = () => {
    if (containerRef.current) {
      const { scrollLeft, scrollWidth, clientWidth } = containerRef.current;
      setShowLeftArrow(scrollLeft > 0);
      setShowRightArrow(scrollLeft < scrollWidth - clientWidth - 10);
    }
  };

  const scroll = (direction) => {
    if (containerRef.current) {
      const scrollAmount = 200;
      const newScrollLeft =
        containerRef.current.scrollLeft +
        (direction === "left" ? -scrollAmount : scrollAmount);
      containerRef.current.scrollTo({
        left: newScrollLeft,
        behavior: "smooth",
      });
      setTimeout(checkScrollPosition, 300);
    }
  };

  const handleScroll = () => {
    checkScrollPosition();
  };

  const handleCategoryHover = (categoryId, event) => {
    if (event && categoryId) {
      const rect = event.currentTarget.getBoundingClientRect();
      setDropdownPos({
        top: rect.bottom,
        left: rect.left,
      });
    }
    setHoveredCategory(categoryId);
  };

  useEffect(() => {
    dispatch(fetchCategories());
  }, [dispatch]);

  useEffect(() => {
    // Check scroll position when container size changes
    const timeoutId = setTimeout(() => {
      checkScrollPosition();
    }, 100);

    window.addEventListener("resize", checkScrollPosition);
    return () => {
      clearTimeout(timeoutId);
      window.removeEventListener("resize", checkScrollPosition);
    };
  }, [parentCategories]);

  useEffect(() => {
    // Check scroll position whenever categories load
    const timeoutId = setTimeout(() => {
      checkScrollPosition();
    }, 100);
    return () => clearTimeout(timeoutId);
  }, [categories]);

  if (loading) return <div className="categories-loading">Loading categories...</div>;
  if (error) return <div className="categories-error">Error: {error}</div>;

  return (
    <nav className="categories-nav">
      {showLeftArrow && (
        <button
          className="scroll-arrow left-arrow"
          onClick={() => scroll("left")}
          aria-label="Scroll left"
        >
          ‹
        </button>
      )}

      <div
        className="categories-container"
        ref={containerRef}
        onScroll={handleScroll}
      >
        {parentCategories.map((category) => {
          const subcategories = getSubcategories(category.categoryId);

          return (
            <div
              key={category.categoryId}
              className="category-item"
              onMouseEnter={(e) => handleCategoryHover(category.categoryId, e)}
              onMouseLeave={() => setHoveredCategory(null)}
            >
              <button className="category-button" onClick={() => handleClickCategory(category)}>
                {category.name}
              </button>

              {subcategories.length > 0 && hoveredCategory === category.categoryId && (
                <div
                  className="category-dropdown show"
                  style={{
                    top: `${dropdownPos.top}px`,
                    left: `${dropdownPos.left}px`,
                  }}
                >
                  <div className="subcategories-list">
                    <a
                        key={category.categoryId}
                        href="#"
                        className="subcategory-item"
                        onClick={(e) => {
                          e.preventDefault();
                          handleClickCategory(category);
                        }}
                      >All</a> 
                    {subcategories.map((subcategory) => (
                      <a
                        key={subcategory.categoryId}
                        href="#"
                        className="subcategory-item"
                        onClick={(e) => {
                          e.preventDefault();
                          handleClickCategory(subcategory);
                        }}
                      >
                        {subcategory.name}
                      </a>
                    ))}
                  </div>
                </div>
              )}
            </div>
          );
        })}
      </div>

      {showRightArrow && (
        <button
          className="scroll-arrow right-arrow"
          onClick={() => scroll("right")}
          aria-label="Scroll right"
        >
          ›
        </button>
      )}
    </nav>
  );
}

export default Categories;
