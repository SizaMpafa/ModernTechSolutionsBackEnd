import { pool } from "../pool.js"


const getLeaveRequestsDb = async () => {
    let [data] = await pool.query('SELECT * FROM leave_requests')
    return data
}

export {getLeaveRequestsDb}