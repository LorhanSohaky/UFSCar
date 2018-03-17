import React, { Component } from 'react';
import PubSub from "pubsub-js";
import Axios from "axios";
import { BrowserRouter, Switch, Route } from "react-router-dom";

import logo from './logo.svg';
import './App.css';

import HomePage from './HomePage';
import AddPage from './AddPage';

class App extends Component {

	constructor(){
		super();
		this.state = {
			'contacts': []
		};

		PubSub.subscribe("DELETE",this._handleDelete);
		PubSub.subscribe("ADD",this._handleAdd);
	}

	componentDidMount(){
		Axios.get("https://srv-contact.raccoon.ag/api/contacts").then(
			(response) => {
				this.setState({
					contacts:response.data
				});
			}
		);
	}

	_handleDelete = (msg, index) =>{

		let id = this.state.contacts[index].id;
		Axios.delete("https://srv-contact.raccoon.ag/api/contacts/"+id).then(
			() => {
				let list = this.state.contacts.slice();
				list.splice(index,1);
				this.setState({ contacts:list });
			}
		);
	}

	_handleAdd = (msg, contact) =>{
		Axios.post("https://srv-contact.raccoon.ag/api/contacts", contact).then(
			(response) => {
				let list = this.state.contacts.slice();
				list.push(response.data);
				this.setState({ contacts:list });
			}
		);
	}

  render() {
    return (
		<BrowserRouter>
			<Switch>
				<Route exact path="/" render={()=> <HomePage contacts ={this.state.contacts} /> } />
				<Route path="/add" component={AddPage} />
      		</Switch>
		</BrowserRouter>
    );
  }
}

export default App;
