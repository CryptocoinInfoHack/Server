const express = require('express')
const request = require('request')
const PORT = process.env.PORT || 3000
const app = express()
const __NEWSAPI_KEY__ = process.env.NEWSAPI_KEY;
const __NEWS_API__ = 'https://newsapi.org/v2/everything';

const cors = require('cors')

app.use(cors())
app.use(express.static('./public'))

app.get('/news', (req, res) => {
  //let newsData = $.getJSON(__NEWS_API__ + '?sources=crypto-coins-news&apikey=' + __NEWSAPI_KEY__);
  request(__NEWS_API__ + '?sources=crypto-coins-news&apikey=' + __NEWSAPI_KEY__, function (error, response, body) {
    if (!error && response.statusCode == 200) {
      var info = JSON.parse(body)
      // do more stuff
      res.send(info);
    }
  })
})

app.get('/', (req, res) => {
})

app.listen(PORT, (req, res) => console.log(`Listening on port ${PORT}`)) 


