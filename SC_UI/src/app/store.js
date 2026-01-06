import { configureStore } from '@reduxjs/toolkit';
import productsReducer from '../features/products/productsSlice';
import cartReducer from '../features/cart/cartSlice';
import categoriesReducer from '../features/categories/categoriesSlice';
import userReducer from '../features/user/userSlice';

export const store = configureStore({
  reducer: {
    products: productsReducer,
    cart: cartReducer,
    categories: categoriesReducer,
    user: userReducer,
  }, 
});