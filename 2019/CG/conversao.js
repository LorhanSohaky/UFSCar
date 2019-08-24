const sizeOfPixel = 32;

const numberOfColumns  = Math.floor(Math.max(document.documentElement.clientWidth, window.innerWidth || 0) / sizeOfPixel);
const numberOfLines = Math.floor(Math.max(document.documentElement.clientHeight, window.innerHeight || 0) / sizeOfPixel);
const matriz=[];

let dataToPlot = [];

start();

function start() {
  createViewPortDataStructure();

  setInterval(renderViewPort, 500);
}

function createViewPortDataStructure() {
  const numberOfPixels = numberOfLines * numberOfColumns;

  for (let i = 0; i < numberOfPixels; i++) {
      matriz[i] = 0;
  }

}


function renderViewPort() {
  const numberOfPixels = numberOfLines * numberOfColumns;

  for (let i = 0; i < 100; i++) {
    randomIndex = Math.round(Math.random() * (numberOfPixels - 1));
    randomColor = Math.round(Math.random() * 16777215);
    matriz[randomIndex] = randomColor;
  }

  let html = '<table cellpadding="0" cellspacing="0">';

  for (let row = numberOfLines - 1; row >= 0; row--) {
    html += '<tr>';

    for (let column = numberOfColumns - 1; column >= 0; column--) {
      const pixelIndex = column + ( numberOfColumns * row );
      const color = matriz[pixelIndex];
      
      const colorString = decimalColorToHexadecimalColor(color);
      
      html += `<td class="pixel" style="width:${sizeOfPixel}px;height:${sizeOfPixel}px;background-color: ${colorString}">`;
      html += '</td>';
    }

    html += '</tr>';
  }

  html += '</table>';


  let root = document.getElementById('root');

  root.innerHTML = html;
}

function decimalColorToHexadecimalColor(number) {
  let integerNumber = number - 0;

  let template = "#000000";

  const red = (integerNumber&0x0000ff) << 16;
  const green = integerNumber&0x00ff00;
  const blue = (integerNumber&0xff0000) >>> 16;

  integerNumber = red|green|blue;

  let hexColor = integerNumber.toString(16);

  hexColor = template.substring(0,7 - hexColor.length) + hexColor;
 
  return hexColor;
}