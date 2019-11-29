#include "cg3d.h"

int main( void ) {
	bufferdevice *dispositivo;
	window *	  janela;
	viewport *	porta;
	janela		= CreateWindow( -15, -15, 15, 15 );
	dispositivo = CreateBuffer( 801, 601 );
	porta		= CreateViewPort( 0, 0, 800, 600 );

	point3d *Normal, *ViewUp, *Observador;
	Normal	 = SetNormal( 0, 0, 1 );
	ViewUp	 = SetViewUp( 0, 1, 0 );
	Observador = SetObserver( 0, 0, 0 );

	palette *palheta;
	palheta = CreatePalette( 6 );
	SetColor( 0, 0, 0, palheta );
	SetColor( 1, 1, 1, palheta );
	SetColor( 1, 1, 0, palheta );
	SetColor( 1, 0, 0, palheta );
	SetColor( 0, 1, 0, palheta );
	SetColor( 0, 0, 1, palheta );

	face *fQuadrado, *fTriangulo;
	fQuadrado  = CreateFace( 4 );
	fTriangulo = CreateFace( 3 );
	SetPointFace( 1.0, 5.0, 0.0, 1, fQuadrado );
	SetPointFace( 5.0, 5.0, 0.0, 1, fQuadrado );
	SetPointFace( 5.0, 1.0, 0.0, 1, fQuadrado );
	SetPointFace( 1.0, 1.0, 0.0, 1, fQuadrado );

	object *casa;

	object3d *objQuadrado, *objQuadradoBase;
	objQuadrado = CreateObject3D( 1 );
	SetObject3D( fQuadrado, objQuadrado );

	objQuadradoBase = ConvertObjectBase( Normal, ViewUp, Observador, objQuadrado );
	casa			= PerspProjFaces( objQuadradoBase, 0, -60 );

	DrawObject( &casa[0], janela, porta, dispositivo, 3 );

	Dump2PIPE( dispositivo, palheta );

	return 0;
}
