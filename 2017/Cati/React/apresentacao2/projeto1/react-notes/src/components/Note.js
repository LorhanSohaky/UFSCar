import React from 'react';

const Note = ({note}) => (
	<div class="pin">
		<button class="btn check-btn"><i class="material-icons">check_circle</i></button>
		<p>{note.title}</p>
		<p>{note.text}</p>
		<div class="actions">
			<button class="btn action-btn"><i class="material-icons">archive</i></button>
			<button class="btn action-btn"><i class="material-icons">delete</i></button>
		</div>
	</div>
)

export default Note;
