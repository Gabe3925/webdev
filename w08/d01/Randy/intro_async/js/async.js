
// Callback
setInterval(function(){
  $('#callback-message').text('Callback at' + new Date().toTimeString());
}, 1000);


//Event
$('#event-bttn')[0].addEventListener('click', function(evt){
  var date = new Date(evt.timeStamp);
  $('#event-message').text('Click event occured at ' + date.toTimeString());
});

//Promise
///////////////////////////////////////////////////
var promise1 = $.Deferred();
promise1.then(function(){
  $('#promise-bttn1').after('done.');
});

$('#promise-bttn1').on('click', function(){
  promise1.resolve();
});
///////////////////////////////////////////////////
var promise2 = $.Deferred();
promise2.then(function(){
  $('#promise-bttn2').after('done.');
});

$('#promise-bttn2').on('click', function(){
  promise2.resolve();
});


//Once all promises are resolved, then do this ....
Q.all([promise1, promise2]).then(function(){
  $('#promise-message').text('All promises resolved at:'+ new Date().toTimeString());
});
