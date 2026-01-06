import { useSelector, useDispatch } from "react-redux";
import { removeItem, updateQuantity } from "./cartSlice";
import "./cart.css";

export default function Cart() {
  const cartItems = useSelector((state) => state.cart.items);
  const products = useSelector((state) => state.products.items);
  const dispatch = useDispatch();
  console.log("Cart items: ", cartItems);
  const totalPrice = cartItems.reduce((total, { productId, quantity }) => {
    const product = products.find((p) => p.productId === productId);
    return product ? total + product.price * quantity : total;
  }, 0);

  const handleQuantityChange = (productId, e) => {
    const qty = Number(e.target.value);
    const product = products.find((p) => p.productId === productId);
    if (product && qty <= product.stock && qty > 0) {
      dispatch(updateQuantity({ productId, quantity: qty, stock: product.stock }));
    }
  };

  return (
    <> 
      <div className="cart-header">
        <h2>Shopping Cart</h2>
      </div>

      {cartItems.length === 0 ? (
        <div className="empty-cart">
          <p>Your cart is empty</p>
        </div>
      ) : (
        <div className="cart-content">
          <div className="cart-items">
            {cartItems.map(({ productId, quantity }) => {
              const product = products.find((p) => p.productId === productId);
              if (!product) return null;
              return (
                <div key={productId} className="cart-item">
                  <div className="item-image">
                    <img src={product.imageUrl} alt={product.name} />
                  </div>

                  <div className="item-details">
                    <h4 className="item-title">{product.name}</h4>
                    <p className="item-description">{product.description}</p>
                    <p className="item-stock">In Stock: {product.stock} available</p>

                    <div className="item-controls">
                      <label>Quantity:</label>
                      <input
                        type="number"
                        value={quantity}
                        min="1"
                        max={product.stock}
                        onChange={(e) => handleQuantityChange(productId, e)}
                        className="quantity-input"
                      />
                      <button
                        onClick={() => dispatch(removeItem(productId))}
                        className="remove-btn"
                      >
                        Delete
                      </button>
                    </div>
                  </div>

                  <div className="item-price">
                    <div className="unit-price">
                      <span className="label">Per Unit:</span>
                      <span className="price">₹{product.price.toFixed(2)}</span>
                    </div>
                    <div className="total-price">
                      <span className="label">Subtotal:</span>
                      <span className="price">₹{(product.price * quantity).toFixed(2)}</span>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="cart-summary">
            <div className="summary-box">
              <h3>Order Summary</h3>
              <div className="summary-row">
                <span>Total Items:</span>
                <span>{cartItems.reduce((total, { quantity }) => total + quantity, 0)}</span>
              </div>
              <div className="summary-row">
                <span>Shipping:</span>
                <span className="shipping">FREE</span>
              </div>              
              <hr />
              <div className="summary-total">
                <span>Total:</span>
                <span>₹{(totalPrice).toFixed(2)}</span>
              </div>
              <button className="checkout-btn">Proceed to Checkout</button>
            </div>
          </div>
        </div>
      )}
    </>
  );
}
