import mysql from 'mysql2/promise'

const pool = mysql.createPool({
    user: 'root',
    host: 'localhost',
    database: 'employee_dummydata',
    password: ''
})

const getLeaveRequestsDb = async () => {
    let [data] = await pool.query('SELECT * FROM leave_requests')
    return data
}

export {getLeaveRequestsDb}