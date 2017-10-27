import React, { Component } from 'react';

import './App.css';
import ActionBar from './components/ActionBar';
import Board from './components/Board';
import Note from './components/Note';

class App extends Component {
  render() {
    return (
		<div id="root">
          <div id="wrapper">
		  	<ActionBar/>
              <Board/>
			  	<Note/>
          </div>

      </div>
    );
  }
}

export default App;
