/*
Autor: Murillo Rodrigo Petrucelli Homem
Departamento de Computação
Universidade Federal de São Carlos
*/
#include "cg3d.h"

#include<math.h>

point3d * VectorProduct3d(point3d * u, point3d * v) {
 point3d * w;
 w = (point3d *) malloc(sizeof(point3d));
 
/* 
 i  j  k
 u1 u2 u3       u2v3i + u3v1j + u1v2k - u2v1k - u3v2i - u1v3j = (u2v3 - u3v2)i + (u3v1 - u1v3)j + (u1v2 - u2v1)k 
 v1 v2 v3
 */ 

 w->x = (u->y)*(v->z) - (u->z)*(v->y);
 w->y = (u->z)*(v->x) - (u->x)*(v->z);
 w->z = (u->x)*(v->y) - (u->y)*(v->x);

 w->w = 1;
 
 w->color = 1;
 
 return w;
 }
 
float Modulo3d(point3d * u) {
 return (sqrt(((u->x)*(u->x))+((u->y)*(u->y))+((u->z)*(u->z))));
 }

point3d * Versor3d(point3d * u) {
 point3d * w;
 float modulo = Modulo3d(u);
 w = (point3d *) malloc(sizeof(point3d));

 w->x = (u->x) / modulo;
 w->y = (u->y) / modulo; 
 w->z = (u->z) / modulo;

 w->w = 1;
 
 w->color = 1;
 
 return w;
 }
 
face * CreateFace(int numbers_of_points) {
  face * fob;
 
  fob = (face *) malloc(sizeof(face));
  fob->numbers_of_points = 0;
  fob->points = (point3d *) malloc(numbers_of_points*sizeof(point3d));
 
  return fob;
  }

int SetPointFace(float x, float y, float z, int color, face * fc) {
  point3d * pnt;

  pnt = (point3d *) malloc(sizeof(point3d));
  pnt->x = x;
  pnt->y = y;
  pnt->z = z;
  pnt->w = 1.0;
  pnt->color = color;
  fc->points[fc->numbers_of_points] = *pnt;
  fc->numbers_of_points = fc->numbers_of_points + 1;

  return 0;
  }

point3d * SetNormal(float x, float y, float z) {
  point3d * w;

  w = (point3d *) malloc(sizeof(point3d));
  w->x = x;
  w->y = y;
  w->z = z;
  w->w = 1;

  w = Versor3d(w);

  return w;
  }

point3d * SetViewUp(float x, float y, float z) {
  point3d * vu;

  vu = (point3d *) malloc(sizeof(point3d));
  vu->x = x;
  vu->y = y;
  vu->z = z;
  vu->w = 1;

  vu = Versor3d(vu);

  return vu;
  }

point3d * SetObserver(float x, float y, float z) {
  point3d * ov;

  ov = (point3d *) malloc(sizeof(point3d));
  ov->x = x;
  ov->y = y;
  ov->z = z;
  ov->w = 1;

  return ov;
  }

object3d * CreateObject3D(int numbers_of_faces) {
  object3d * ob;
 
  ob = (object3d *) malloc(sizeof(object3d));
  ob->numbers_of_faces = 0;
  ob->faces = (face *) malloc(numbers_of_faces*sizeof(face));
 
  return ob;
  }

int SetObject3D(face * fc, object3d * ob) {
  ob->faces[ob->numbers_of_faces] = *fc;
  ob->numbers_of_faces = ob->numbers_of_faces + 1;

  return 0;
  }

matrix3d *gerarMatrizDeDeslocamento(const float dX, const float dY, const float dZ) {
  matrix3d * p;
  p = (matrix3d *) malloc(sizeof(matrix3d));
  p->a11 = 1;
  p->a12 = 0;
  p->a13 = 0;
  p->a14 = dX;

  p->a21 = 0;
  p->a22 = 1;
  p->a23 = 0;
  p->a24 = dY;

  p->a31 = 0;
  p->a32 = 0;
  p->a33 = 1;
  p->a34 = dZ;

  p->a41 = 0;
  p->a42 = 0;
  p->a43 = 0;
  p->a44 = 1;
  
  return p;
}

matrix3d *gerarMatrizDeEscala(const float sX, const float sY, const float sZ) {
  matrix3d * p;
  p = (matrix3d *) malloc(sizeof(matrix3d));
  p->a11 = sX;
  p->a12 = 0;
  p->a13 = 0;
  p->a14 = 0;

  p->a21 = 0;
  p->a22 = sY;
  p->a23 = 0;
  p->a24 = 0;

  p->a31 = 0;
  p->a32 = 0;
  p->a33 = sZ;
  p->a34 = 0;

  p->a41 = 0;
  p->a42 = 0;
  p->a43 = 0;
  p->a44 = 1;
  
  return p;
}

