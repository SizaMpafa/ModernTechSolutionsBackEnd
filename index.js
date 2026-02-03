import express from 'express'
// import mysql from 'mysql2/promise'
import { getEmployeesCon } from './controllers/employeesController.js';

const app = express();
app.use(express.json())
const port = 1111
app.get('/employees', getEmployeesCon )

app.listen(port, () => {
  console.log(`http://localhost:${port}`)
})
