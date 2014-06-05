hogwarts/js/hogwarts.js View
...	...	
@@ -0,0 1,90 @@
 	
function Student(name, points) {
 	2	
  this.name = name;
 	3	
  this.points = points || 0;
 	4	
}
 	5	

 	6	
Student.prototype = {
 	7	

 	8	
  awardPoints: function(morepoints){
 	9	
    return this.points = this.points  morepoints;
 	10	
  },
 	11	

 	12	
  currentPoints: function(){
 	13	
    return this.points;
 	14	
  }
 	15	

 	16	
}
 	17	

 	18	
function House(housename) {
 	19	
  this.housename = housename;
 	20	
  this.students = [];
 	21	
}
 	22	

 	23	
House.prototype = {
 	24	

 	25	
  addStudent: function(name) {
 	26	
    var student = new Student(name);
 	27	
    this.students.push(student);
 	28	
    return student;
 	29	
  },
 	30	

 	31	
  getStudent: function(studname) {
 	32	
    var foundStudent = _.findWhere(this.students, {name: studname});
 	33	
    return foundStudent;
 	34	
  },
 	35	

 	36	
  getOrCreateStudent: function(name) {
 	37	
    return this.getStudent(name) || this.addStudent(name);
 	38	
  },
 	39	

 	40	
  awardPointsTo: function(name, points) {
 	41	
    var student = this.getOrCreateStudent(name);
 	42	
    student.awardPoints(points);
 	43	
    return student;
 	44	
  },
 	45	

 	46	
  getTotalPoints: function() {
 	47	
    return _.reduce(this.students, function(memo, student) {return memo  student.points;}, 0);
 	48	
  }
 	49	

 	50	
}
 	51	

 	52	
function School(schoolname){
 	53	
  this.schoolname = schoolname;
 	54	
  this.houses = [];
 	55	
}
 	56	

 	57	
School.prototype = {
 	58	

 	59	
  addHouse: function(name) {
 	60	
    var house = new House(name);
 	61	
    this.houses.push(house);
 	62	
    return house;
 	63	
  },
 	64	

 	65	
  addHouses: function() {
 	66	
    for(var i = 0; i <= arguments.length; i) {
 	67	
      var house = new House(arguments);
 	68	
      this.houses.push(house);
 	69	
      return house;
 	70	
    }
 	71	
  },
 	72	

 	73	
  getHouse: function(houseName) {
 	74	
    var foundHouse = _.findWhere(this.houses, {name: houseName});
 	75	
    return foundHouse;
 	76	
  }
 	77	

 	78	
}
 	79	

 	80	

 	81	
var bluehouse = new House("Blue House");
 	82	
var redhouse = new House("Red House");
 	83	

 	84	
var ted = bluehouse.addStudent("Ted")
 	85	
var ned = bluehouse.addStudent("Ned")
 	86	

 	87	
bluehouse.awardPointsTo("Ted", 10);
 	88	
bluehouse.awardPointsTo("Ned", 20);
 	89	

 	90	
var georgetown = new School("Georgetown");