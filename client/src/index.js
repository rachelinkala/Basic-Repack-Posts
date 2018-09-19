import React from 'react';
import ReactDOM from 'react-dom';
import Post from './Post';
import { BrowserRouter } from 'react-router-dom';
import { provider } from 'react-redux';
import store from './store';
import 'semantic-ui-css/semantic.min.css';

ReactDOM.render(
  <Provider store={store}>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </Provider>,
  document.getElementById('root')
);
