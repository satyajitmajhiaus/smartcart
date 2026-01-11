import { createSlice } from "@reduxjs/toolkit";

const initialState = {
  isLoggedIn: false,
  userType: null, // 'admin' or 'user'
  userName: null,
};

const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    login: (state, action) => {
      const { role, username } = action.payload;
      state.isLoggedIn = true;
      state.userType = role;
      state.userName = username;
      localStorage.setItem(
        "user",
        JSON.stringify({
          userType: role,
          userName: username,
        })
      );
    },
    logout: (state) => {
      state.isLoggedIn = false;
      state.userType = null;
      state.userName = null;
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
