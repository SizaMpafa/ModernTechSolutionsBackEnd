import mysql from 'mysql2/promise'

const pool = mysql.createPool({
    user: 'root',
    host: 'localhost',
    database: 'employee_dummydata',
    password: 'umgangatho_db'
})

const getEmployeesDb = async () => {
    let [data] = await pool.query('SELECT * FROM employees')
    return data
}

export {getEmployeesDb}