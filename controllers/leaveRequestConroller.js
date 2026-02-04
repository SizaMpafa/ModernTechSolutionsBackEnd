import {getLeaveRequestsDb, insertLeaveRequestsDb } from "../models/leaveRequestDb.js"

const getLeaveRequestsCon = async (req, res) => {
    res.json({leave_request: await getLeaveRequestsDb()})
}



const insertLeaveRequestCon = async (req, res) => {
    let {date,status,reason, employee_id} = req.body
    await insertLeaveRequestsDb(date,status,reason,employee_id)
    res.json({leave_requests: await getLeaveRequestsDb()})
}

export {getLeaveRequestsCon,insertLeaveRequestCon}