// -------------
// Coverage2.c++
// -------------

// http://gcc.gnu.org/onlinedocs/gcc/Gcov.html

#include <cassert>  // assert
#include <iostream> // cout, endl

#include "gtest/gtest.h"

#include "Collatz2.h"

TEST(CoverageFixture, test) {
    ASSERT_EQ(cycle_length(2), 2);}

/*
% g++ -fprofile-arcs -ftest-coverage -pedantic -std=c++11 -Wall Coverage2.c++ -o Coverage2 -lgtest -lgtest_main -pthread



% Coverage2
Running main() from gtest_main.cc
[==========] Running 1 test from 1 test case.
[----------] Global test environment set-up.
[----------] 1 test from CoverageFixture
[ RUN      ] CoverageFixture.test
[       OK ] CoverageFixture.test (0 ms)
[----------] 1 test from CoverageFixture (0 ms total)

[----------] Global test environment tear-down
[==========] 1 test from 1 test case ran. (1 ms total)
[  PASSED  ] 1 test.



% gcov-4.8 -b ./Coverage2.c++ | grep -A 5 "File 'Collatz2.h'"
File 'Collatz2.h'
Lines executed:90.00% of 10
Branches executed:100.00% of 8
Taken at least once:62.50% of 8
Calls executed:0.00% of 2
Creating 'Collatz2.h.gcov'
*/
