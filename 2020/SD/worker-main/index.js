// Configuração par leitura do teclado
const readline = require('readline')
readline.emitKeypressEvents(process.stdin)
process.stdin.setRawMode(true)

// Lib para gerar dados fakes
const faker = require('faker-br')

// Configurações do ZeroMQ
const zmq = require('zeromq')
const sockEstoque = zmq.socket('push')
const sockEmail = zmq.socket('push')
const sockNotaFiscal = zmq.socket('push')

sockEmail.bindSync('tcp://127.0.0.1:3000')
sockEstoque.bindSync('tcp://127.0.0.1:3001')
sockNotaFiscal.bindSync('tcp://127.0.0.1:3002')

let id = 1

function generateFakeData () {
  const fullName = `${faker.name.firstName()} ${faker.name.lastName()}`
  const cpf = faker.br.cpf()

  const address = `${faker.address.streetPrefix()} ${faker.address.streetName()}`
  const addressNumber = faker.random.number(5000)

  const product = faker.commerce.productName()
  const productQuantity = faker.random.number(10)
  const productPrice = faker.commerce.price()

  return {
    id: id++,
    client: {
      name: fullName,
      cpf,
      address: {
        street: address,
        number: addressNumber
      }
    },
    product: {
      name: product,
      quantity: productQuantity,
      price: productPrice
    }
  }
}

console.log('Main Worker - Listening')
process.stdin.on('data', (chunk, key) => {
  const data = chunk.toString()

  switch (data) {
    case '0':
      sockEstoque.close()
      process.exit()
    case 'a': {
      const fakeData = generateFakeData()
      const message = JSON.stringify(fakeData)

      console.log(`Sending: ${message}`)
      sockEstoque.send(message)
      sockNotaFiscal.send(message)
      sockEmail.send(message)
      break }
    default:
      break
  }
})
