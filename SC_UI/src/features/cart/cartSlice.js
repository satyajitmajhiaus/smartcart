import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  items: [], // Each item: { productId, quantity }
};

const cartSlice = createSlice({
  name: 'cart',
  initialState,
  reducers: {
    addItem(state, action) {
      console.log("action payload in cartSlice: ", action.payload); 
      const { productId, quantity = 1, stock } = action.payload;
      console.log("Adding item to cart: ", productId, " Quantity: ", quantity, " Stock: ", stock);
      const existingItem = state.items.find(item => item.productId === productId);
      if (existingItem) {
        if (existingItem.quantity + quantity <= stock) {
          existingItem.quantity += quantity;
        }
      } else {
        if (quantity <= stock) {
          state.items.push({ productId, quantity });
        }
      }
    },
    removeItem(state, action) {
      const productId = action.payload;
      state.items = state.items.filter(item => item.productId !== productId);
    },
    updateQuantity(state, action) {
      const { productId, quantity, stock } = action.payload;
      if (quantity <= stock) {
        const item = state.items.find(item => item.productId === productId);
        if (item) {
          item.quantity = quantity;
        }
      }
    },
    clearCart(state) {
      state.items = [];
    },
  },
});

export const { addItem, removeItem, updateQuantity, clearCart } = cartSlice.actions;
export default cartSlice.reducer;