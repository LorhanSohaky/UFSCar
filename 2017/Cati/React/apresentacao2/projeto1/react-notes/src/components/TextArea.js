import React from 'react';

class TextArea extends React.Component{
	render(){
		return(
			<textarea 	id={this.props.id}
						className="note-textarea"
						onBlur={this.props.handleBlur}
						onChange={this.props.handleChange}
						value={this.props.value}>
			</textarea>
		)
	}
}

export default TextArea;
