const express = require('express');

const app = express();
const port = 3000;

app.get('/', (req, res) => res.send('<h1 style="text-align: center">It works! 🥂</h1>'));

app.listen(port, () => console.log(`app is running on port ${port}`));