void setup(){
  size(1000,1000,P3D);
  camera(80,80,0,0,0,-30,0,0,-1);
  noStroke();
}

void draw(){
  background(255);
  
  pushMatrix();
  pushMatrix();
  pushMatrix();
  pushMatrix();
  pushMatrix();
  pushMatrix();
  pushMatrix();
  pushMatrix();
  pushMatrix();
  translate(0,0,0);
  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif1;
    }
    if(key == 'B'){
      angle0 = angle0 - dif1;
    }
    if(a1 <= 1.0){
    if(key == 'h'){
      a1 = a1 + dif2;
    }
    }
    if(a1 >= -3.0){
    if(key == 'H'){
      a1 = a1 - dif2;
    }
    }
    if(a2 <= 1){
    if(key == 't'){
      a2 = a2 + dif2;
    }
    }
    if(a2 >= -8.5){
    if(key == 'T'){
      a2 = a2 - dif2;
    }
    }
    if(key == 'm'){
      a1= sin(radians(angle0/2));
      a2= (-angle2*angle2/3240)+(angle2/9)-10;
      angle0 += 1.0;
      angle2 = angle0%360;
    }
  }
  
  fill(0);
  
  for(i=1;i<5;i+=1){
    popMatrix();
    rotateZ(radians(90*i));
    translate(pillarD-pillarB1/2,0,-pillarH/2);
    box(pillarB1,pillarB1,pillarH);
    translate(pillarB1/2,0,-7*pillarH/16);
    box(pillarB2,pillarB1,pillarH/8);
  }
  
  
  for(j=1;j<5;j+=1){
    popMatrix();
    rotateZ(radians(90*j));
    translate(pillarD/2,0,0);
    box(pillarD,pillarB1,pillarB1);
  }
  
  
  popMatrix();
  translate(0,0,a1);
  rotateZ(radians(angle0));
  box(armB,armB,armL1);
  
  translate(armL2/2-armB/2+a2,0,-armL1/2);
  box(armL2,armB,armB);
  translate(armL2/2-armB/2,0,-armL3/2);
  rotateZ(radians(-angle1));
  box(armB,armB,armL3);
  translate(armB,0,-armL3/2+armB/2);
  box(armB,armB,armB);
  
  fill(180);
  translate(0,0,-ladleH/2+4);
  box(2*armB/3,2*armB/3,ladleH);
  translate(ladleB/2-armB/3,0,-ladleH/2);
  box(ladleB,ladleB,ladleDe);

  
}
