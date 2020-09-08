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
}

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
      })

    }else if (answer.view === "role") {
        connection.query("SELECT * FROM role", function (err, data) {
          console.table(data);
        })

      }else if (answer.view === "employee") {
        connection.query("SELECT * FROM employee", function (err, data) {
          console.table(data);
        })

  }})
};

function update() {
  inquirer.prompt({
    name: "update",
    type: "list",
    message: "Which table would you like to update?",
    choices: ["department", "role", "employee"]
  })
  .then(function(answer) {
    if (answer.view === "department") {
      updateDepartment();
      } else if (answer.view === "role") {
        updateRole();
        }else if (answer.view === "employee") {
       updateEmployee();

  }})

};

updateDepartment() { 
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
  }})

};