
   /* 
   Autor: Murillo Rodrigo Petrucelli Homem
   Departamento de Computação
   Universidade Federal de São Carlos

   Código ilustrativo (esboço) de uma pequena biblioteca gráfica bidimensional

   Para gerar o código objeto, digite no prompt "gcc -c cg2d.c"
   */

#include <math.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>


/* Exemplo de estruturas de dados para a 
   biblioteca de funções gráficas em C, considerando 
   o plano como referência para o mundo */

// Variáveis globais que determinam o tamanho do Universo no SRU
float XWMin, YWMin, XWMax, YWMax;

// Janela de visualização definida no SRU
typedef struct Window {
  float xmin,
        xmax,
        ymin,
        ymax;
        } window;
 
// Porta de visualização (viewport) definida no SRD     
typedef struct ViewPort {
  int xmin,
      ymin,
      xmax,
      ymax;
      } viewport;

// Estrutura de dados para um ponto no plano (SRU 2D) com 
// uma componente homogênea (w != 0)
typedef struct HPoint2D {
  float x,
        y,
        w;
  int   color;
  } point;
 
// Estrutura de dados para um objeto (polígono) no 
// plano (SRU 2D)     
typedef struct Object2D {
  int numbers_of_points;
  point * points;
  } object;

// Estrutura de dados para uma componente de cor no 
// modelo aditivo RGB
typedef struct Color {
  float red,
        green,
        blue;
  } ColorValues;
  
// Paleta de cores (colormap)    
typedef struct Palette {
  int numbers_of_colors;
  ColorValues * colors;
  } palette;

// Estrutura de dados para uma grade bidimensional de 
// entradas que corresponde ao SRD
typedef struct Buffer {
  int MaxX,
      MaxY;
  int * buffer;
  } bufferdevice;

// Estrutura para uma matriz homogênea para operações
// lineares no plano - SRU
typedef struct HMatrix2D {
  float a11, a12, a13,
        a21, a22, a23,
        a31, a32, a33;
  } matrix;

/* Determina os limites do mundo */
void SetWorld(float, float, float, float);

/* cria pontos e objetos no mundo */
point * SetPoint(float, float, float, int);
object * CreateObject(int);
int SetObject(point *, object *);

/* Funções para criar e gerenciar uma 
   paleta e cores */
palette * CreatePalette(int);
int SetColor(float, float, float, palette *);
ColorValues * GetColor(int, palette *);

/* Sistemas de referências, janelas e viewports */
window * CreateWindow(float, float, float, float);
viewport * CreateViewPort(int, int, int, int);
point * Sru2Srn(point *, window *);
point * Srn2Srd(point *, viewport *);
bufferdevice * CreateBuffer(int, int);

/* Funções para conversão matricial e preenchimento de objetos */
int DrawViewPort(viewport *, bufferdevice *, int);
int DrawLine(point *, point *, window *, viewport *, bufferdevice *, int);
int DrawObject(object *, window *, viewport *, bufferdevice *, int);

/* Construção das matrizes homogêneas para as operações lineares */
matrix * SetRotMatrix(float);
matrix * SetSclMatrix(float, float);
matrix * SetSftMatrix(float, float);
matrix * SetCisMatrix(float, float);
point * LinearTransf(matrix *, point *);
matrix * ComposeMatrix(matrix *, matrix *);

/* Operações lineares sobre objetos no SRU 2D */
object * TransObj(object *, matrix *);

/* Visualiza o buffer (SRD) no monitor virtual */
int Dump2PIPE(bufferdevice *, palette *);


