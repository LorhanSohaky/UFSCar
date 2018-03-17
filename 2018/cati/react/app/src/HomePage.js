import React from "react";
import {Link} from "react-router-dom";

import ListContacts from "./ListContacts"

class HomePage extends React.Component {

	render(){
		return(
			<div>
				<h1> Home page</h1>
				<Link to="/add">Add</Link>
				<ListContacts contacts={this.props.contacts}/>
			</div>
		);
	}
}


export default HomePage;
