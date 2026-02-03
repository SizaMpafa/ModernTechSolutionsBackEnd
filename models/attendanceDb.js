import { pool } from "../config/config.js"


const getAttendanceDb = async () => {
    let [data] = await pool.query('SELECT * FROM attendance')
    return data
}

export {getAttendanceDb}