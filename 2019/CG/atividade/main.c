/*
Lorhan Sohaky

- Tive que implementar uma função que aplica a transformação linear numa face
- Um gargalo é que a minha biblioteca substitui o objeto no momento em que aplica uma transformação
linear
*/

#include "cg3d.h"

void criarQuadrado( face *f ) {
	SetPointFace( 1.0, 5.0, 0.0, 1, f );
	SetPointFace( 5.0, 5.0, 0.0, 1, f );
	SetPointFace( 5.0, 1.0, 0.0, 1, f );
	SetPointFace( 1.0, 1.0, 0.0, 1, f );
}

void criarTriangulo( face *f ) {
	SetPointFace( -3.0, 0.0, 0.0, 1, f );
	SetPointFace( -0.9, -5.1, 0.0, 1, f );
	SetPointFace( -5.1, -5.1, 0.0, 1, f );
}

object3d *desenharTeto() {
	face *	f1, *f2, *f3, *f4, *f5;
	matrix3d *m1, *m2, *m3, *m4, *m5, *m6, *m7;

	m1 = gerarMatrizDeDeslocamento( 0, 0, 100 );
	m2 = gerarMatrizDeEscala( 20, 1.15, 1 );
	m3 = gerarMatrizDeRotacao( -22.1, X );
	m4 = gerarMatrizDeRotacao( 90, Y );
	m5 = gerarMatrizDeDeslocamento( -0.3, -5.3, 89.5 );
	m6 = gerarMatrizDeRotacao( 22.1, X );
	m7 = gerarMatrizDeDeslocamento( -4.65, -5.3, 89.5 );

	f1 = CreateFace( 3 );
	criarTriangulo( f1 );

	f2 = CreateFace( 3 );
	criarTriangulo( f2 );
	TransformacaoLinearFace( m1, f2 );

	f3 = CreateFace( 4 );
	criarQuadrado( f3 );
	TransformacaoLinearFace( m2, f3 );
	TransformacaoLinearFace( m3, f3 );
	TransformacaoLinearFace( m4, f3 );
	TransformacaoLinearFace( m5, f3 );

	f4 = CreateFace( 4 );
	criarQuadrado( f4 );
	TransformacaoLinearFace( m2, f4 );
	TransformacaoLinearFace( m6, f4 );
	TransformacaoLinearFace( m4, f4 );
	TransformacaoLinearFace( m7, f4 );

	object3d *objTeto;
	objTeto = CreateObject3D( 4 );
	SetObject3D( f2, objTeto );
	SetObject3D( f1, objTeto );
	SetObject3D( f3, objTeto );
	SetObject3D( f4, objTeto );

	return objTeto;
}

object3d *desenharCorpo() {
	face *	f1, *f2, *f3, *f4, *f5;
	matrix3d *m1, *m2, *m3, *m4, *m5, *m6, *m7;

	m1 = gerarMatrizDeDeslocamento( -6, -10.1, 0 );
	m2 = gerarMatrizDeDeslocamento( -6, -10.1, 100 );
	m3 = gerarMatrizDeDeslocamento( -4, -10.0, 20 );
	m4 = gerarMatrizDeEscala( 20, 1.05, 1 );
	m5 = gerarMatrizDeRotacao( 90, Y );

	f1 = CreateFace( 4 );
	criarQuadrado( f1 );
	TransformacaoLinearFace( m1, f1 );

	f2 = CreateFace( 4 );
	criarQuadrado( f2 );
	TransformacaoLinearFace( m2, f2 );

	f3 = CreateFace( 4 );
	criarQuadrado( f3 );
	TransformacaoLinearFace( m3, f3 );
	TransformacaoLinearFace( m4, f3 );
	TransformacaoLinearFace( m5, f3 );

	object3d *objTeto;
	objTeto = CreateObject3D( 3 );
	SetObject3D( f1, objTeto );
	SetObject3D( f2, objTeto );
	SetObject3D( f3, objTeto );

	return objTeto;
}

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

	// face *fQuadrado, *fTriangulo, f1;
	// fQuadrado = CreateFace( 4 );
	// SetPointFace( 1.0, 5.0, 0.0, 1, fQuadrado );
	// SetPointFace( 5.0, 5.0, 0.0, 1, fQuadrado );
	// SetPointFace( 5.0, 1.0, 0.0, 1, fQuadrado );
	// SetPointFace( 1.0, 1.0, 0.0, 1, fQuadrado );

	// fTriangulo = CreateFace( 3 );
	// SetPointFace( -3.0, 0.0, 0.0, 1, fTriangulo );
	// SetPointFace( -0.9, -5.1, 0.0, 1, fTriangulo );
	// SetPointFace( -5.1, -5.1, 0.0, 1, fTriangulo );

	// object3d *objQuadrado, *objQuadradoBase;
	// objQuadrado = CreateObject3D( 2 );
	// SetObject3D( fQuadrado, objQuadrado );
	// SetObject3D( fTriangulo, objQuadrado );

	// objQuadradoBase = ConvertObjectBase( Normal, ViewUp, Observador, objQuadrado );
	// casa			= PerspProjFaces( objQuadradoBase, 0, -60 );

	// DrawObject( &casa[0], janela, porta, dispositivo, 3 );
	// DrawObject( &casa[1], janela, porta, dispositivo, 3 );

	object *  teto;
	object3d *objTetoBase, *objTeto;

	objTeto		= desenharTeto();
	objTetoBase = ConvertObjectBase( Normal, ViewUp, Observador, objTeto );
	teto		= PerspProjFaces( objTetoBase, 1, -60 );
	DrawObject( &teto[0], janela, porta, dispositivo, 3 );
	DrawObject( &teto[1], janela, porta, dispositivo, 5 );
	DrawObject( &teto[2], janela, porta, dispositivo, 1 );
	DrawObject( &teto[3], janela, porta, dispositivo, 1 );

	object *  corpo;
	object3d *objCorpoBase, *objCorpo;

	objCorpo	 = desenharCorpo();
	objCorpoBase = ConvertObjectBase( Normal, ViewUp, Observador, objCorpo );
	corpo		 = PerspProjFaces( objCorpoBase, 1, -60 );
	DrawObject( &corpo[0], janela, porta, dispositivo, 2 );
	DrawObject( &corpo[1], janela, porta, dispositivo, 4 );
	DrawObject( &corpo[2], janela, porta, dispositivo, 3 );

	Dump2PIPE( dispositivo, palheta );

	return 0;
}