matrix3d *gerarMatrizDeProjecaoPerspectiva(const float Zvp, const float Zcp) {
  matrix3d * p;
  p = (matrix3d *) malloc(sizeof(matrix3d));
  p->a11 = 1;
  p->a12 = 0;
  p->a13 = 0;
  p->a14 = 0;

  p->a21 = 0;
  p->a22 = 1;
  p->a23 = 0;
  p->a24 = 0;

  p->a31 = 0;
  p->a32 = 0;
  p->a33 = Zvp / (Zvp-Zcp);
  p->a34 = (-Zvp*Zcp) / (Zvp-Zcp);

  p->a41 = 0;
  p->a42 = 0;
  p->a43 = 1 / (Zvp-Zcp);
  p->a44 = -Zcp / (Zvp-Zcp);
  
  return p;
}

matrix3d *gerarMatrizDeRotacao(const float angulo,const EIXO eixoDeRotacao) {
  matrix3d * p;
  p = (matrix3d *) malloc(sizeof(matrix3d));

  switch(eixoDeRotacao) {
    case X:
      p->a11 = 1;
      p->a12 = 0;
      p->a13 = 0;
      p->a14 = 0;

      p->a21 = 0;
      p->a22 = cos(angulo);
      p->a23 = -sin(angulo);
      p->a24 = 0;

      p->a31 = 0;
      p->a32 = sin(angulo);
      p->a33 = cos(angulo);
      p->a34 = 0;

      p->a41 = 0;
      p->a42 = 0;
      p->a43 = 0;
      p->a44 = 1;
      break;
    case Y:
      p->a11 = cos(angulo);
      p->a12 = 0;
      p->a13 = sin(angulo);
      p->a14 = 0;

      p->a21 = 0;
      p->a22 = 1;
      p->a23 = 0;
      p->a24 = 0;

      p->a31 = -sin(angulo);
      p->a32 = 0;
      p->a33 = cos(angulo);
      p->a34 = 0;

      p->a41 = 0;
      p->a42 = 0;
      p->a43 = 0;
      p->a44 = 1;
      break;
    case Z:
    default:
      p->a11 = cos(angulo);
      p->a12 = -sin(angulo);
      p->a13 = 0;
      p->a14 = 0;

      p->a21 = sin(angulo);
      p->a22 = cos(angulo);
      p->a23 = 0;
      p->a24 = 0;

      p->a31 = 0;
      p->a32 = 0;
      p->a33 = 1;
      p->a34 = 0;

      p->a41 = 0;
      p->a42 = 0;
      p->a43 = 0;
      p->a44 = 1;
      break;
  }
  
  return p;
}

point3d * LinearTransf3d(matrix3d * W, point3d * u) {
 point3d * p;
  
 p = (point3d *) malloc(sizeof(point3d));
  
 p->x = W->a11*u->x + W->a12*u->y + W->a13*u->z + W->a14*u->w;
 p->y = W->a21*u->x + W->a22*u->y + W->a23*u->z + W->a24*u->w;
 p->z = W->a31*u->x + W->a32*u->y + W->a33*u->z + W->a34*u->w;
 p->w = W->a41*u->x + W->a42*u->y + W->a43*u->z + W->a44*u->w;
 
 p->color = u->color;
  
 return p;  
 }

