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

typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef K::Point_2 Point_2;
typedef K::Segment_2 Segment_2;
typedef std::vector<Point_2> Points;
typedef std::vector<Segment_2> Segments;
typedef CGAL::Creator_uniform_2<double,Point>               Creator;


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

//--------------------------------------------------------------------------
// Merges two subarrays of arr[]. 
// First subarray is arr[l..m] 
// Second subarray is arr[m+1..r] 
void merge(int arr[], int l, int m, int r) 
{ 
    int i, j, k; 
    int n1 = m - l + 1; 
    int n2 =  r - m; 
  
    /* create temp arrays */
    int L[n1], R[n2]; 
  
    /* Copy data to temp arrays L[] and R[] */
    for (i = 0; i < n1; i++) 
        L[i] = arr[l + i]; 
    for (j = 0; j < n2; j++) 
        R[j] = arr[m + 1+ j]; 
  
    /* Merge the temp arrays back into arr[l..r]*/
    i = 0; // Initial index of first subarray 
    j = 0; // Initial index of second subarray 
    k = l; // Initial index of merged subarray 
    while (i < n1 && j < n2) 
    { 
        if (L[i] <= R[j]) 
        { 
            arr[k] = L[i]; 
            i++; 
        } 
        else
        { 
            arr[k] = R[j]; 
            j++; 
        } 
        k++; 
    } 
  
    /* Copy the remaining elements of L[], if there 
       are any */
    while (i < n1) 
    { 
        arr[k] = L[i]; 
        i++; 
        k++; 
    } 
  
    /* Copy the remaining elements of R[], if there 
       are any */
    while (j < n2) 
    { 
        arr[k] = R[j]; 
        j++; 
        k++; 
    } 
} 
  
/* l is for left index and r is right index of the 
   sub-array of arr to be sorted */
void mergeSort(int arr[], int l, int r) 
{ 
    if (l < r) 
    { 
        // Same as (l+r)/2, but avoids overflow for 
        // large l and h 
        int m = l+(r-l)/2; 
  
        // Sort first and second halves 
        mergeSort(arr, l, m); 
        mergeSort(arr, m+1, r); 
  
        merge(arr, l, m, r); 
    } 
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
			//resulting_segments.push_back( Segment_2(points[p] ,points[q]) )	;
      results.push_back(points[p]);
      results.push_back(points[q]);
				}
			}
		}
	}

 //CGAL::spatial_sort(results.begin(),results.end();


 CGAL::hilbert_sort (results.begin(), v.end());  
 
 for(std::size_t i=0; i<size; ++i)std::cout<<results[i]<<std::endl;//output
/*
 for(int i = 0; i < results.size(); i=i+2){

  std::cout <<  results[i] << " | "<<results[i+1] <<std::endl;


      if(results[i]<results[i+1]){
      std::cout << "Result1 < result2" << std::endl; 
      std::cout <<  results[i] << "< "<< results[i+1]<< std::endl;
        } else{
        std::cout << "Result1 > result2"<< std::endl; 
        std::cout <<  results[i] << " > "<< results[i+1]<< std::endl;
    }

 }*/



return 0;
}

