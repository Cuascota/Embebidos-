#include "datos.h"
float datos_entrada [5]= {5.4,3.4,1.7,0.2,1};  
int col;
int fila=0;

float promedio;
float distancia;
int k=3;
float dist_menores [2][k];
int i=0;
float aux;
int j=0;
float aux1;

void setup() {
  Serial.begin(9600);
  for(;i<k;i++){
    dist_menores [0][i]=400+i;  // aumentar uno auno con el contador i
    dist_menores [1][i]=0; 
    }
    i=0;
}

void loop() {
  // put your main code here, to run repeatedly:
  for(;fila<90;fila++){
  for(col=0;col<4;col++){
  promedio=promedio+(pow(datos_entrada[col]-matriz[col[][fila],2));
  }
  distancia=sqrt(promedio);
  promedio=0;


  if (distancia<dist_menores[0][k-1])
  dist_menores[0][k-1]=distancia;

  for(;i<k;i++){
    
  for(j=i+1;j<k;j++){
    if (dist_menores[0][i]>dist_menores[0][j])
    aux =dist_menores[0][i];
    dist_menores[0][i]=dist_menores[0][j];
    dist_menores[0][j]=aux;
    // etiquetas
    aux1 =dist_menores[1][i];
    dist_menores[1][i]=dist_menores[1][j];
    dist_menores[1][j] = aux1;
  }
}
  }
}  //// completar determinar la mayor de las etiquetas 
 
