import { pool } from "../pool.js"

const getEmployeesDb = async () => {
    let [data] = await pool.query('SELECT * FROM employees')
    return data
}
const insertEmployeesDb = async (
  name,
  position,
  department,
  salary,
  employmentHistory,
  contact
) => {
  const [data] = await pool.query(
    `INSERT INTO employees 
     (name, position, department, salary, employmentHistory, contact)
     VALUES (?, ?, ?, ?, ?, ?)`,
    [name, position, department, salary, employmentHistory, contact]
  )
  return data
}


const updateEmployeesDb = async (employee_Id, updates) => {
  const fields = []
  const values = []

  if (updates.name) {
    fields.push("name = ?")
    values.push(updates.name)
  }

  if (updates.position) {
    fields.push("position = ?")
    values.push(updates.position)
  }
  if (updates.department) {
    fields.push("department = ?")
    values.push(updates.department)
  }

  if (updates.salary) {
    fields.push("salary = ?")
    values.push(updates.salary)
  }
  if (updates.employmentHistory) {
    fields.push("employmentHistory = ?")
    values.push(updates.employmentHistory)
  }

  if (updates.contact) {
    fields.push("contact = ?")
    values.push(updates.contact)
  }


  if (fields.length === 0) return

  values.push(employee_Id)

  const query =  `
    UPDATE employees 
    SET ${fields.join(", ")} 
    WHERE (employee_Id = ?);
    `
  await pool.query(query, values)
}

const deleteEmployeeDb = async (employee_Id) =>{
    let [data] = await pool.query('DELETE FROM `employees` WHERE (`employee_Id` = ?);', [employee_Id])
    return data
}

export {getEmployeesDb, insertEmployeesDb, updateEmployeesDb, deleteEmployeeDb}