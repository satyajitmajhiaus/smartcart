import {
  createSlice,
  createAsyncThunk,
  createSelector,
} from "@reduxjs/toolkit";
import { useNavigate } from "react-router-dom";

export const fetchPopularProducts = createAsyncThunk(
  "products/fetchPopularProducts",
  async (_, { rejectWithValue }) => {
    try {
      const response = await fetch(
        `https://localhost:7150/api/Product/GetPopolarProducts`
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

// export const fetchProductsByQuery = createAsyncThunk(
//   "products/fetchProductsByQuery",
//   async (query, { rejectWithValue }) => {
//     try {
//       if (window.location.search.includes("?k=")) {
//         const response = await fetch(
//           `https://localhost:7150/api/Product/SearchProducts?query=${query}`
//         );
//         if (!response.ok) {
//           return rejectWithValue("Failed to fetch products");
//         }
//         const data = await response.json();
//         console.log("Fetched products data: ", data);
//         return data;
//       } else {
//         const response = await fetch(
//           `https://localhost:7150/api/Product/GetProductsByCategoryID?categoryId=${query}`
//         );
//         console.log("URL does not contain ?k=");
//         if (!response.ok) {
//           return rejectWithValue("Failed to fetch products");
//         }
//         const data = await response.json();
//         console.log("Fetched products data: ", data);
//         return data;
//       }
//     } catch (error) {
//       return rejectWithValue(error.message);
//     }
//   }
// );

export const fetchProductsByQuery = createAsyncThunk(
  "products/fetchProductsByQuery",
    async (query, { rejectWithValue }) => {
    try {
      // Check if this is a search query or category query
      const isSearchQuery = window.location.pathname.includes("/search");
      
      if (isSearchQuery && query) {
        console.log("Fetching products by search query - ", query);
        const response = await fetch(
          `https://localhost:7150/api/Product/SearchProducts?query=${query}`
        );
        if (!response.ok) {
          return rejectWithValue("Failed to fetch products");
        }
        const data = await response.json();
        console.log("Fetched search products data: ", data);
        return data;
      } else if (query) {
        // Category query
        const response = await fetch(
          `https://localhost:7150/api/Product/GetProductsByCategoryID?categoryId=${query}`
        );
        console.log("Fetching products by category");
        if (!response.ok) {
          return rejectWithValue("Failed to fetch products");
        }
        const data = await response.json();
        console.log("Fetched category products data: ", data);
        return data;
      }
    } catch (error) {
      return rejectWithValue(error.message);
    }
  }
);

const initialState = {
  popularProducts: [],
  items: [],
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
      const idToRemove = action.payload;
      state.items = state.items.filter((p) => {
        // handle different possible id field names returned by various sources
        if (p.id !== undefined) return p.id !== idToRemove;
        if (p.productId !== undefined) return p.productId !== idToRemove;
        if (p.pId !== undefined) return p.pId !== idToRemove;
        // fallback: if product is a primitive id stored directly
        return p !== idToRemove;
      });
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
      // .addCase(fetchProductsByQuery.pending, (state) => {
      //   state.loading = true;
      //   state.error = null;
      // })
      // .addCase(fetchProductsByQuery.fulfilled, (state, action) => {
      //   state.loading = false;
      //   state.items = action.payload;
      //   try {
      //     if (typeof window !== "undefined" && window.localStorage) {
      //       localStorage.setItem("products", JSON.stringify(state.items));
      //     }
      //   } catch (e) {}
      // })
      // .addCase(fetchProductsByQuery.rejected, (state, action) => {
      //   state.loading = false;
      //   state.error = action.payload;
      // })
      .addCase(fetchProductsByQuery.pending, (state) => {
        state.loading = true;
        state.error = null;
      })
      .addCase(fetchProductsByQuery.fulfilled, (state, action) => {
        state.loading = false;
        state.items = action.payload;
        try {
          if (typeof window !== "undefined" && window.localStorage) {
            localStorage.setItem("products", JSON.stringify(state.items));
          }
        } catch (e) {}
      })
      .addCase(fetchProductsByQuery.rejected, (state, action) => {
        state.loading = false;
        state.error = action.payload;
      })
      .addCase(fetchPopularProducts.pending, (state) => {
        state.loading = true;
        state.error = null;
      })
      .addCase(fetchPopularProducts.fulfilled, (state, action) => {
        state.loading = false;
        state.popularProducts = action.payload;
        try {
          if (typeof window !== "undefined" && window.localStorage) {
            localStorage.setItem(
              "popularProducts",
              JSON.stringify(state.popularProducts)
            );
          }
        } catch (e) {}
      })
      .addCase(fetchPopularProducts.rejected, (state, action) => {
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
