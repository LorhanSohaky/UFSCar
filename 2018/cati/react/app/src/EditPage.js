import React from "react";
import {Link} from "react-router-dom";

class EditPage extends React.Component{
	render(){
		return(
			<div>
				<Link to="/">Home</Link>
				<h1>Edit pagina</h1>
			</div>
		);
	}
}

export default EditPage;
