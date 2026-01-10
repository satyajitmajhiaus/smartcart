import { createSlice,createAsyncThunk } from "@reduxjs/toolkit";

export const fetchRelatedProducts = createAsyncThunk(
  "products/fetchRelatedProducts",
  async (productId, { rejectWithValue }) => {   
    try {
      const response = await fetch("https://localhost:7150/api/Product/GetRelatedProducts?productId=" + productId);
      if (!response.ok) {
        return rejectWithValue("Failed to fetch related products");
      }
        const data = await response.json();
        console.log("Fetched related products", data);
        return data;
    } catch (error) {
      return rejectWithValue(error.message);
    }

    }
);

const relatedProductsSlice = createSlice({
    name: "relatedProducts",
    initialState: {
        relatedProducts: [],
        loading: false, 
        error: null,
    },
    reducers: {},
    extraReducers: (builder) => {
        builder
            .addCase(fetchRelatedProducts.pending, (state) => {
                state.loading = true;
                state.error = null;
            })  
            .addCase(fetchRelatedProducts.fulfilled, (state, action) => {
                state.loading = false;
                state.relatedProducts = action.payload;
            })
            .addCase(fetchRelatedProducts.rejected, (state, action) => {
                state.loading = false;
                state.error = action.payload || "Failed to fetch related products";
            });
    },
});
export default relatedProductsSlice.reducer;
export const relatedProductsActions = relatedProductsSlice.actions;

