import ProductsSearch from "./features/products/ProductsSearch";
import ProductDetails from "./features/products/ProductDetails";
import Cart from "./features/cart/Cart";
import Menu from "./features/menu/Navbar";
import { Container } from "react-bootstrap";
import { Routes, Route } from "react-router-dom";
import "./App.css";
import AddProduct from "./features/admin/AddProduct";
import UpdateProduct from "./features/admin/UpdateProduct";
import ProductsPopular from "./features/products/ProductsPopular";

export default function App() {

  return (
    <>
      <Menu /> 
      <div className="main-content" style={{background: '#d5dde6ff'}}>
        <Container className="app-container">
          <Routes>
            <Route path="/" element={<ProductsPopular />} />
            <Route path="/product/:productId" element={<ProductDetails />} />
            <Route path="/cart" element={<Cart />} />
            <Route path="/addproduct" element={<AddProduct/>} />
            <Route path="/category/:categoryId" element={<ProductsSearch/>} />
            <Route path="/search" element={<ProductsSearch/>} />
            <Route path="/updateproduct" element={<UpdateProduct/>} />
          </Routes>
        </Container>
      </div>
    </>
  );
}
