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

template< class _TPrint >
void Print_Vector (const _TPrint& p)
{
for(int i=0; i<p.size(); i++)std::cout<<p[i]<<std::endl;//output
}


// -------------------------------------------------------------------------

int main(int argc, char* argv[])
{
	
	/* Generar puntos aleatorios y los asigna a un Vector de puntos points */
	 Points points, results,results2,results3;
     Point_2 p,q,r;
	 Segments resulting_segments;
/*	 
	for (int i=0; i<5; i++){
	points.push_back(Point_2(rand(),rand()));
	}

*/


//generacion aleatoria de puntos version Profesor Leonardo
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
	

/* imprimir el vector de puntos originados*/
  for(int i=0; i<points.size(); i++)std::cout<<"("<<points[i]<<")"<< std::endl;//output

  std::cout<<"***Ordenado en X***"<<std::endl;
  //Ordenar vector de puntos por la coordenada X
  sort(points.begin(),points.end());


 //CGAL::hilbert_sort (results.begin(), v.end());  
 
 for(int i=0; i<points.size(); i++)std::cout<<"("<<points[i]<<")"<<std::endl;//output


//Validación incremental izquierda
p=points[0];
q=points[1];
r=points[2];

   for (int i=3;i<=points.size();i++){
       results.push_back(p);
       while(right_turn(p, q, r)!=true && i<points.size())
       {
        q=r; 
        r=points[i];
		    i++;
        
      }
       if (i==points.size()){
         //results.push_back(q);
         if(right_turn(p, q, r)==true){  results.push_back(q);}
       } else{
       p=r;
       q=points[i];
       i++;
       r=points[i];
       }
       

   }

  std::cout<<"***Incremental lado superior***"<<std::endl;

 for(int i=0; i<results.size(); i++)std::cout<<results[i]<<std::endl;//output

std::cout<<"***CGAL Yarvis Algorithm***"<<std::endl;
CGAL::convex_hull_2( points.begin(), points.end(), std::back_inserter(results3) );
Print_Vector(results3);
return 0;
}

