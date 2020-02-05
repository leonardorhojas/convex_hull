#include <iostream>
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/convex_hull_2.h>
#include <chrono>
#include <random>
#include <vector>

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




// -------------------------------------------------------------------------

int main(int argc, char* argv[])
{
	
	/* Generar puntos aleatorios y los asigna a un Vector de puntos points */
	 Points points, results;
	 Segments resulting_segments;
/*	 
	for (int i=0; i<5; i++){
	points.push_back(Point_2(rand(),rand()));
	}

*/

  unsigned long n = 10;
  if( argc > 1 )
    n = std::atoi( argv[ 1 ] );
  std::random_device rd;
  std::mt19937 mt( rd( ) );
  std::uniform_real_distribution< double > dist( -10, 10 );

  for( unsigned long i = 0; i < n; ++i )
  {
    double x = dist( mt );
    double y = dist( mt );
    points.push_back( Point_2( x, y ) );
  } // end for
	
	
/*Crear vector de Segmentos de linea p-q*/
	for (int p=0; p<points.size();p++)
	{
		for (int q=0; q<points.size();q++)
		{
			if (p!=q){
				bool valid=true;
			for (int r=0;r<points.size();r++)
				if(r!=p and r!=q){
				 valid &= IsPointAtRight( points[p], points[q], points[r] );
					
				}

/*Genera vector de segmentos de linea*/       
			if (valid==true){
			resulting_segments.push_back( Segment_2(points[p] ,points[q]) )	;
				}
			}
		}
	}

 for(int i = 0; i < resulting_segments.size(); i++){
    std::cout << resulting_segments[i] << std::endl;
    if(points[1]<points[3]){
     std::cout << "Resulti1 < result2" << std::endl; 
     std::cout <<  points[1]<< std::endl; 
     std::cout <<  points[3]<< std::endl; 

   } else{
      std::cout << "Resulti1 > result2"<< std::endl; 
      std::cout <<  points[1]<< std::endl; 
      std::cout <<  points[3]<< std::endl; 
   }

 }

return 0;
}

