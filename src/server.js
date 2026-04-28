require('dotenv').config(); 

const express = require('express');
const path = require('path');
const heroRoutes = require('./routes/heroRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

/* Leyfir vafranum að sækja myndir */
app.use(express.static(path.join(__dirname, '../public')));

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use(express.urlencoded({ extended: true }));

app.use('/', heroRoutes);

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});