import { pool } from "../pool.js"


const getLeaveRequestsDb = async () => {
    let [data] = await pool.query('SELECT * FROM leave_requests')
    return data
}
const insertLeaveRequestsDb = async (date, status,reason, employee_id) => {
    let [data] = await pool.query('INSERT INTO `leave_requests` (`date`, `status`,`reason`,`employee_id`) VALUES (?, ?, ?, ?)', [date, status,reason,employee_id])
    return data}
export {getLeaveRequestsDb, insertLeaveRequestsDb}