#include <iostream>
#include<stdlib.h> 
#include<stdio.h> 
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/convex_hull_2.h>
#include <chrono>
#include <random>
#include <vector>
#include <CGAL/point_generators_2.h>
#include <CGAL/hilbert_sort.h>
#include <CGAL/Delaunay_triangulation_2.h>
#include <CGAL/spatial_sort.h>
#include <string>
#include <algorithm>
#include <functional>
#include <cassert>
#include <iomanip>
#include <numeric>

typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef K::Point_2 Point_2;
typedef K::Segment_2 Segment_2;
typedef std::vector<Point_2> Points;
typedef std::vector<Segment_2> Segments;


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
  int main( )
{
	Point_2 p,q,r;
	 bool r_right_of_pq;
 	 bool r_right_of_pq_2;

		p=( Point_2( -7.92352 ,-3.49278) );
		q=( Point_2( -1.7415, 4.23544 ) );
		r=( Point_2( -0.0153198, 8.51879 ) );
	r_right_of_pq=CGAL::right_turn (p, q, r);
    r_right_of_pq_2=IsPointAtRight( p, q, r );
	if (r_right_of_pq==true){
		  std::cout<<"r is at right of pq"<<std::endl;
	}else{  std::cout<<"r is NOT at right of pq"<<std::endl;}
	std::cout<<"================="<<std::endl;
if (r_right_of_pq_2==true){
		  std::cout<<"r_is_right_of_pq"<<std::endl;
	}else{  std::cout<<"r_is NOT at_right_of_pq"<<std::endl;}

	return 0;

}
	
