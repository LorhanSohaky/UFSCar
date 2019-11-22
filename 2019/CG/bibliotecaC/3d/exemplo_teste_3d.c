#include "cg3d.h"

/*
	Para executar:
	gcc -c cg2d.c
        gcc -c cg3d.c
        gcc exemplo_teste_3d.c -o exemplo_teste_3d cg3d.o cg2d.o -lm
	./exemplo_teste_3d&
        ./view
*/

int main(void) {
 face * f1, * f2, * f3, * f4, * f5;
 object3d * objeto, * ob;
 point3d * Normal, * ViewUp, * Observador;
 object * faces;
 
 palette * palheta;
 bufferdevice * dispositivo;
 window * janela;
 viewport * porta;
 
 float zcp, zpp;
 
 palheta = CreatePalette(6);
 SetColor(0,0,0,palheta);
 SetColor(1,1,1,palheta);
 SetColor(1,1,0,palheta);
 SetColor(1,0,0,palheta);
 SetColor(0,1,0,palheta);
 SetColor(0,0,1,palheta);
 
 f1 = CreateFace(3);
 SetPointFace(10.0,10.0,0.0,5,f1);
 SetPointFace(10.0,0.0,15.0,5,f1);
 SetPointFace(10.0,-10.0,0.0,5,f1);
 
 f2 = CreateFace(3);
 SetPointFace(-10.0,10.0,0.0,5,f2);
 SetPointFace(-10.0,0.0,15.0,5,f2);
 SetPointFace(-10.0,-10.0,0.0,5,f2);
 
 f3 = CreateFace(4);
 SetPointFace(10.0,10.0,0.0,3,f3);
 SetPointFace(10.0,0.0,15.0,3,f3);
 SetPointFace(-10.0,0.0,15.0,3,f3);
 SetPointFace(-10.0,10.0,0.0,3,f3); 

 f4 = CreateFace(4);
 SetPointFace(10.0,0.0,15.0,4,f4);
 SetPointFace(10.0,-10.0,0.0,4,f4);
 SetPointFace(-10.0,-10.0,0.0,4,f4);
 SetPointFace(-10.0,0.0,15.0,4,f4); 

 f5 = CreateFace(4);
 SetPointFace(10.0,10.0,0.0,5,f5);
 SetPointFace(10.0,-10.0,0.0,5,f5);
 SetPointFace(-10.0,-10.0,0.0,5,f5);
 SetPointFace(-10.0,10.0,0.0,5,f5);
 
 objeto = CreateObject3D(5);
 SetObject3D(f1,objeto);
 SetObject3D(f2,objeto);
 SetObject3D(f3,objeto);
 SetObject3D(f4,objeto);
 SetObject3D(f5,objeto);

 Normal = SetNormal(-1, 0, 0);
 ViewUp = SetViewUp(0, 1, 0);
 Observador = SetObserver(5, 0, 0);
 
 ob = ConvertObjectBase(Normal,ViewUp,Observador,objeto);
 
 //faces = ParalProjFaces(ob);
 zpp = 0.0;
 zcp = -60.0;
 faces = PerspProjFaces(ob,zpp,zcp);

 janela = CreateWindow(-30,-30,30,30);
 dispositivo = CreateBuffer(640,480);
 porta = CreateViewPort(0, 0, 639, 479);
 
 DrawObject(&faces[0],janela,porta,dispositivo,5);
 DrawObject(&faces[1],janela,porta,dispositivo,5);
 DrawObject(&faces[2],janela,porta,dispositivo,3);
 DrawObject(&faces[3],janela,porta,dispositivo,5);
 DrawObject(&faces[4],janela,porta,dispositivo,5);

 Dump2PIPE(dispositivo,palheta);

 return 0; 
 }

