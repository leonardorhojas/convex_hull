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


int main(int argc, char* argv[])
{
	
	/* Generar puntos aleatorios y los asigna a un Vector de puntos points */
	 Points points, results,results2;
     Point_2 p,q,r;
	 Segments resulting_segments;
/*	 
	for (int i=0; i<5; i++){
	points.push_back(Point_2(rand(),rand()));
	}

*/


//generacion aleatoria de puntos version Profeso Leonardo
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
/*	
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
/*   
			if (valid==true){
			//resulting_segments.push_back(  Segment_2(points[p] ,points[q]) )	;
      results.push_back(points[p]);
      results2.push_back(points[q]);
				}
			}
		}
	}
    */




/* imprimir el vector de puntos originados*/
  for(int i=0; i<points.size(); i++)std::cout<<"("<<points[i]<<")"<< std::endl;//output

  std::cout<<"******"<<std::endl;
  std::cout<<"******"<<std::endl;
  //Ordenar vector de puntos por la coordenada X
  sort(points.begin(),points.end());


 //CGAL::hilbert_sort (results.begin(), v.end());  
 
 for(int i=0; i<points.size(); i++)std::cout<<points[i]<<std::endl;//output


//Validación incremental izquierda
p=points[0];
q=points[1];
r=points[2];

   for (int i=3;i<=points.size();i++){
       results.push_back(p);

       while(IsPointAtRight( p, q, r )!=true && i<points.size())
       {
        r=q;
        if(i<points.size() ){
            r=points[i];
            }else
            {
                results.push_back(r);
            }
        if (i<points.size()-2)  {
        i++;
        }

       }

       if (i=points.size()){
           results.push_back(q);
           results.push_back(r);
       } else{
       p=q;
       }
       

   }


 for(int i=0; i<results.size(); i++)std::cout<<results[i]<<std::endl;//output

return 0;
}

