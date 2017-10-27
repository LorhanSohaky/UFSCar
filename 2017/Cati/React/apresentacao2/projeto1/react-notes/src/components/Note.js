import React from 'react';

class Note extends React.Component{

	constructor(props){
		super(props);

		this.state={
			edit: null
		}

		this.handleClick=this.handleClick.bind(this);
	}

	handleClick(event){
		const edit=event.target.id;

		this.setState({
			edit:edit
		});
	}

	render(){
		 return(
			<div class="pin">
				<button class="btn check-btn"><i class="material-icons">check_circle</i></button>
				<p id="title">{this.props.note.title}</p>
				<p id="text">{this.props.note.text}</p>
				<div class="actions">
					<button class="btn action-btn"><i class="material-icons">archive</i></button>
					<button class="btn action-btn"><i class="material-icons">delete</i></button>
				</div>
			</div>
		)
	}
}
export default Note;
