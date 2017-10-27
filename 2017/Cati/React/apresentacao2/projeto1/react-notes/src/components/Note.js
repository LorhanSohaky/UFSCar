import React from 'react';
import Button from './Button';
import TextArea from './TextArea';

class Note extends React.Component{

	constructor(props){
		super(props);

		this.state={
			edit: null
		}

		this.handleClick=this.handleClick.bind(this);
		this.handleBlur=this.handleBlur.bind(this);
		this.updateParent=this.updateParent.bind(this);
		this.handleChange=this.handleChange.bind(this);
	}

	handleClick(event){
		const edit=event.target.id;

		this.setState({
			edit:edit
		});

	}

	handleBlur(event){
		this.setState({
			edit:null
		});

	}

	handleChange(event){
		const field=event.target.id;

		this.updateParent({
				...this.props.note,[field]:event.target.value
		});
	}

	updateParent(changes){

		this.props.handleUpdate(changes,this.props.id);
	}

	render(){
		 return(
			<div class="pin">
				<Button text={<i class="material-icons">check_circle</i>} type="check-btn"/>
				{
					this.state.edit=== "title" ?
						<TextArea id={"title"} value={this.props.note.title} handleChange={this.handleChange}/>
						:
						<p id="title" onClick={this.handleClick}>{this.props.note.title}</p>
				}

				{
					this.state.edit=== "text" ?
						<TextArea id={"text"} value={this.props.note.text} handleChange={this.handleChange}/>
						:
						<p id="text" onClick={this.handleClick}>{this.props.note.text}</p>
				}
				<div class="actions">
					<Button text={<i class="material-icons">archive</i>} type="action-btn"/>
					<Button text={<i class="material-icons">delete</i>} type="action-btn"/>
				</div>
			</div>
		)
	}
}
export default Note;
