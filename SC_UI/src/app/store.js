import { configureStore } from '@reduxjs/toolkit';
import productsReducer from '../features/products/productsSlice';
import cartReducer from '../features/cart/cartSlice';
import categoriesReducer from '../features/categories/categoriesSlice';
import userReducer from '../features/user/userSlice';

const loadState = () => {
  try {
    const serializedUser = localStorage.getItem('user');
    const serializedCart = localStorage.getItem('cart');
    const user = serializedUser ? JSON.parse(serializedUser) : undefined;
    const cart = serializedCart ? JSON.parse(serializedCart) : undefined;
    const preloaded = {};
    if (user) preloaded.user = user;
    if (cart) preloaded.cart = cart;
    return Object.keys(preloaded).length ? preloaded : undefined;
  } catch (err) {
    console.warn('Failed to load persisted state:', err);
    return undefined;
  }
};

const saveState = (state) => {
  try {
    if (state.user) {
      localStorage.setItem('user', JSON.stringify(state.user));
    }
    if (state.cart) {
      localStorage.setItem('cart', JSON.stringify(state.cart));
    }
  } catch (err) {
    console.warn('Failed to save state:', err);
  }
};

export const store = configureStore({
  reducer: {
    products: productsReducer,
    cart: cartReducer,
    categories: categoriesReducer,
    user: userReducer,
  },
  preloadedState: loadState(),
});

store.subscribe(() => {
  const state = store.getState();
  saveState({ user: state.user, cart: state.cart });
});