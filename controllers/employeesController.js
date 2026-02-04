import {deleteEmployeeDb, getEmployeesDb, insertEmployeesDb, updateEmployeesDb } from "../models/employeesDb.js"

const getEmployeesCon = async (req, res) => {
    res.json({employees: await getEmployeesDb()})
}
const insertEmployeesCon = async (req, res) => {
    let {name, position, department, salary, employmentHistory, contact} = req.body
    await insertEmployeesDb(name, position, department, salary, employmentHistory, contact)
    res.json({employees: await getEmployeesDb()})
}

const updateEmployeesCon = async (req, res) => {
    let {employee_Id} = req.params
    let updates = req.body
    await updateEmployeesDb(employee_Id, updates)
    res.json({employees: await getEmployeesDb()})
}

const deleteEmployeeCon = async (req, res) => {
    let {employee_Id} = req.params
    await deleteEmployeeDb(employee_Id)
    res.json({employees: await getEmployeesDb()})
}
export {getEmployeesCon, insertEmployeesCon, updateEmployeesCon, deleteEmployeeCon}

