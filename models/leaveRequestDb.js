import { pool } from "../pool.js"


const getLeaveRequestsDb = async () => {
    let [data] = await pool.query('SELECT * FROM leave_requests')
    return data
}
const insertLeaveRequestsDb = async (date, status,reason, employee_id) => {
    let [data] = await pool.query('INSERT INTO `leave_requests` (`date`, `status`,`reason`,`employee_id`) VALUES (?, ?, ?, ?)', [date, status,reason,employee_id])
    return data
}

const updateLeaveRequestDb = async (leave_request_id, updates, employee_id) => {
  const fields = []
  const values = []

  if (updates.date) {
    fields.push("date = ?")
    values.push(updates.date)
  }

  if (updates.status) {
    fields.push("status = ?")
    values.push(updates.status)
  }
  if (updates.reason) {
    fields.push("reason = ?")
    values.push(updates.reason)
  }


  if (fields.length === 0) return

  values.push(leave_request_id)
  values.push(employee_id)

  const query =  `
    UPDATE leave_requests 
    SET ${fields.join(", ")} 
    WHERE (leave_request_id = ? AND employee_id = ?);
    `
  await pool.query(query, values)
}

export {getLeaveRequestsDb, insertLeaveRequestsDb, updateLeaveRequestDb}