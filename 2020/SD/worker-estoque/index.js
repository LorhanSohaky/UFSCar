
const zmq = require('zeromq')

const sockClient = zmq.socket('pull')
sockClient.connect('tcp://127.0.0.1:3001')

const { sleep } = require('../utils')

console.log('Estoque Worker - Listening')

const queue = []
let running = false
const PROCESSING_TIME = 10 * 1000

async function run () {
  running = true

  while (queue.length > 0) {
    const data = queue.shift()
    console.log(`ESTOQUE-WORKER: ${data.id} -> PROCESSING`)
    await sleep(PROCESSING_TIME)
    console.log(`ESTOQUE-WORKER: ${data.id} -> OK`)
  }

  running = false
}

sockClient.on('message', async (messageBuffer) => {
  const message = messageBuffer.toString()

  const object = JSON.parse(message)

  queue.push(object)
  if (!running) {
    run()
  }
})
