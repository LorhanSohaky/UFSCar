import React, { Component } from 'react';

import './App.css';
import ActionBar from './components/ActionBar';
import Board from './components/Board';

class App extends Component {

	constructor(props){
		super(props);

		this.state={
			notes:[]
		};

		this.add=this.add.bind(this);
		this.remove=this.remove.bind(this);
	}

	add(){
		let notes=this.state.notes;

		notes.push({
				title: 'Nota '+notes.length,
				text: 'Conteúdo...',
				status: 'visible'
		});

		this.setState({
			notes:notes
		})
	}

	remove(){

		let notes=this.state.notes;

		notes.pop();

		this.setState({
			notes:notes
		})
	}

	render() {
      return (
        <div id="wrapper">
  			<ActionBar
				add={this.add}
				remove={this.remove}
			/>
            <Board notes={this.state.notes}/>
        </div>
      );
    }
}

export default App;
