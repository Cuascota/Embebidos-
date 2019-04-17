#include "datos.h" // matriz de entrenamiento

int col;// moverse en cumnas en la matriz
int fila=0; // moverseen filas en la matriz 
float promedio=0; //determinar las distancias entre los puntos 
float distancia; //raiz entre los puntos
float dist_menores [2][3]; //ordenar distancias menores 
int i=0;
int j;
int k=3;
float aux, aux1; // auxiliares para ordenaiento de vectores 
float num_etiquetas[2][5]; //
float datos_entrada [5]= {5.4,3.4,1.7,0.2,1};  //datos de prueba para el sistemas

void setup() {
Serial.begin(9600);
//llenar matriz dis_menores
for(;i<k;i++){
      dist_menores [0][i]=4000+i;
      dist_menores [1][i]=0;
      }
       i=0;
       for(;i<k;i++){
        num_etiquetas[0][i]=i+1;
         num_etiquetas[1][i]=0;
        }
        i=0;
    
}

void loop() {
  for(;fila<90;fila++){
    for(col=0;col<4;col++){
      promedio=promedio+pow(datos_entrada[col]-matriz[fila][col],2);
    }
    distancia= sqrt(promedio);
    promedio=0;
      if (distancia<dist_menores[0][k-1]){
          dist_menores[0][k-1]=distancia;
          dist_menores[1][k-1]=matriz[fila][4];
        }
        //rdenamiento del vector 
        for(i=0;i<k;i++){
          for(j=i+1;j<k;j++){
            if(dist_menores [0][i]>dist_menores[0][j]){
              aux =dist_menores[0][i];
              dist_menores [0][i]=dist_menores[0][j];
              dist_menores [0][j]=aux;
              // etiquetas 
              aux1 =dist_menores[1][i];
              dist_menores [1][i]=dist_menores[1][j];
              dist_menores [1][j]=aux1;
              }
              }
          }
        }
//   determinar el numero de cada etiqueta 
  for(i=0;i<k;i++){
    for(j=0;j<k;j++){
      if(num_etiquetas[0][i]==dist_menores[1][j]){
        num_etiquetas[1][i]=1+num_etiquetas[1][i];
        }
      }
    }
    Serial.println(dist_menores[1][i]);
    }
