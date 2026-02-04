import {getLeaveRequestsDb, insertLeaveRequestsDb, updateLeaveRequestDb } from "../models/leaveRequestDb.js"

const getLeaveRequestsCon = async (req, res) => {
    res.json({leave_request: await getLeaveRequestsDb()})
}



const insertLeaveRequestCon = async (req, res) => {
    let {date,status,reason, employee_id} = req.body
    await insertLeaveRequestsDb(date,status,reason,employee_id)
    res.json({leave_requests: await getLeaveRequestsDb()})
}


const updateLeaveRequestCon = async (req, res) => {
    let {leave_request_id, employee_id} = req.params
    let updates = req.body
    await updateLeaveRequestDb(leave_request_id, updates, employee_id)
    res.json({leave_request: await getLeaveRequestsDb()})
}
export {getLeaveRequestsCon,insertLeaveRequestCon, updateLeaveRequestCon}