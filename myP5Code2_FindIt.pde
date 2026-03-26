let img;
function preload() {
  img = loadImage('image.png');
}

var starXPos = [];
var starYPos = [];
var star = "🙍"; 
var starTotal = 100;

var planetXPos = [];
var planetYPos = [];
var planet = "🙋"; 
var planetTotal = 3;
var planetFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}


draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

//technically a new key pressed !?>>>>??? ------------------
   if(keyPressed){
    if(key =='e'){
      textSize(100);
      text("🇪", 0,10);
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}



var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}

var display = function(){
  background(100,100,100,40);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + planet + "s   |   " + planet + " " + planetFound + "/" + planetTotal, 0, 425);

  if(planetFound == planetTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }

//while loop ---------------------------------------------

var w = 30;
while (w < 550) {
  textSize(40);
  text("💥", w, 300);
  w += 80;
}

//for loop -----------------------------------------------

for (var f = 30; f < 550; f += 100){
  text("🗿", f, 60);
}

//new array ----------------------------------------------

textSize(30);
text (emojis[0], 30, 200);
text (emojis[1], 440, 102);
text (emojis[2], 258, 320);

}
var emojis = ["🐥", "🍅", "🎏"]

var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }
}