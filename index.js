import express from 'express';
import router from './routes/index.js';
import db from './config/db.js';

const app = express();

db.authenticate()
  .then(() => console.log('bd conectada'))
  .catch((error) => console.error(error));

const host = process.env.HOST || '0.0.0.0';
const port = process.env.PORT || 4000;

app.set('view engine', 'pug');

app.use((req, res, next) => {
  const year = new Date();
  res.locals.actualYear = year.getFullYear();
  res.locals.nombreSitio = 'Agencia de Viajes';
  next();
});

app.use(express.urlencoded({ extended: true }));

app.use(express.static('public'));

app.use('/', router);

app.listen(port, host, () => {
  console.log(
    `El servidor está funcionando en el puerto ${port} y en el host ${host}`
  );
});
