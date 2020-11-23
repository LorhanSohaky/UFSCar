function apresenta(selCidade) {
    alert("Selecionado: " + selCidade.target.value)
}

function getCidades() {
    const cidade = document.getElementById("cidade")
    const nome = cidade.value

    fetch(`buscaPorNome?term=${nome}`)
            .then(response => response.json())
            .then(atualizaTabelaCidades).catch()
}

function atualizaTabelaCidades(cidades) {

    // CRIA UMA TABELA DINAMICA

    const table = document.createElement("table")
    table.border = "1";
    table.style.border = "1px solid black";
    table.style.width = "400px";

    // CRIA LINHA TABELA (LINHA CABECALHO).

    const tr = table.insertRow(-1)

    // CRIA COLUNA NA LINHA DE CABECALHO
    const thSel = document.createElement('th')
    thSel.innerHTML = '';
    thSel.style.width = "10%";
    tr.appendChild(thSel);

    // CRIA COLUNA NA LINHA DE CABECALHO
    const thNome = document.createElement('th')
    thNome.innerHTML = 'Nome'
    thNome.style.width = "70%"
    tr.appendChild(thNome);

    // CRIA COLUNA NA LINHA DE CABECALHO
    const thEstado = document.createElement('th')
    thEstado.innerHTML = 'Estado'
    thEstado.style.width = "20%"
    tr.appendChild(thEstado)

    // CRIA DEMAIS LINHAS COM OS VALORES

    cidades.forEach(item => {
        // CRIA NOVA LINHA
        const tr = table.insertRow(-1)

        const [cidade, estado] = item.split('/')

        // CRIA COLUNA 1 NA LINHA

        const col1 = tr.insertCell(-1)
        const radio = document.createElement('input')
        radio.type = 'radio'
        radio.id = item
        radio.name = 'selCidade'
        radio.value = cidade + "/" + estado
        radio.onclick = apresenta.bind(radio.value)

        col1.appendChild(radio)
        // col1.style = "text-align:center"; analogo ao comando abaixo
        col1.style.textAlign = "center"

        // CRIA COLUNA 2 NA LINHA

        const col2 = tr.insertCell(-1)
        col2.innerHTML = cidade

        // CRIA COLUNA 3 NA LINHA

        const col3 = tr.insertCell(-1)
        // col3.style = "text-align:center"; analogo ao comando abaixo
        col3.style.textAlign = "center"
        col3.innerHTML = estado
    })


    const divContainer = document.getElementById("cidades")
    divContainer.innerHTML = ""

    // CRIA UM PARAGRAFO (TAG P) COM A QUANTIDADE DE CIDADES

    const p = document.createElement('p')
    p.innerHTML = 'Quantidade: ' + cidades.length

    // ADICIONA O PARAGRAFO AO CONTAINER.
    divContainer.appendChild(p)

    // ADICIONA A NOVA TABELA AO CONTAINER.
    divContainer.appendChild(table)
}
