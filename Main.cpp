#include <iostream>
#include<ostream>
#include <fstream>
#include <vector>
#include <chrono>
#include <cmath>
#include "Timer.h"

struct Color {
	int red;
	int green;
	int blue;

	Color(int r, int g, int b)
	{
		red = r;
		green = g;
		blue = b;
	}
};

typedef std::vector<std::vector<Color>> image;

void writeImage(image const &img, std::ofstream& o, float dimension)
{
	o.open("sarahisaac_mandelbrot.ppm");
	o << "P3" << std::endl;
	o << dimension << " " << dimension << std::endl;
	o << 255 << std::endl;
	for(int i =0; i<dimension; i++)
	{
		std::vector<Color> vec = img[i];
		for (int j = 0; j < dimension; j++)
		{
			o << vec[j].red << " " << vec[j].green << " " << vec[j].blue;
		}
		o << std::endl;
	}
	o.close();
}

Color determineColor(int iterations)
{
	Color c(iterations, iterations, iterations);
	return c;
}

int doMandelbrot(float x_a, float y_a)
{
	float x = 0;
	float y = 0;
	int i = 0;
	while (i < 256 && (x*x) + (y*y) < (2 * 2))
	{
		float temp = x*x - y*y + x_a;
		y = (2 * x * y) + y_a;
		x = temp;
		i++;
	}
	return i;
}

image loopMandelBrot()
{
	float dim = 512; //always going to be a square
	float minR = -2;
	float maxR = 1;
	float minI = -1;
	float maxI = 1;

	image img;
	std::vector<Color> tempVec;
	int iteration;
	float x;
	float y;

	for (float a = 0; a < dim; a++)
	{
		std::vector<Color> tempVec;
		x = ((a / dim) * (maxR - minR)) + minR;
		for (float b = 0; b < dim; b++)
		{
			y = ((b / dim) * (maxI - minI)) + minI;
			iteration = doMandelbrot(x, y);
			Color color = determineColor(iteration);
			tempVec.push_back(color);
		}
		img.push_back(tempVec);
	}
	return img;
}

double getAverage(std::vector<double> times)
{
	int size = times.size();
	double total = 0;
	for (int i = 0; i < times.size(); i++)
	{
		total += times[i];
	}
	double average = total / size;
	return average;
}

double getStdDev(double average, std::vector<double> times)
{
	double size = times.size();
	double sum = 0;
	for (double i = 0; i < times.size(); i++)
	{
		sum += ((times[i] - average) * (times[i] - average));
	}
	sum = sqrt(sum / size);
	return sum;
}

int main()
{
		double dimension = 512; //always just make a square

		image img = loopMandelBrot();
		std::ofstream os;
		writeImage(*&img, os, dimension);

		std::vector<double> times;
		for (int i = 0; i < 15; i++)
		{
			double time = functionTimer([]() -> void {loopMandelBrot(); });
			times.push_back(time);
		}

		double average = getAverage(times);
		double std_dev = getStdDev(average, times);
		std::cout << "Average time (in milliseconds): " << average << std::endl;
		std::cout <<"Standard Deviation: "<< std_dev << std::endl;

	return 0;
}
