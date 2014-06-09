var canvas, ctx;
var data;
var player;

window.onload = function main() {

  canvas = document.createElement('canvas');
  canvas.width = canvas.height = 3*120 + 20;
  ctx = canvas.getContext('2d');

  document.body.appendChild(canvas);

  canvas.addEventListener('mousedown', mouseDown);

  init();
  tick();

}



function init() {

  if (data == null) {
    data = [];

    for (var i = 0; i < 9; i++) {
      var x = (i % 3)*120 + 20;
      var y = Math.floor(i/3)*120 + 20;
      data.push(new Tile(x, y));
    }
  }

  player = Tile.NOUGHT;

}

function tick() {
  window.requestAnimationFrame(tick);

  update();
  render();
}

function update() {
  for (var i = data.length; i--;) {
    data[i].update();
  }
}

function render() {
ctx.clearRect(0, 0, canvas.width, canvas.height);

  for (var i = data.length; i--;) {
    data[i].draw(ctx);
  }

}

function mouseDown(event) {
  var el = event.target;

  var posX = event.clientX - el.offsetLeft;
  var posY = event.clientY - el.offsetTop;

  if (posX % 120 >= 20 && posY % 120 >= 20) {
    var idx = Math.floor(posX/120);
    idx += Math.floor(posY/120)*3;

    if (data[idx].hasData()) {
      return;
    }
    data[idx].flip(player);
    player = player == Tile.NOUGHT ? Tile.CROSS :  Tile.NOUGHT;
  }
}

function Tile(x, y) {

  var x = x, y = y;

  var tile = Tile.BLANK;
  var anim = 0;

  if (tile == null) {

    var _c = document.createElement('canvas');
    _c.width = _c.height = 100;
    _ctx = _c.getContext('2d');

    _ctx.fillStyle = 'skyblue';
    _ctx.lineWidth = 4;
    _ctx.strokeStyle = 'white';
    _ctx.lineCap = 'round';

    // blank

    _ctx.fillRect(0, 0, 100, 100);
    Tile.BLANK = new Image();
    Tile.BLANK.src = _c.toDataURL();

    // nought
    _ctx.fillRect(0, 0, 100, 100);

    _ctx.beginPath();
    _ctx.arc(50, 50, 30, 0, 2*Math.PI);
    _ctx.stroke();

    Tile.NOUGHT = new Image();
    Tile.NOUGHT.src = _c.toDataURL();

    tile = Tile.NOUGHT;

    // cross
    _ctx.fillRect(0, 0, 100, 100);

    _ctx.beginPath();
    _ctx.moveTo(20, 20);
    _ctx.lineTo(80, 80);
    _ctx.moveTo(80, 20);
    _ctx.lineTo(20, 80);
    _ctx.stroke();

    Tile.CROSS = new Image();
    Tile.CROSS.src = _c.toDataURL();

    tile = Tile.BLANK;

  }

  this.hasData = function() {
    return tile !== Tile.BLANK;
  }

  // animate the flip

  this.flip = function(next) {
    tile = next;
    anim = 1;
  }

  this.update = function() {

    if(anim > 0) {
      anim -= 0.02;
    }

  }

  this.draw = function(ctx) {
    if (anim <= 0) {
      ctx.drawImage(tile, x, y);
      return;
    }

    var res = 2;
    var t = anim > 0.5 ? Tile.BLANK : tile;
    var p = -Math.abs(2*anim - 1) + 1;

    for (var i = 0; i < 100; i += res) {
      var j = 50 - (anim > 0.5 ? 100 - i : i);
      ctx.drawImage(t, i, 0, res, 100,
          x + i - p*i + 50*p,
          y - j*p*0.2,
          res,
          100 + j*p*0.4
        );
    }

  }


}
