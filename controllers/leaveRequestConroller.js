import {getLeaveRequestsDb } from "../models/leaveRequestDb.js"

const getLeaveRequestsCon = async (req, res) => {
    res.json({leave_request: await getLeaveRequestsDb()})
}

export {getLeaveRequestsCon}

