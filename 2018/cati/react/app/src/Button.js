import React from "react";
import PropTypes from "prop-types";
import styled from "styled-components";

const Container = styled.div`
	background-color: black;
	color: white;
	padding: 1em;
	width: 80px;

	&:hover{
		background-color: blue;
	}
`;


class Button extends React.Component{

	static propTypes = {
		"action": PropTypes.func.isRequired,
		"label": PropTypes.string.isRequired
	}

	render(){
		return (
			<Container>
				<div onClick={this.props.action}>
					{this.props.label}
				</div>
			</Container>
		);
	}
}

export default Button;
