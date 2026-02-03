import { createSlice } from "@reduxjs/toolkit";

const initialState = {
  isLoggedIn: false,
  userType: null, // 'admin' or 'user'
  userName: null,
  userToken: null,
};

const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    login: (state, action) => {
      console.log("Logging in user:", action.payload);
      const { role, username } = action.payload.reqPayload;
      state.isLoggedIn = true;
      state.userType = role;
      state.userName = username;
      state.userToken = action.payload.data;      
    },
    logout: (state) => {
      state.isLoggedIn = false;
      state.userType = null;
      state.userName = null;
      state.userToken = null;
      try {
        localStorage.removeItem("user");
      } catch (err) {
        console.warn("Failed to clear persisted user on logout:", err);
      }
    },
  },
});

export const { login, logout } = userSlice.actions;
export default userSlice.reducer;
