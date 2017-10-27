import React from 'react';
import Note from './Note';

const Board=({notes})=>(
	<div id="columns">
		{notes.map((note)=>{
			return <Note note={note}/>
		})}
	</div>
)

export default Board;
