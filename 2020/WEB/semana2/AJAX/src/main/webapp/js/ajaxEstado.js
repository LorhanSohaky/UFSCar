function apresenta() {
    const cidade = document.getElementById("cidade")
    const estado = document.getElementById("estado")
    const selCidade = cidade.options[cidade.selectedIndex].value
    const selEstado = estado.options[estado.selectedIndex].value
    alert("Selecionado: " + selCidade + "/" + selEstado)
}

function estadoSelecionado(str) {
    fetch(`buscaPorEstado?estado=${str}`)
            .then(response => response.json())
            .then(atualizaCidades)
            .catch(err => console.error(err))
}

function atualizaCidades(data) {
    const cidade = document.getElementById("cidade")

    cidade.innerHTML = ''
    data.forEach(item => {
        const option = document.createElement('option')
        option.text = item.nome
        option.value = item.nome
        cidade.appendChild(option)
    })
}