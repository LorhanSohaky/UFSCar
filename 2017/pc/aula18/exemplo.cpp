#include <iostream>

using namespace std;

template <class T> T maior( const T first, const T second ) {
    return ( first > second ? first : second );
}

int main( int argc, char const *argv[] ) {
    std::cout << maior( 10, 2 ) << endl;
    return 0;
}
