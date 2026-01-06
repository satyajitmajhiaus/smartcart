import React from "react";
import { FaShoppingCart } from "react-icons/fa";
import { Badge } from "react-bootstrap";
import { useSelector } from "react-redux";

function CartIcon({ handleCartPageNavigate }) {
  const cartItems = useSelector((state) => state.cart.items);
  const totalItems = cartItems.reduce((sum, item) => sum + item.quantity, 0);

  return (
    <div
      role="button"
      tabIndex={0} onClick={handleCartPageNavigate}
      style={{ position: "relative", display: "inline-block", cursor: 'pointer'}}
    >
      <FaShoppingCart size={30} color="White" style={{ marginRight: "10px" }} />
      {totalItems > 0 && (
        <Badge
          bg="danger"
          pill
          style={{
            position: "absolute",
            top: "-5px",
            right: "-10px",
            fontSize: "0.8rem"
          }}
        >
          {totalItems > 99 ? "99+" : totalItems }
        </Badge>
      )}
    </div>
  );
}

export default CartIcon;
