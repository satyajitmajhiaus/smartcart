import {
  createSlice,
  createAsyncThunk
} from "@reduxjs/toolkit";
import { API } from "../../../config/apiConfig";

export const fetchProductDetails = createAsyncThunk(
  "productDetails/fetchProductDetails",
  async (productId, { rejectWithValue }) => {
    try {
      const response = await fetch(API.getProductById(productId));
      if (!response.ok) {
        return rejectWithValue("Failed to fetch popular products");
      }
      const data = await response.json();
      console.log("Fetched popular products", data);
      return data;
    } catch (error) {
      return rejectWithValue(error.message);
    }
  }
);

const productDetailsSlice = createSlice({
  name: "productDetails",
  initialState : {
    product: null,
    loading: "idle",
    error: null,
  },
  reducers: {
  },
  extraReducers: (builder) => {
    builder      
      .addCase(fetchProductDetails.pending, (state) => {
        state.loading = true;
        state.error = null;
      })
      .addCase(fetchProductDetails.fulfilled, (state, action) => {
        state.loading = false;
        state.product = action.payload;
      })
      .addCase(fetchProductDetails.rejected, (state, action) => {
        state.loading = false;
        state.error = action.payload;
      });
  },
});

export default productDetailsSlice.reducer;
