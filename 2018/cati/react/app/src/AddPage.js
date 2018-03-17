import React from "react";
import PubSub from "pubsub-js";
import {Link} from "react-router-dom";

import Input from "./Input";
import Button from "./Button";

class AddPage extends React.Component{

	constructor(){
		super();

		this.state = {
			"name":"",
			"category":"",
			"phone":""
		}
	}

	_handleChangeName = (event) => {
		this.setState({"name":event.target.value});
	}

	_handleChangePhone = (event) => {
		this.setState({"phone":event.target.value});
	}

	_handleChangeCategory = (event) => {
		this.setState({"category":event.target.value});
	}

	_handleAdd = () => {
		PubSub.publish("ADD",this.state);
	}

	render(){
		return(
			<div>
				<h1>Add pagina</h1>
				<Link to="/">Home</Link>
				<Input type="text" label="Nome" onChange={this._handleChangeName}/>
				<Input type="text" label="Category" onChange={this._handleChangeCategory}/>
				<Input type="text" label="Phone" onChange={this._handleChangePhone}/>
				<Button label="Add" action={this._handleAdd}/>
			</div>
		);
	}
}

export default AddPage;
