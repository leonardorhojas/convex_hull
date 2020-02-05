#include <iostream>
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/convex_hull_2.h>
#include <CGAL/Segment_2.h>

//https://doc.cgal.org/latest/Spatial_sorting/index.html
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

int main()
{
	
	/* Generar puntos aleatorios y los asigna a un Vector de puntos points */
	 Points points,results;
	 Segments segments,resulting_segments;
	 
	for (int i=0; i<5; i++){
	points.push_back(Point_2(rand(),rand()));
	}
	
	
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
			if (valid==true){
			resulting_segments.push_back(points[p] ,points[q] )	;
			/* results.push_back(points[p])    ;
             results.push_back(points[q])    ;*/
			 
				}
			}
		}
	}

 for(int i = 0; i < resulting_segments.size(); i++){
    std::cout << resulting_segments[i] << std::endl;

 }

  /*Calcula Casco Convexo
  CGAL::convex_hull_2( points.begin(), points.end(), std::back_inserter(result) );*/
  /*Imprime puntos del casco Convexo
  std::cout <<  result.size() << " points on the convex hull:" << std::endl;
  */
  /* Imprimir reusltado
  for(int i = 0; i < result.size(); i++){
    std::cout << result[i] << std::endl;
  }*/
  return 0;
}
