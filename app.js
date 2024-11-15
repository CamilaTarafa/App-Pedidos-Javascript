const express = require('express');
const mysql = require('mysql2/promise');
const cors = require('cors');

const app = express();
app.use(cors({ origin: '*', methods: ['GET', 'POST'], allowedHeaders: ['Content-Type'] }));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'clientespedidosya'
});

// Prueba de conexión a la base de datos
app.get('/api/test-db', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT 1');
    res.send('Conexión exitosa a la base de datos');
  } catch (error) {
    console.error('Error de conexión a la base de datos:', error);
    res.status(500).send('Error de conexión a la base de datos');
  }
});

// Endpoint para agregar cliente
app.post('/api/agregar-cliente', async (req, res) => {
  const { dni, nombre, preferencia, direccion, correo, telefono } = req.body;
  try {
    const query = 'INSERT INTO datos (dni, nombre, preferencia, direccion, correo, telefono) VALUES (?, ?, ?, ?, ?, ?)';
    await db.execute(query, [dni, nombre, preferencia, direccion, correo, telefono]);
    console.log('Cliente agregado:', req.body);
    res.send('Cliente agregado con éxito');
  } catch (error) {
    console.error('Error al agregar cliente:', error);
    res.status(500).send('Error al agregar cliente');
  }
});

app.listen(3003, () => {
  console.log('Servidor corriendo en http://localhost:3003');
});
 