#include <chrono>
#pragma once

template<typename F>
auto functionTimer(F f)
{
	auto start = std::chrono::steady_clock::now();
	f();
	auto end = std::chrono::steady_clock::now();
	auto result = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
	return result.count();
	//return end - start;
}

