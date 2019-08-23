const numberOfColumns  = 350;
const numberOfLines = 350;
const matriz=[];
const colorsPalette = [ {"r":7,"g":7,"b":7},{"r":31,"g":7,"b":7},{"r":47,"g":15,"b":7},{"r":71,"g":15,"b":7},{"r":87,"g":23,"b":7},
                            {"r":103,"g":31,"b":7},{"r":119,"g":31,"b":7},{"r":143,"g":39,"b":7},{"r":159,"g":47,"b":7},{"r":175,"g":63,"b":7},
                            {"r":191,"g":71,"b":7},{"r":199,"g":71,"b":7},{"r":223,"g":79,"b":7},{"r":223,"g":87,"b":7},{"r":223,"g":87,"b":7},
                            {"r":215,"g":95,"b":7},{"r":215,"g":95,"b":7},{"r":215,"g":103,"b":15},{"r":207,"g":111,"b":15},{"r":207,"g":119,"b":15},
                            {"r":207,"g":127,"b":15},{"r":207,"g":135,"b":23},{"r":199,"g":135,"b":23},{"r":199,"g":143,"b":23},{"r":199,"g":151,"b":31},
                            {"r":191,"g":159,"b":31},{"r":191,"g":159,"b":31},{"r":191,"g":167,"b":39},{"r":191,"g":167,"b":39},{"r":191,"g":175,"b":47},
                            {"r":183,"g":175,"b":47},{"r":183,"g":183,"b":47},{"r":183,"g":183,"b":55},{"r":207,"g":207,"b":111},{"r":223,"g":223,"b":159},
                            {"r":239,"g":239,"b":199},{"r":255,"g":255,"b":255} ];

let dataToPlot = [];

start();

function start() {
  createViewPortDataStructure();

  setInterval(renderViewPort, 500);
}


dataToPlot[1] = 100;
dataToPlot[2] = 100;

function createViewPortDataStructure() {
  const numberOfPixels = numberOfLines * numberOfColumns;

  for (let i = 0; i < numberOfPixels; i++) {
      matriz[i] = 0;
  }

}


function renderViewPort() {
  const numberOfPixels = numberOfLines * numberOfColumns;

  for (let i = 0; i < 100; i++) {
    matriz[Math.round(Math.random() * (numberOfPixels - 1))] = Math.round(Math.random() * 37);
  }

  let html = '<table cellpadding="0" cellspacing="0">';

  for (let row = numberOfLines - 1; row >= 0; row--) {
    html += '<tr>';

    for (let column = numberOfColumns - 1; column >= 0; column--) {
      const pixelIndex = column + ( numberOfColumns * row );
      let color = colorsPalette[matriz[pixelIndex]];
      //console.log(color);
      //const colorString = `${color.r},${color.g},${color.b}`;

      html += `<td class="pixel" style="background-color: rgb(${color})">`;
      html += '</td>';
    }

    html += '</tr>';
  }

  html += '</table>';


  let root = document.getElementById('root');

  root.innerHTML = html;
  //console.log('Renderizado!');
}
