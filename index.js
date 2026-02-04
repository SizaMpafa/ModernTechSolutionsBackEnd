import express from 'express'
import {getPayrollCon } from './controllers/payrollController.js';
import {deleteEmployeeCon, getEmployeesCon, insertEmployeesCon, updateEmployeesCon } from './controllers/employeesController.js';
import {getAttendanceCon, insertAttendanceCon, updateAttendanceCon } from './controllers/attendanceController.js';
import { getLeaveRequestsCon } from './controllers/leaveRequestConroller.js';

const app = express();
app.use(express.json())
const port = 1111
app.get('/employees', getEmployeesCon);
app.post('/employees', insertEmployeesCon);
app.patch('/employees/:employee_Id', updateEmployeesCon);
app.delete('/employees/:employee_Id', deleteEmployeeCon);
app.get('/attendance', getAttendanceCon);
app.get('/payroll', getPayrollCon);
app.post('/attendance', insertAttendanceCon);
app.patch('/employee/:employee_id/attendance/:attendance_id', updateAttendanceCon);
app.get('/leave_requests', getLeaveRequestsCon);

app.listen(port, () => {
  console.log(`http://localhost:${port}`)
})
