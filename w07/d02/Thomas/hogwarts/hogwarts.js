function Student(name, points) {
  this.name = name;
  this.points = points || 0;
}

Student.prototype = {
  awardPoints: function(awardPoints) {
    this.points += awardPoints;
  }
};


function House(name) {
  this.name = name;
  this.students = [];
}

House.prototype = {
  addStudent: function(studentName) {
    this.students.push(studentName)
    return studentName
  }
};

function School() {}
