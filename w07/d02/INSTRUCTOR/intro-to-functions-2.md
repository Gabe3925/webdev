# JavaScript Functions

**Learning Objectives (afternoon)**

- What is context?
- What is invocation? How is it done?
- What is prototypal inheritance?
- What are partial applications?

# 2. The Twilight Zone

## Context (*this*)

A function can indiscriminately operate upon *any* object. When a function is invoked, it is *bound* to an object on which it operates. The *contextual* object on which a function operates is referenced using the keyword `"this"`.

```
var xwing = {
	pilot: null,
	
	setPilot: function(pilot) {
		this.pilot = pilot;
		this.update();
	},
	
	update: function() {
		console.log('This X-Wing has changed!');
	}
};

xwing.setPilot("Luke Skywalker");
// >> "This X-Wing has changed!"

console.log(xwing.pilot);
// >> "Luke Skywalker"
```

## The Four Patterns of Invocation

We must *invoke* a function to run it (ie: call upon the function to do its thing). Amazingly, there are FOUR ways to invoke a function in JavaScript. This makes JS both amazingly flexible and absolutely insane.

### 1. Function invocation pattern

When a function is invoked without context, the function is bound to global scope:

```
function goBoom() {
	console.log(this);
}

goBoom();
// this === window
```

**Context**: `this` refers to the "window" object (global scope).

### 2. Method invocation pattern

When a function is defined on an object, it is said to be a *method* of the object. When a method is invoked through its host object, the method is bound to its host:

```
var deathstar = {
	goBoom: function() {
		console.log(this);
	}
};

deathstar.goBoom();
// this === deathstar
```

**Context**: `this` refers to the host object.

### 3. Call/Apply invocation pattern

Function objects have their own set of native methods, most notably are `.call` and `.apply`. These methods will invoke the function with a provided contextual object.

```
function goBoom() {
	console.log(this);	
}

var deathstar = {};
goBoom.call(deathstar);
// this === deathstar
```

**Context**: `this` refers to the passed object.

### 4. Constructor invocation pattern

Any function may act as a constructor for new object instances. New object instances may be constructed with the `"new"` keyword while invoking a function.

Constructors are very similar to Ruby class constructors, in that they represent proper nouns within our application. Therefore they should follow the convention of capitalized names:

```
function Deathstar() {
	console.log(this);
}

var deathstar = new Deathstar();
// this === shiny new Deathstar instance
```

**Context**: `this` refers to the newly-created object instance.

# 3. The Midnight Zone

## Prototypal Inheritance

**Quote Crockford:**

> In classical languages, objects are instances of classes, and a class can inherit from another class. JavaScript is a *prototypal* language, which means that objects inherit directly from other objects.

**Regarding prototypal inheritance:**

> Prototypal inheritance is conceptually simpler than classical inheritance: a new object can inherit the traits of an old object. This is perhaps unfamiliar, but it is really easy to understand. You start by making a useful object. You can then make many more objects that are like that one. The classification process of breaking an application down into a set of nested abstract classes can be completely avoided.

### Function Prototype

Functions may define a `prototype` object. When the constructor pattern creates a new object instance, the constructor function's prototype object is bestowed upon the newly created object instance. This new object instance can perform all the actions of its assigned prototype.

```
function Deathstar() {
	console.log('New Deathstar');
}

Deathstar.prototype = {
	isLethal: true,
	attack: function() {
		// do stuff...
	},
	deathray: function() {
		// do stuff...
	}
};

var ds = new Deathstar();

console.log(ds.isLethal); // << true
ds.attack();
```

### Shared Prototypes

At a glance, prototypal inheritance looks similar to classical inheritance in that objects built from the same prototype have the same methods. However, it's more nuanced than that: objects built from the same prototype literally --DO-- have the same methods, because they're actually both referencing the same prototype object with their method definitions.

```
function Beeper() {
	// do stuff...
}

Beeper.prototype = {
	beep: function() {
		// do stuff...
	}
};

var a = new Beeper();
var b = new Beeper();
console.log(a.beep === b.beep); // << true 
```

When a constructor function builds a new object instance, it's really just creating an empty object that references the constructor function's prototype.

### Shared Prototype Data

A common mistake is sharing instance-specific data structures at the prototype level, at which time the data is shared between all object instances.

```
function ShoppingList() {}

ShoppingList.prototype = {
	list: [],
	
	addItem: function(item) {
		this.list.push(item);
	}
};

var pat = new ShoppingList();
var bob = new ShoppingList();

pat.addItem('eggs');
console.log( pat.list.length ); // << 1
console.log( bob.list.length ); // << 1???
```

The solution is to configure instance-specific data structures in the constructor function, like so:

```
function ShoppingList() {
	this.list = [];
}

ShoppingList.prototype = {
	addItem: function(item) {
		this.list.push(item);
	}
};

var pat = new ShoppingList();
var bob = new ShoppingList();

pat.addItem('eggs');
console.log( pat.list.length ); // << 1
console.log( bob.list.length ); // << 0
```

### Prototype Chains

When data is requested from an object instance, that object is checked for the requested data; if it doesn't posess that data, then its prototype is searched.

Keep in mind that prototypes are also just objects, so the same rules apply. In this way, *prototype chains* are formed, where a series of linked prototypes together provide an object with its full behavior.

```
function Fruit(name) {
	this.name = name;
}

function Banana() {}
Banana.prototype = new Fruit('banana');

function Coconut() {}
Coconut.prototype = new Fruit('coconut');

var b = new Banana();
console.log(b.name);
```

Given that objects utilize the methods of other objects as their own, we should start to understand some of the rationale behind contextual invocation rules.

## Super/Mixin methods

In the event that a method overrides another method or legerages the behavior of another object's method, the alternate method behavior can be applied to the object.

We'll start to need this pattern as we get into Backbone.

```
function Fruit(name) {
	this.name = name;
}

Fruit.prototype = {
	eat: function() {
		// Do stuff...
	}
};

function Banana() {}
Banana.prototype = {
	eat: function() {
		// Do stuff specific to Banana...
		return Fruit.prototype.eat.apply(this, arguments);
	}
};
```

# 4. The Abyss

## Public vs. Private

JavaScript has no formal language construct for public and private members. However we can achieve the same results by hiding data within a closure that returns a public interface object.

In the example below, the methods of the public interface object retain all privilaged data from the closure in which they were created, while not exposing that privilaged data to the rest of the application.

```
function Person() {
	var firstName = "Beep";
	var lastName = "Beeperson";
	var age = 25;
	var ssNumber = 000112222;
	 
	return {
		isLoggedIn: false,
		
		name: function() {
			return firstName +' '+ lastName;
		},
		
		age: function() {
			return age;
		},
		
		completeForm: function(form) {
			// Beep will accept a form to put their SS# into...
		}
	};
}

// Create a person…
var person = new Person();

person.isLoggedIn = true;
person.name();
```

## Partial Applications

When a function accepts arguments, they are stored within its scope and made accessible to its nested functions, or members. If a nested members is returned back out of its parent function, the returned member retains the data from the scope in which it was created. This allows a functions to create *partial applications*, where the a returned function is partially configured to perform a custom task.

```
function multiplyFactory(base) {
	return function(n) {
		return base + n;
	}
}

// Get a multiply-by-ten function:
var multiplyByTen = multiplyFactory(10);


multiplyByTen(5); // 50
multiplyByTen(75); // 750
```

# 5. The Trenches

See [JavaScript, The Good Parts](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742).
