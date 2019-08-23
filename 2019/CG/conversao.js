let numero_colunas = 50;
let numero_linhas = 50;

let matriz=[];

for (let i = 0; i < numero_linhas; i++) {
    matriz.push([]);
    for (let j = 0; j < numero_colunas; j++) {
        matriz[i].push(0);
    }
}

matriz[1][1] = 1;
matriz[1][2] = 1;

let table = "";

for (let i = 0; i < numero_linhas; i++) {
    table+="<tr>";
    for (let j = 0; j < numero_colunas; j++) {
        table+=`<td style="width:10px;height:10px;background-color:${matriz[i][j]?"black":"white"}"></td>`;
    }
    table+="</tr>";
}


let gerneratedHTML = `<table border="1">${table}</table>`;


let root = document.getElementById("root");

root.innerHTML = gerneratedHTML;
