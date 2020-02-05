#include <iostream>
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/convex_hull_2.h>

typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef K::Point_2 Point_2;
typedef std::vector<Point_2> Points;

int main()
{
 Points points, result;
for (int i=0; i<5; i++){
points.push_back(Point_2(rand(),rand()));
}

  CGAL::convex_hull_2( points.begin(), points.end(), std::back_inserter(result) );
  std::cout <<  result.size() << " points on the convex hull:" << std::endl;
  for(int i = 0; i < result.size(); i++){
    std::cout << result[i] << std::endl;
  }
  return 0;
}
