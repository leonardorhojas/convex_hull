#include <chrono>
#include <iostream>
#include <random>
#include <vector>

#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/convex_hull_2.h>

typedef CGAL::Exact_predicates_inexact_constructions_kernel TKernel;
typedef TKernel::Point_2 TPoint;

// -------------------------------------------------------------------------
template< class _TPoint >
bool IsPointAtRight( const _TPoint& p, const _TPoint& q, const _TPoint& r )
{
  double qpX = double( q[ 0 ] - p[ 0 ] );
  double qpY = double( q[ 1 ] - p[ 1 ] );
  double rpX = double( r[ 0 ] - p[ 0 ] );
  double rpY = double( r[ 1 ] - p[ 1 ] );

  return( qpX * rpY > rpX * qpY );
}

// -------------------------------------------------------------------------
template< class _TInIt, class _TOut >
void ConvexHull_Naive( _TInIt b, _TInIt e, _TOut& out )
{
  for( _TInIt p = b; p != e; ++p )
  {
    for( _TInIt q = b; q != e; ++q )
    {
      if( p != q )
      {
        bool v = true;
        for( _TInIt r = b; r != e; ++r )
        {
          if( r != p && r != q )
            v &= IsPointAtRight( *p, *q, *r );
        } // end for
        if( v )
        {
          out.push_back( *p );
          out.push_back( *q );
        } // end if
      } // end if
    } // end for
  } // end for
}

// -------------------------------------------------------------------------
int main( int argc, char* argv[] )
{
  unsigned long n = 100;
  if( argc > 1 )
    n = std::atoi( argv[ 1 ] );
  std::random_device rd;
  std::mt19937 mt( rd( ) );
  std::uniform_real_distribution< double > dist( -100, 100 );

  std::vector< TPoint > P;
  for( unsigned long i = 0; i < n; ++i )
  {
    double x = dist( mt );
    double y = dist( mt );
    P.push_back( TPoint( x, y ) );
  } // end for

  std::vector< TPoint > ch_naive;
  auto start = std::chrono::steady_clock::now( );
  ConvexHull_Naive( P.begin( ), P.end( ), ch_naive );
  auto end = std::chrono::steady_clock::now( );
  auto t_naive = std::chrono::duration_cast< std::chrono::nanoseconds >( end - start ).count( );

  std::cout << ch_naive.size( ) << " (" << ( double( t_naive ) / 1e9 ) << " s)" << std::endl;

  return( 0 );
}
