import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  items: [], 
};

const cartSlice = createSlice({
  name: 'cart',
  initialState,
  reducers: {
    addCartItem(state, action) {
      console.log("Item to add: ", action.payload); 
      const { productId, quantity = 1, stock, name, description,imageUrl, price } = action.payload;
      console.log("Adding item to cart: ", productId, " Quantity: ", quantity, " Stock: ", stock);
      const existingItem = state.items.find(item => item.productId === productId);
      if (existingItem) {
        if (existingItem.quantity + quantity <= stock) {
          existingItem.quantity += quantity;
        }
      } else {
        if (quantity <= stock) {
          state.items.push({ productId, quantity,name,description,imageUrl,price,stock });
        }
      }
    },
    // removeCartItem(state, action) {
    //   const productId = action.payload;
    //   state.items = state.items.filter(item => item.productId !== productId);
    // },
    removeCartItem(state, action) {
      console.log("Item to remove: ", action.payload); 
      const { productId, quantity = 1 } = action.payload;
      console.log("Adding item to cart: ", productId, " Quantity: ", quantity);
      const existingItem = state.items.find(item => item.productId === productId);
      if (existingItem) {
        if (existingItem.quantity - quantity > 0) {
          existingItem.quantity -= quantity;
        }
        else {
          state.items = state.items.filter(item => item.productId !== productId);
        }
        if(quantity <=0) {
          state.items = state.items.filter(item => item.productId !== productId);
        }
      } else {
        console.log("Item not found in cart: ", productId);
      }
    },
    updateCartItemQuantity(state, action) {
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

export const { addCartItem, removeCartItem, updateCartItemQuantity, clearCart } = cartSlice.actions;
export default cartSlice.reducer;