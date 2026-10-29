
const express = require("express");
const { Pool } = require("pg");

const path = require("path");
const app = express();
app.use(express.json());


const pool = new Pool({
  user: "postgres",          
  host: "localhost",         
  database: "Entrega2",      
  password: "123", 
  port: 5432                 
});


app.get("/test-db", async (req, res) => {
  try {
    const result = await pool.query("SELECT NOW()");
    res.send("Conexión exitosa a PostgreSQL: " + result.rows[0].now);
  } catch (err) {
    console.error(err);
    res.status(500).send("Error al conectar con la base de datos");
  }
});


app.get("/trabajadores", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM trabajador_operaciones");
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Error al obtener trabajadores");
  }
});


app.get("/areas", async (req, res) => {
  try {
    const result = await pool.query(`
      SELECT a.tipo_area, t.nombre_area, g.rut_ope AS rut_gerencia
      FROM area_operaciones a
      JOIN tipo_area_operaciones t ON a.tipo_area = t.tipo_area
      JOIN gerencia_operaciones g ON a.rut_ope = g.rut_ope
      ORDER BY a.tipo_area;
    `);
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Error al obtener áreas");
  }
});


app.get("/trabajador/:rut", async (req, res) => {
  const rut = req.params.rut;
  try {
    const result = await pool.query(
      "SELECT * FROM trabajador_operaciones WHERE rut = $1",
      [rut]
    );
    if (result.rows.length === 0) {
      return res.status(404).send("Trabajador no encontrado");
    }
    res.json(result.rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).send("Error al consultar trabajador");
  }
});


app.get("/trabajadores-areas", async (req, res) => {
  try {
    const result = await pool.query(`
      SELECT t.nombre AS trabajador, t.cargo, ta.nombre_area
      FROM trabaja tr
      JOIN trabajador_operaciones t ON tr.rut = t.rut
      JOIN tipo_area_operaciones ta ON tr.tipo_area = ta.tipo_area
      ORDER BY ta.nombre_area;
    `);
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Error al obtener trabajadores con áreas");
  }
});

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "index.html"));
});
const PORT = 80;
app.listen(PORT, () => {
  console.log(`Servidor ejecutándose en http://localhost:${PORT}`);
});