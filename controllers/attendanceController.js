import { getAttendanceDb } from "../models/attendanceDb.js"

const getAttendanceCon = async (req, res) => {
    res.json({attendance: await getAttendanceDb()})
}

export {getAttendanceCon}