import Button from "react-bootstrap/Button";
import Card from "react-bootstrap/Card";
import { addItem, removeItem } from "../cart/cartSlice";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import './product.css';


function Product({ product }) {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const cartItems = useSelector((state) => state.cart.items);
  const cartItem = cartItems.find(item => item.productId === product.productId);
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

  return (
    <Card className="product-card-width">
      <div className="product-card-image-wrapper" onClick={handleNavigateToDetails}>
        <Card.Img variant="top" src={product.imageUrl} className="product-card-image" />
      </div>
      <Card.Body onClick={handleNavigateToDetails} className="product-card-body-clickable">
        <Card.Title className="product-card-title">{product.name}</Card.Title>
        <div style={{ marginTop: 6 }}>
          {product.stock > 0 ? (
            <span className="product-stock-available">
              In stock: {product.stock}
            </span>
          ) : (
            <span className="product-stock-out-of-stock">
              Out of stock
            </span>
          )}
        </div>
        <Card.Text className="product-card-description">{product.description}</Card.Text>
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
          <div className="quantity-selector">
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
    </Card>
  );
}

export default Product;
