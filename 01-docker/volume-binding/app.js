 
var express = require('express');
const bodyParser = require("body-parser");
const cookieParser = require('cookie-parser');
const cors = require('cors')

var app = express();

 
app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cookieParser());


app.get('/', async (req, res) => {
  try {
     res.json({message: "Hello Docker!"})
  }
  catch (e) {
    console.error(e)
  }
});

app.listen(8080, () => {
  console.log('application started on 8080')
});