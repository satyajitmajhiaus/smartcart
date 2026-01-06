import {
  createSlice,
  createAsyncThunk,
  createSelector,
} from "@reduxjs/toolkit";

const persisted = (() => {
  try {
    if (typeof window !== "undefined" && window.localStorage) {
      const raw = localStorage.getItem("products");
      return raw ? JSON.parse(raw) : null;
    }
  } catch (e) {
    // ignore parse errors
  }
  return null;
})();

export const fetchProducts = createAsyncThunk(
  "products/fetchProducts",
  async (_, { rejectWithValue }) => {
    try {
      const response = await fetch("https://localhost:7150/api/Product/GetAllProducts");
      if (!response.ok) {
        return rejectWithValue("Failed to fetch products");
      }
      const data = await response.json();
      console.log("Fetched products data: ", data);
      return data;
    } catch (error) {
      return rejectWithValue(error.message);
    }
  }
);

export const fetchProductsByCategory = createAsyncThunk(
  "products/fetchProductsByCategory",
  async (categoryId, { rejectWithValue }) => {
    try {
      const response = await fetch(`https://localhost:7150/api/Product/GetProductsByCategoryID?categoryId=${categoryId}`);
      if (!response.ok) {
        return rejectWithValue("Failed to fetch products by category");
      }
      const data = await response.json();
      console.log("Fetched products by category: ", data);
      return data;
    } catch (error) {
      return rejectWithValue(error.message);
    }
  }
);

const initialState = {
  items: persisted,
  status: "idle",
  loading: false,
  error: null,
  filters: {
    search: "",
    category: "",
    priceRange: [0, Infinity],
    tags: [],
    inStockOnly: false,
  },
};

const productsSlice = createSlice({
  name: "products",
  initialState,
  reducers: {
    addProduct(state, action) {
      state.items.push(action.payload);
      try {
        if (typeof window !== "undefined" && window.localStorage) {
          localStorage.setItem("products", JSON.stringify(state.items));
        }
      } catch (e) {}
    },
    updateProduct(state, action) {
      const index = state.items.findIndex((p) => p.id === action.payload.id);
      if (index !== -1) {
        state.items[index] = action.payload;
        try {
          if (typeof window !== "undefined" && window.localStorage) {
            localStorage.setItem("products", JSON.stringify(state.items));
          }
        } catch (e) {}
      }
    },
    deleteProduct(state, action) {
      state.items = state.items.filter((p) => p.id !== action.payload);
      try {
        if (typeof window !== "undefined" && window.localStorage) {
          localStorage.setItem("products", JSON.stringify(state.items));
        }
      } catch (e) {}
    },
    setFilters(state, action) {
      state.filters = { ...state.filters, ...action.payload };
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(fetchProducts.pending, (state) => {  
        state.loading = true;
        state.error = null;
      })
      .addCase(fetchProducts.fulfilled, (state, action) => {
        state.loading = false;  
        state.items = action.payload;
        try {
          if (typeof window !== "undefined" && window.localStorage) {
            localStorage.setItem("products", JSON.stringify(state.items));
          }
        } catch (e) {}
      })
      .addCase(fetchProducts.rejected, (state, action) => {
        state.loading = false;
        state.error = action.payload;
      })
      .addCase(fetchProductsByCategory.pending, (state) => {
        state.loading = true;
        state.error = null;
      })
      .addCase(fetchProductsByCategory.fulfilled, (state, action) => {
        state.loading = false;
        state.items = action.payload;
        try {
          if (typeof window !== "undefined" && window.localStorage) {
            localStorage.setItem("products", JSON.stringify(state.items));
          }
        } catch (e) {}
      })
      .addCase(fetchProductsByCategory.rejected, (state, action) => {
        state.loading = false;
        state.error = action.payload;
      });
  },
});

// Selector for filtered products
export const selectFilteredProducts = createSelector(
  (state) => state.products.items,
  (state) => state.products.filters,
  (items, filters) => {
    if (!items) return [];
    return items.filter((product) => {
      const matchesSearch =
        product.name.toLowerCase().includes(filters.search.toLowerCase()) ||
        product.description
          .toLowerCase()
          .includes(filters.search.toLowerCase());
      const matchesCategory = filters.category
        ? product.category === filters.category
        : true;
      const matchesPrice =
        product.price >= filters.priceRange[0] &&
        product.price <= filters.priceRange[1];
      const matchesTags =
        filters.tags.length === 0 ||
        filters.tags.every((tag) => product.tags.includes(tag));
      const matchesStock = filters.inStockOnly ? product.stock > 0 : true;

      return (
        matchesSearch &&
        matchesCategory &&
        matchesPrice &&
        matchesTags &&
        matchesStock
      );
    });
  }
);

export const { addProduct, updateProduct, deleteProduct, setFilters } =
  productsSlice.actions;
export default productsSlice.reducer;
