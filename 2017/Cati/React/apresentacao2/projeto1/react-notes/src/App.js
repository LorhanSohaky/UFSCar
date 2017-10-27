import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
		<div id="root">

          <div id="wrapper">
              <div class="row">
                  <button class="btn"><i class="material-icons">add</i></button>
                  <button class="btn btn-success"><i class="material-icons">archive</i></button>
                  <button class="btn btn-danger"><i class="material-icons">delete</i></button>

  		<div class="checkbox-container">
  		    <input type="checkbox" />
  		    <span>Exibir Arquivados</span>
  		</div>
              </div>
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
