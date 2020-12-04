const app = require('express')();

app.get('/', (_, res) => {
  res.json({ message: 'Hello, world' });
});

module.exports = app;
