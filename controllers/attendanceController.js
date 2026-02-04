import { getAttendanceDb, insertAttendanceDb, updateAttendanceDb } from "../models/attendanceDb.js"

const getAttendanceCon = async (req, res) => {
    res.json({attendance: await getAttendanceDb()})
}
const insertAttendanceCon = async (req, res) => {
    let {attendance_date, attendance_status, employee_id} = req.body
    await insertAttendanceDb(attendance_date, attendance_status, employee_id)
    res.json({attendance: await getAttendanceDb()})
}
const updateAttendanceCon = async (req, res) => {
    let {attendance_id, employee_id} = req.params
    let updates = req.body
    await updateAttendanceDb(attendance_id, updates, employee_id)
    res.json({attendance: await getAttendanceDb()})
}

export {getAttendanceCon, insertAttendanceCon, updateAttendanceCon}