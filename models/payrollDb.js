import { pool } from "../pool.js"

const getPayrollDb = async () => {
    let [data] = await pool.query('SELECT * FROM payroll_data')
    return data
}

export {getPayrollDb}