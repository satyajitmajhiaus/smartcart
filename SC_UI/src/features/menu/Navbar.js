import Container from "react-bootstrap/Container";
import Navbar from "react-bootstrap/Navbar";
import CartIcon from "../cart/CartIcon";
import { useNavigate } from "react-router-dom";
import SearchBar from "../search/SearchBar";
import Categories from "../categories/Categories";
import { useState } from "react";
import { useSelector, useDispatch } from "react-redux";
import Login from "../user/Login";
import { logout } from "../user/userSlice";
import "../user/user.css";
import "./Navbar.css";
import { FaUser } from "react-icons/fa";


function Menu() {
  const navigate = useNavigate();
  const [showLoginModal, setShowLoginModal] = useState(false);
  const dispatch = useDispatch();
  const { isLoggedIn, userName, userType } = useSelector((state) => state.user);

  const handleCartPageNavigate = () => navigate("/cart");

  const handleUserIconClick = () => {
    if (isLoggedIn) {
      // If logged in, show menu options
    } else {
      // If not logged in, show login modal
      setShowLoginModal(true);
    }
  };

  const handleLogout = () => {
    dispatch(logout());
  };

  return (
    <div className="container">
      <Navbar
        expand="lg"
        className="bg-body-tertiary"
        bg="primary"
        data-bs-theme="dark"
        fixed="top"
      >
        <Container>
          <Navbar.Brand href="/">Smart Cart</Navbar.Brand>
          <Navbar.Toggle aria-controls="navbarScroll" />
          <Navbar.Collapse id="navbarScroll">
            <SearchBar />
            <div className="navbar-icons">
              <div className="cart-icon-container" onClick={handleCartPageNavigate} title="Go to Cart"> 
              <CartIcon/><span className="user-text">Cart</span> 
              </div>
              <div 
                className="user-icon-container"
                onClick={handleUserIconClick}
                title={isLoggedIn ? `${userType} - ${userName}` : "Login"}
              >
                <span className="user-icon"><FaUser/></span>
                {isLoggedIn ? (
                  <div className="user-menu">
                    <span className="user-text">{userName}</span>
                    <button 
                      className="logout-btn"
                      onClick={(e) => {
                        e.stopPropagation();
                        handleLogout();
                      }}
                    >
                      Logout
                    </button>
                  </div>
                ) : (
                  <span className="user-text">Login</span>
                )}
              </div>
            </div>
          </Navbar.Collapse>
        </Container>
      </Navbar>
      <Categories />
      
      {showLoginModal && <Login onClose={() => setShowLoginModal(false)} />}
    </div>
  );
}

export default Menu;
