import React from 'react';

const Button=({type,text})=>(
		<button className={`btn ${type}`}>
			{text}
		</button>
)

export default Button;
