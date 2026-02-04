import {getPayrollDb } from "../models/payrollDb.js"

const getPayrollCon = async (req, res) => {
    res.json({payroll: await getPayrollDb()})
}

export {getPayrollCon}
