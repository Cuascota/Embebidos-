/*
           UNIVERSIDAD TÉCNICA DEL NORTE 
                 FICA-CIERCOM
   
Henry Cuascota
Embebidos
                      Tema: 
                 Dinosaurio de google
*/
void setup(){
size(900,700); // tamaño de interfaz
background(224);   // codificacion o colores rgb, 

}

void draw(){

background(224);   // codificacion o colores rgb, 
fill(40,40,40);    // color del dinosaurio
beginShape();
// vertices para graficar el dinosaurio 
vertex(50,200); 
vertex(75,200);
vertex(75,250);
vertex(100,250);
vertex(100,275);
vertex(125,275);
vertex(125,300);
vertex(160,300);
vertex(160,275);
vertex(190,275);
vertex(190,250);
vertex(220,250);
vertex(220,225);
vertex(250,225);
vertex(250,200);
vertex(275,200);
vertex(275,75);
vertex(300,75);
vertex(300,50);
vertex(450,50);
vertex(450,75);
vertex(475,75);
vertex(475,150);
vertex(375,150);
vertex(375,175);
vertex(450,175);
vertex(450,200);
vertex(375,200);
vertex(375,250);
vertex(425,250);
vertex(425,300);
vertex(400,300);
vertex(400,275);
vertex(375,275);
vertex(375,350);
vertex(350,350);
vertex(350,385);
vertex(325,385);
vertex(325,410);
vertex(300,410);
vertex(300,500);
vertex(335,500);
vertex(335,525);
vertex(275,525);
vertex(275,450);
vertex(250,450);
vertex(250,425);
vertex(225,425);
vertex(225,450);
vertex(200,450);
vertex(200,475);
vertex(175,475);
vertex(175,500);
vertex(210,500);
vertex(210,525);
vertex(150,525);
vertex(150,425);
vertex(125,425);
vertex(125,400);
vertex(100,400);
vertex(100,375);
vertex(75,375);
vertex(75,350);
vertex(50,350);
vertex(50,200);// final de los vertices para completar el dinosaurio
endShape();

 fill(255); // color del rectangulo
 rect(325,85,20,20); // rect(x,y,ancho.largo) para el ojo
}
