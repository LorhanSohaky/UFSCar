import React from 'react';

const ActionBar=()=>(
	<div class="row">
		<button class="btn"><i class="material-icons">add</i></button>
		<button class="btn btn-success"><i class="material-icons">archive</i></button>
		<button class="btn btn-danger"><i class="material-icons">delete</i></button>
		<div class="checkbox-container">
			  <input type="checkbox" />
			  <span>Exibir Arquivados</span>
		</div>
	</div>
)

export default ActionBar;
