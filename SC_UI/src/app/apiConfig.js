const rawBase = process.env.REACT_APP_API_BASE_URL || "https://localhost:7150";
const BASE = rawBase.replace(/\/+$/, "");

export const API = {
  base: BASE,
  getPopular: (page = 1, pageSize = 24) => `${BASE}/api/Product/GetPopolarProducts?page=${page}&pageSize=${pageSize}`,
  searchProducts: (q) => `${BASE}/api/Product/SearchProducts?query=${q}`,
  getProductsByCategory: (categoryId) => `${BASE}/api/Product/GetProductsByCategoryID?categoryId=${categoryId}`,
  addProduct: () => `${BASE}/api/Product/AddProduct`,
  updateProduct: () => `${BASE}/api/Product/UpdateProduct`,
  deleteProduct: (id) => `${BASE}/api/Product?id=${id}`,
  getProductById: (pId) => `${BASE}/api/Product/GetProductById?pId=${pId}`,
  getAutoSuggested: (q) => `${BASE}/api/Product/GetAutoSuggestedProducts?query=${q}`,
  getRelatedProducts: (productId) => `${BASE}/api/Product/GetRelatedProducts?productId=${productId}`,
  login: () => `${BASE}/api/User/login`
};

export default API;
