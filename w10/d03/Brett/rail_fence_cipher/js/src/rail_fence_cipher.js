// three arrays

function encode(message) {

  var firstRow = [];
  var secondRow = [];
  var thirdRow = [];

  for (var i = 0; i < message.length; i += 4) {
    firstRow.push(message.charAt(i));
  }

  for (var i = 1; i < message.length; i += 2) {
    secondRow.push(message.charAt(i));
  }

  for (var i = 2; i < message.length; i += 4) {
    thirdRow.push(message.charAt(i));
  }

  var encryptedMessage = (firstRow.join() + secondRow.join() + thirdRow.join()).replace(/,/g, '');
  return encryptedMessage;
}
