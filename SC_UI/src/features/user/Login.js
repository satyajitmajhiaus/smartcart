import React, { useState } from 'react';
import { useDispatch } from 'react-redux';
import { login } from './userSlice';
import './user.css';

function Login({ onClose }) {
  const [userType, setUserType] = useState('user');
  const [userName, setUserName] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const dispatch = useDispatch();

  const handleLogin = (e) => {
    e.preventDefault();
    
    if (!userName || !password) {
      setError('Please fill all fields');
      return;
    }

    // Dispatch login action with user info
    dispatch(login({
      userType,
      userName,
      email: `${userName}@smartcart.com`,
    }));

    setError('');
    onClose();
  };

  return (
    <div className="login-modal-overlay" onClick={onClose}>
      <div className="login-modal" onClick={(e) => e.stopPropagation()}>
        <div className="login-header">
          <h2>Login</h2>
          <button className="login-close-btn" onClick={onClose}>✕</button>
        </div>
        <form onSubmit={handleLogin}>
          <div className="form-group">
            <label htmlFor="userType">User Type</label>
            <select
              id="userType"
              value={userType}
              onChange={(e) => setUserType(e.target.value)}
              className="form-control"
            >
              <option value="user">User</option>
              <option value="admin">Admin</option>
            </select>
          </div>

          <div className="form-group">
            <label htmlFor="userName">Username</label>
            <input
              type="text"
              id="userName"
              value={userName}
              onChange={(e) => setUserName(e.target.value)}
              className="form-control"
              placeholder="Enter username"
            />
          </div>

          <div className="form-group">
            <label htmlFor="password">Password</label>
            <input
              type="password"
              id="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="form-control"
              placeholder="Enter password"
            />
          </div>

          {error && <div className="error-message">{error}</div>}

          <button type="submit" className="login-btn">Login</button>
        </form>
      </div>
    </div>
  );
}

export default Login;
