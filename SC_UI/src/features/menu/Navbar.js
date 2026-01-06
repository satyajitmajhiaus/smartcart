import Container from "react-bootstrap/Container";
import Navbar from "react-bootstrap/Navbar";
import CartIcon from "../cart/CartIcon";
import { useNavigate } from "react-router-dom";
import SearchBar from "../search/SearchBar";
import Categories from "../categories/Categories";
import "./Navbar.css";

function Menu() {
  const navigate = useNavigate();
  const handleCartPageNavigate = () => navigate("/cart");

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
            <CartIcon handleCartPageNavigate={handleCartPageNavigate} />
          </Navbar.Collapse>
        </Container>
      </Navbar>
      <Categories />
    </div>
  );
}

export default Menu;
