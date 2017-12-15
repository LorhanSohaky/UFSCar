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

    int getX() const {
        return x;
    }

    int getY() const {
        return y;
    }

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

class Vetor3d : private Vetor2d {
  private:
    int z;

  public:
    Vetor3d( int x, int y, int z ) : Vetor2d::Vetor2d( x, y ) {
        this->z = z;
    }

    friend ostream &operator<<( ostream &saida, const Vetor3d &vetor );
};

ostream &operator<<( ostream &saida, const Vetor3d &vetor ) {
    Vetor2d v2( vetor.getX(), vetor.getY() );
    saida << v2 << "," << vetor.z;
}

int main() {
    Vetor2d v1( 5, 6 );
    Vetor3d v2( 7, 8, 9 );

    cout << v1 << endl;
    cout << v2 << endl;

    return 0;
}
