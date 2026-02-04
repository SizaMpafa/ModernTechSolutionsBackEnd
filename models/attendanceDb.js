import { pool } from "../pool.js"

const getAttendanceDb = async () => {
    let [data] = await pool.query('SELECT * FROM attendance')
    return data
}
const insertAttendanceDb = async (attendance_date, attendance_status, employee_id) => {
    let [data] = await pool.query('INSERT INTO `attendance` (`attendance_date`, `attendance_status`, `employee_id`) VALUES (?, ?, ?)', [attendance_date, attendance_status, employee_id])
    return data
}
const updateAttendanceDb = async (attendance_id, updates, employee_id) => {
  const fields = []
  const values = []

  if (updates.attendance_date) {
    fields.push("attendance_date = ?")
    values.push(updates.attendance_date)
  }

  if (updates.attendance_status) {
    fields.push("attendance_status = ?")
    values.push(updates.attendance_status)
  }


  if (fields.length === 0) return

  values.push(attendance_id)
  values.push(employee_id)

  const query =  `
    UPDATE attendance 
    SET ${fields.join(", ")} 
    WHERE (attendance_id = ? AND employee_id = ?);
    `
  await pool.query(query, values)
}

export {getAttendanceDb, insertAttendanceDb, updateAttendanceDb}
