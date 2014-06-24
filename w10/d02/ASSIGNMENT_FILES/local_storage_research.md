## Intro to Local Storage

As we do dive into building client-heavy applications, we're going to start thinking about how and where we store our data. In doing so, we'll make use of local storage, introduced in HTML5. Take the next 10 minutes to research local storage, answering the questions below. 

- What is local storage?
  - Answer:
- What problem does it solve?
  - Answer:
- What are the alternatives?
  - Answer:
- Come up with three scenarios in which localStorage would be useful.
    - Example 1:
    - Example 2:
    - Example 3:

__Let's set up some local storage on http://en.wikipedia.org/wiki/Bee_Thousand__

```javascript
localStorage["kickerOfElves"] = "Robert Pollard";

// let's retrieve that value to make sure it worked
localStorage["kickerOfElves"] // => "Robert Pollard"
```

__Cool, but what if we move to another website like ESPN. Is kickerOfElves still available to us?__

```javascript
localStorage["kickerOfElves"] // => undefined
```

__No, it is not. So we've established that the values in localStorage are site-specific. What if we leave the Bee Thousand Wikipedia entry and come back to it?__

```javascript
// http://en.wikipedia.org/wiki/Bee_Thousand
localStorage["kickerOfElves"] // => undefined
```

