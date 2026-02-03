import { pool } from "../config/config.js"


const getEmployeesDb = async () => {
    let [data] = await pool.query('SELECT * FROM employees')
    return data
}

export {getEmployeesDb}