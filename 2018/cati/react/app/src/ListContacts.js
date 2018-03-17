import React from "react";

import ContactBox from "./ContactBox";

class ListContacts extends React.Component {

	render() {

		let contactsBox = this.props.contacts.map(
			function(item, index){
				return <ContactBox key={item.id} id={index} name={item.name} phone={item.phone} category={item.category}/>;
			}
		);

		return(
			<div>
				{contactsBox}
			</div>
		);
	}
}

export default ListContacts;
