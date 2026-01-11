import { createSlice,createAsyncThunk } from "@reduxjs/toolkit";
import { API } from "../../../app/apiConfig";

export const fetchRelatedProducts = createAsyncThunk(
  "products/fetchRelatedProducts",
  async (productId, { rejectWithValue }) => {   
    try {
      const response = await fetch(API.getRelatedProducts(productId));
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

