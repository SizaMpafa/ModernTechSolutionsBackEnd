import { pool } from "../config/config.js"

const getPayrollDb = async () => {
    let [data] = await pool.query('SELECT * FROM payroll_data')
    return data
}

export {getPayrollDb}