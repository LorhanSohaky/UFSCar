import React, { Component } from 'react';

import './App.css';
import ActionBar from './components/ActionBar';
import Board from './components/Board';

class App extends Component {
  render() {
    return (
		<div id="root">
          <div id="wrapper">
		  	<ActionBar/>
              <Board/>
          </div>

      </div>
    );
  }
}

export default App;
