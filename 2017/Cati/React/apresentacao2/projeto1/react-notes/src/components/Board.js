import React from 'react';
import Note from './Note';

const Board=({notes,handleUpdate})=>(
	<div id="columns">
		{notes.map((note,index)=>{
			return <Note note={note} id={index} handleUpdate={handleUpdate}/>
		})}
	</div>
)

export default Board;
