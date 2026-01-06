import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  isLoggedIn: false,
  userType: null, // 'admin' or 'user'
  userName: null,
  email: null,
};

const userSlice = createSlice({
  name: 'user',
  initialState,
  reducers: {
    login: (state, action) => {
      const { userType, userName, email } = action.payload;
      state.isLoggedIn = true;
      state.userType = userType;
      state.userName = userName;
      state.email = email;
    },
    logout: (state) => {
      state.isLoggedIn = false;
      state.userType = null;
      state.userName = null;
      state.email = null;
    },
  },
});

export const { login, logout } = userSlice.actions;
export default userSlice.reducer;
