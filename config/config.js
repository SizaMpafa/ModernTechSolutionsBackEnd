import mysql from 'mysql2/promise'

const pool = mysql.createPool({
    user: 'root',
    host: 'localhost',
    database: 'employee_dummydata',
    password: 'root'
})

export {pool}