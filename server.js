var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "#Blessup2020",
  database: "company_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  intro();
});

// function which prompts the user for what action they should take
function intro() {
  inquirer
    .prompt({
      name: "intro",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "View company database", 
      "Update company database",
       ]
    })
    .then(function(answer) {
      
      if (answer.intro === "View company database") {
        view();
      }
      else if(answer.intro === "Update company database") {
        update();
      } 
    });
};

function view() {
  inquirer.prompt({
    name: "view",
    type: "list",
    message: "Which table would you like to view?",
    choices: ["department", "role", "employee"]
  })
  .then(function(answer) {
    if (answer.view === "department") {
      connection.query("SELECT * FROM department", function (err, data) {
        console.table(data);
        return
      })

    }else if (answer.view === "role") {
        connection.query("SELECT * FROM role", function (err, data) {
          console.table(data);
          return
        })

      }else if (answer.view === "employee") {
        connection.query("SELECT * FROM employee", function (err, data) {
          console.table(data);
          return
        })

  }});
};

function update() {
  inquirer.prompt({
    name: "update",
    type: "list",
    message: "What would you like to do?",
    choices: ["Add new department", "Add new role", "Add new employee", "Update employee role"]
  })
  .then(function(answer) {
    if (answer.update === "Add new department") {
      newDepartment()
      } else if (answer.update === "Add new role") {
        newRole()
        }else if (answer.update === "Add new employee") {
       newEmployee() 
        }else if (answer.update === "Update employee role") {
        updateEmployee() 
    }});

};

function newDepartment() {
    inquirer.prompt([
  {
    name: "newid",
    type: "input",
    message: "What is the ID of the new department would you like add to add?"
  },

  {
    name: "newdept",
    type: "input",
    message: "What is the name of the new department would you like add to add?"
 }
])
  .then(function(response) {
    connection.query("INSERT INTO department (department_id, name) values (?, ?)", [response.newid, response.newdept], function (err, data) {
      console.table(data);
    })
  });

};

function newRole() {
  inquirer.prompt([
    {
      name: "roleid",
      type: "input",
      message: "What is the ID of the new role would you like add to add?"
    },
  
    {
      name: "title",
      type: "input",
      message: "What is the title of the new role would you like add to add?"
   },
   {
    name: "salary",
    type: "input",
    message: "What is the salary of the new role would you like add to add?"
 },
 {
  name: "deptid",
  type: "input",
  message: "What is the department ID of the new role would you like add to add?"
}
   
  ])
    .then(function(response) {
      connection.query("INSERT INTO role (role_id, title, salary, department_id) values (?, ?, ?, ?)", [response.roleid, response.title, response.salary, response.deptid], function (err, data) {
        console.table(data);
      })
    });
};

function newEmployee() {
  inquirer.prompt([
    {
      name: "empid",
      type: "input",
      message: "What is the ID of the new employee would you like add to add?"
    },
  
    {
      name: "firstname",
      type: "input",
      message: "What is the first name of the new role would you like add to add?"
   },
   {
    name: "lastname",
    type: "input",
    message: "What is the last name of the new employee would you like add to add?"
 },
 {
  name: "roleid",
  type: "input",
  message: "What is the role ID of the new employee would you like add to add?"
},
{
  name: "managerid",
  type: "input",
  message: "What is the employee ID of this employee's manager?"
}
   
  ])
    .then(function(response) {
      connection.query("INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id) values (?, ?, ?, ?, ?)", [response.empid, response.firstname, response.lastname, response.roleid, response.managerid], function (err, data) {
        console.table(data);
      })
    });
};

function updateEmployee() {
  
  inquirer.prompt([
  {
    name: "currentempid",
    type: "number",
    message: "What is the employee ID of the employee receiving a new role ID?"

  },

  {
    name: "newroleid",
    type: "number",
    message: "What is the new role ID of this employee?"
 }
])
  .then(function(response) {
    connection.query("UPDATE employee WHERE emp_id = ? SET role_id = ? values (?, ?)", [response.currentempid, response.newroleid], function (err, data) {
      console.table(data);
    })
  });

};
