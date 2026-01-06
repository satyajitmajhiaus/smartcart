import { createSlice } from "@reduxjs/toolkit";

const initialState = {
  products: [],
};

const adminSlice = createSlice({
  name: "admin",
  initialState,
  reducers: {
    addProduct: (state, action) => {
      state.products.push(action.payload);
    },
    updateProduct: (state, action) => {
      const index = state.products.findIndex(
        (product) => product.id === action.payload.id
      );
      if (index !== -1) {
        state.products[index] = action.payload;
      }
    },
  },
});

export const { addProduct, updateProduct } = adminSlice.actions;

export const selectAdminProducts = (state) => state.admin.products; 
export default adminSlice.reducer;

