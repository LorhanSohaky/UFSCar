#include <iostream>

using namespace std;

class Vetor2d {
  public:
    Vetor2d( int Vx, int Vy ) : x( Vx ), y( Vy ) {
    }

    friend ostream &operator<<( ostream &saida, const Vetor2d &vetor );
    friend const Vetor2d operator*( const int i, const Vetor2d &vetor );

    const Vetor2d operator*( const Vetor2d &vetor ) const;
    Vetor2d &operator++();

    friend const bool operator==( const Vetor2d &v1, const Vetor2d &v2 );

  private:
    int x, y;
};

ostream &operator<<( ostream &saida, const Vetor2d &vetor ) {
    saida << vetor.x << "," << vetor.y;
    return saida;
}

const Vetor2d operator*( const int i, const Vetor2d &vetor ) {
    return Vetor2d( i * vetor.x, i * vetor.y );
}

const Vetor2d Vetor2d::operator*( const Vetor2d &vetor ) const {
    return Vetor2d( this->x * vetor.x, this->y * vetor.y );
}

Vetor2d &Vetor2d::operator++() {
    this->x++;
    this->y++;
    return *this;
}

const bool operator==( const Vetor2d &v1, const Vetor2d &v2 ) {
    return ( v1.x == v2.x && v1.y == v2.y );
}

int main() {
    Vetor2d A( 1, 2 ), B( 2, 4 ), C( A );

    cout << "A=" << A << endl;
    cout << "B=" << B << endl;
    cout << "C=" << C << endl;

    C = 3 * B;
    cout << "C=3*B = " << C << endl;

    A = B * C;
    cout << "A=B*C = " << A << endl;

    A = ++C;

    return 0;
}