object3d * ConvertObjectBase(point3d * w, point3d * vu, point3d * ov, object3d * ob) {
 matrix3d * H;
 object3d * mob;
 point3d * p0, * p1, * u, * v;
 int numbers_of_points, numbers_of_faces;

 u = VectorProduct3d(vu,w);
 u = Versor3d(u);
 v = VectorProduct3d(u,w);

 H = (matrix3d *) malloc(sizeof(matrix3d));
 H->a11 = u->x; H->a12 = u->y; H->a13 = u->z; H->a14 = ov->x;
 H->a21 = v->x; H->a22 = v->y; H->a23 = v->z; H->a24 = ov->y;
 H->a31 = w->x; H->a32 = w->y; H->a33 = w->z; H->a34 = ov->z;
 H->a41 = 0;    H->a42 = 0;    H->a43 = 0;    H->a44 = 1;
  
 p0 = (point3d *) malloc(sizeof(point3d));
 p1 = (point3d *) malloc(sizeof(point3d));
 
 mob = (object3d *) malloc(sizeof(object3d));
 mob->numbers_of_faces = ob->numbers_of_faces;
 mob->faces = (face *) malloc(ob->numbers_of_faces*sizeof(face));
 
 for(numbers_of_faces=0;numbers_of_faces<ob->numbers_of_faces;numbers_of_faces++) {
   mob->faces[numbers_of_faces].numbers_of_points = ob->faces[numbers_of_faces].numbers_of_points;
   mob->faces[numbers_of_faces].points = (point3d *) malloc(ob->faces[numbers_of_faces].numbers_of_points*sizeof(point3d));
   for(numbers_of_points=0;numbers_of_points<ob->faces[numbers_of_faces].numbers_of_points;numbers_of_points++) {
     p0->x = ob->faces[numbers_of_faces].points[numbers_of_points].x;
     p0->y = ob->faces[numbers_of_faces].points[numbers_of_points].y;
     p0->z = ob->faces[numbers_of_faces].points[numbers_of_points].z;
     p0->w = ob->faces[numbers_of_faces].points[numbers_of_points].w;
     p0->color = ob->faces[numbers_of_faces].points[numbers_of_points].color;
     p1 = LinearTransf3d(H,p0);
     mob->faces[numbers_of_faces].points[numbers_of_points].x = p1->x;    
     mob->faces[numbers_of_faces].points[numbers_of_points].y = p1->y; 
     mob->faces[numbers_of_faces].points[numbers_of_points].z = p1->z;
     mob->faces[numbers_of_faces].points[numbers_of_points].w = p1->w;
     mob->faces[numbers_of_faces].points[numbers_of_points].color = p1->color;
     }
   } 

 return mob; 
 }
 
object * ParalProjFaces(object3d * ob3d) {
 object * facelist;
 int numbers_of_points, numbers_of_faces;
 
 facelist = (object *) malloc(ob3d->numbers_of_faces*sizeof(object));
 for(numbers_of_faces=0;numbers_of_faces<ob3d->numbers_of_faces;numbers_of_faces++) {
   facelist[numbers_of_faces].numbers_of_points = ob3d->faces[numbers_of_faces].numbers_of_points;
   facelist[numbers_of_faces].points = (point *) malloc(facelist[numbers_of_faces].numbers_of_points*sizeof(point));
   for(numbers_of_points=0;numbers_of_points<ob3d->faces[numbers_of_faces].numbers_of_points;numbers_of_points++) {
     facelist[numbers_of_faces].points[numbers_of_points].x = ob3d->faces[numbers_of_faces].points[numbers_of_points].x;
     facelist[numbers_of_faces].points[numbers_of_points].y = ob3d->faces[numbers_of_faces].points[numbers_of_points].y;
     facelist[numbers_of_faces].points[numbers_of_points].w = 1;
     facelist[numbers_of_faces].points[numbers_of_points].color = ob3d->faces[numbers_of_faces].points[numbers_of_points].color;      
     }
   }
 
 return facelist;
 }

object * PerspProjFaces(object3d * ob3d, float zpp, float zcp) {
 object * facelist;
 int numbers_of_points, numbers_of_faces;
 
 facelist = (object *) malloc(ob3d->numbers_of_faces*sizeof(object));
 for(numbers_of_faces=0;numbers_of_faces<ob3d->numbers_of_faces;numbers_of_faces++) {
   facelist[numbers_of_faces].numbers_of_points = ob3d->faces[numbers_of_faces].numbers_of_points;
   facelist[numbers_of_faces].points = (point *) malloc(facelist[numbers_of_faces].numbers_of_points*sizeof(point));
   for(numbers_of_points=0;numbers_of_points<ob3d->faces[numbers_of_faces].numbers_of_points;numbers_of_points++) {
     facelist[numbers_of_faces].points[numbers_of_points].x = ((ob3d->faces[numbers_of_faces].points[numbers_of_points].x)*(zpp-zcp))/(ob3d->faces[numbers_of_faces].points[numbers_of_points].z-zcp);
     facelist[numbers_of_faces].points[numbers_of_points].y = ((ob3d->faces[numbers_of_faces].points[numbers_of_points].y)*(zpp-zcp))/(ob3d->faces[numbers_of_faces].points[numbers_of_points].z-zcp);
     facelist[numbers_of_faces].points[numbers_of_points].w = 1;
     facelist[numbers_of_faces].points[numbers_of_points].color = ob3d->faces[numbers_of_faces].points[numbers_of_points].color;      
     }
   }
 
 return facelist;  
 }
 
