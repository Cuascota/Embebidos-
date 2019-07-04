/*
                           UNIVERSIDAD TÉCNICA DEL NORTE 
                                    FICA-CIERCOM
HENRY CUASCOTA
EMBEBIDOS
                                        TAREA : 
        REALIZAR DOS CONTENEDORES QUE CONTENGAN LOS COLORES VERDE AMARILLO Y ROJO
*/

import controlP5.*;
ControlP5 cp5;

import processing.serial.*;
Serial port;
int on=0;
String envio;
String dato;
int cont=0;
int cx1;
int cx2;

void setup(){
size(1200,600);
background(57,198,179);

cp5 = new ControlP5(this);

cp5.addButton("CONEXION")
   .setPosition(50,50)
   .setSize(200,100)
   .setColorForeground(color(0,185,187));
   
cp5.addSlider("CONTENEDOR1")
   .setPosition(500,170)
   .setSize(50,400)
   .setNumberOfTickMarks(50);
   
cp5.addSlider("CONTENEDOR2")
   .setPosition(700,170)
   .setSize(50,400)
   .setNumberOfTickMarks(50);
   
   
textSize(25);
 fill(0);
 text("UNIVERSIDAD TÉCNICA DEL NORTE",400,45);
 text("FICA - CIERCOM",500,70);
 text("NOMBRE: Henry Cuascota",50,300);
 textSize(14);
 fill(0);
 text("CUADRO DE NIVEL DEL CONVERSOR1",900,150);
 
 textSize(14);
 fill(0);
 text("CUADRO DE NIVEL DEL CONVERSOR2",900,250);
}


void draw(){
  if(cont==1){
   if(port.available()>0){
    dato=port.readString();
    cx1=int(dato);
    cp5.getController("CONTENEDOR1").setValue(cx1);
    println(cx1);
    cx2=int(dato)+15;
    cp5.getController("CONTENEDOR2").setValue(cx2);
    println(cx2);
    
    // asignar colores al conversor 1 atraves de una condicion 
    
    if(cx1>0&&cx1<35){ // condicion para asignar color verde 
     cp5.getController("CONTENEDOR1").setColorForeground(color(31,255,0));
      fill(57,198,179);                   
       rect(900,190,90,20);              // rectangulo para borar el mensaje anterior y imprima el altual
        fill(0);                          // color
         textSize(10);                     //tamaño de letra
          text(" CX1 NIVEL BAJO",900,200);  // imprime nivel en el que se encuentra
    }
    if(cx1>35&&cx1<65) {// condicion para asignar color amarillo
     cp5.getController("CONTENEDOR1").setColorForeground(color(255,255,0));
      fill(57,198,179);
       rect(900,190,90,20);               // rectangulo para borar el mensaje anterior y imprima el altual
        fill(0);                           // color
         textSize(10);                      //tamaño de letra
          text(" CX1 NIVEL MEDIO",900,200);  // imprime nivel en el que se encuentra
    }
    if(cx1>65&&cx1<=100) {// condicion para asignar color rojo
     cp5.getController("CONTENEDOR1").setColorForeground(color(255,0,0));
      fill(57,198,179);
       rect(900,190,90,20);              // rectangulo para borar el mensaje anterior y imprima el altual
        fill(0);                          // color
         textSize(10);                     //tamaño de letra
          text(" CX1 NIVEL ALTO",900,200);  // imprime nivel en el que se encuentra
    } 
    
    
     // asignar colores al conversor 2 atraves de una condicion 
     
     
    if(cx2>0&&cx2<35){ // condicion para asignar color verde 
      cp5.getController("CONTENEDOR2").setColorForeground(color(31,255,0));
       fill(57,198,179);
        rect(900,290,90,20);             // rectangulo para borar el mensaje anterior y imprima el altual
         fill(0);                         // color
          textSize(10);                    //tamaño de letra
           text(" CX2 NIVEL BAJO",900,300); // imprime nivel en el que se encuentra
    }
    if(cx2>35&&cx2<65) {// condicion para asignar color amarillo
     cp5.getController("CONTENEDOR2").setColorForeground(color(255,255,0));
      fill(57,198,179);
       rect(900,290,90,20);              // rectangulo para borar el mensaje anterior y imprima el altual
        fill(0);                          // color
         textSize(10);                     //tamaño de letra
          text(" CX2 NIVEL MEDIO",900,300); // imprime nivel en el que se encuentra
    }
    if(cx2>65&&cx2<=100) {// condicion para asignar color rojo
     cp5.getController("CONTENEDOR2").setColorForeground(color(255,0,0));
      fill(57,198,179);
       rect(900,290,90,20);             // rectangulo para borar el mensaje anterior y imprima el altual
        fill(0);                         // color
         textSize(10);                    //tamaño de letra
          text(" CX2 NIVEL ALTO",900,300); // imprime nivel en el que se encuentra
    } 
}
  }
}
void CONEXION(){
cont=1-cont;
if(cont==1){
     port=new Serial(this,"COM5",9600);
      cp5.getController("CONEXION").setLabel("CONECTADO");
}
else {
   port.stop();
     cp5.getController("CONEXION").setLabel("DESCONECTADO");
}
}
