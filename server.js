
const page = require('page')
const express = require('express')
const PORT = process.env.PORT || 3000
const app = express()

const pg = require('pg');

const DATABASE_URL = process.env.DATABASE_URL || 'postgres://postgres:1234@localhost:5432/cryptocoin';
const client = new pg.Client(DATABASE_URL);

const cors = require('cors');

app.use(cors())
app.use(express.static('./public'))

app.get('/', (req, res) => {
   res.send('Hello World') 
})

app.listen(PORT, (req, res) => console.log(`Listening on port ${PORT}`)) 


