import React from 'react';
import ShowArchived from './ShowArchived';
import Button from './Button'

const ActionBar=({add,remove})=>(
	<div class="row">
		<Button onClick={add} text={<i class="material-icons">add</i>}/>
		<Button text={<i class="material-icons">archive</i>} type="btn-success"/>
		<Button onClick={remove} text={<i class="material-icons">delete</i>} type="btn-danger"/>
		<ShowArchived/>
	</div>
)

export default ActionBar;
