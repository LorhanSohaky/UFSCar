import React from 'react';

const Button=({type,text,onClick})=>(
		<button className={`btn ${type}`} onClick={onClick}>
			{text}
		</button>
)

export default Button;
