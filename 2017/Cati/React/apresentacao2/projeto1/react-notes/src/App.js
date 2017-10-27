import React, { Component } from 'react';

import './App.css';
import ActionBar from './components/ActionBar'

class App extends Component {
  render() {
    return (
		<div id="root">
          <div id="wrapper">
		  	<ActionBar/>
              <div id="columns">
                  <div class="pin">
                      <button class="btn check-btn"><i class="material-icons">check_circle</i></button>
                      <p>Nota 0</p>
                      <p>Conteúdo...</p>
                      <div class="actions">
                          <button class="btn action-btn"><i class="material-icons">archive</i></button>
                          <button class="btn action-btn"><i class="material-icons">delete</i></button>
                      </div>
                  </div>
              </div>
          </div>

      </div>
    );
  }
}

export default App;
