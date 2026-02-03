import express from 'express'
// import mysql from 'mysql2/promise'
import {getEmployeesCon } from './controllers/employeesController.js';
import {getAttendanceCon } from './controllers/attendanceController.js';
import {getPayrollCon } from './controllers/payrollController.js';

const app = express();
app.use(express.json())
const port = 1111
app.get('/employees', getEmployeesCon);
app.get('/attendance', getAttendanceCon);
app.get('/payroll', getPayrollCon);

app.listen(port, () => {
  console.log(`http://localhost:${port}`)
})
