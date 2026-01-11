import {
  createSlice,
  createAsyncThunk
} from "@reduxjs/toolkit";

export const fetchProductDetails = createAsyncThunk(
  "productDetails/fetchProductDetails",
  async (productId, { rejectWithValue }) => {
    try {
      const response = await fetch(
        `https://localhost:7150/api/Product/GetProductById?pId=${productId}`
      );
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
