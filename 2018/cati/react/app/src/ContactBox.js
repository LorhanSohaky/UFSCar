import React from "react";
import PubSub from "pubsub-js";

import Button from "./Button";


class ContactBox extends React.Component {

	_handleDelete = () => {
		PubSub.publish("DELETE", this.props.id)
	}

	render() {
		return(
			<div>
			{this.props.name}
			{this.props.phone}
			{this.props.category}
			<Button label="Remover" action={this._handleDelete}/>
			</div>
		);
	}
}

export default ContactBox;
