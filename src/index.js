const express = require('express');

const app = express();

app.get('/', (_, res) => {
	res.send('Hello');
});

const PORT = 4000;

app.listen(PORT, () => {
	console.log(`Server is running on port: ${PORT}. VERSION 2`);
});
