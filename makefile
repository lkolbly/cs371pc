clean:
	cd examples; make clean
	@echo
	cd exercises; make clean
	@echo
	cd quizzes; make clean

config:
	git config -l

init:
	touch README
	git init
	git add README
	git commit -m 'first commit'
	git remote add origin git@github.com:gpdowning/cs371pc.git
	git push -u origin master

pull:
	@rsync -r -t -u -v --delete             \
    --include "Hello.c++"                   \
    --include "Assertions.c++"              \
    --include "Collatz1.h"                  \
    --include "Collatz2.h"                  \
    --include "UnitTests1.c++"              \
    --include "UnitTests2.c++"              \
    --include "UnitTests3.c++"              \
    --include "Coverage1.c++"               \
    --include "Coverage2.c++"               \
    --include "Coverage3.c++"               \
    --exclude "*"                           \
    ../../../examples/c++/ examples
	@rsync -r -t -u -v --delete             \
    --include "IsPrime1.h"                  \
    --include "IsPrime1.c++"                \
    --include "IsPrime2.h"                  \
    --include "IsPrime2.c++"                \
    --exclude "*"                           \
    ../../../exercises/c++/ exercises

#    --include "Exceptions.c++"              \
#    --include "Exceptions2.c++"             \
#    --include "Exceptions3.c++"             \
#    --include "Types.c++"                   \
#    --include "Operators.c++"               \
#    --include "StackVsHeap.c++"             \
#    --include "Selection.c++"               \
#    --include "Iteration.c++"               \
#    --include "Variables.c++"               \
#    --include "Lambdas.c++"                 \
#    --include "Iterators.c++"               \
#    --include "Consts.c++"                  \
#    --include "Sets.c++"                    \
#    --include "Maps.c++"                    \
#	@rsync -r -t -u -v --delete             \
#    --include "IsPrime1.h"                  \
#    --include "IsPrime1.c++"                \
#    --include "IsPrime2.h"                  \
#    --include "IsPrime2.c++"                \
#    --include "StrCmp.h"                    \
#    --include "StrCmp.c++"                  \
#    --include "Factorial.h"                 \
#    --include "Factorial.c++"               \
#    --include "Equal.h"                     \
#    --include "Equal.c++"                   \
#    --include "Fill.h"                      \
#    --include "Fill.c++"                    \
#    --include "Copy.h"                      \
#    --include "Copy.c++"                    \
#    --include "Stack.h"                     \
#    --include "Stack.c++"                   \
#    --include "Vector1.h"                   \
#    --include "Vector1.c++"                 \
#    --include "Vector2.h"                   \
#    --include "Vector2.c++"                 \
#    --include "Memory.h"                    \
#    --include "Vector3.h"                   \
#    --include "Vector3.c++"                 \
#    --include "Vector4.h"                   \
#    --include "Vector4.c++"                 \
#    --include "Reverse.h"                   \
#    --include "Reverse.c++"                 \
#    --include "Count.h"                     \
#    --include "Count.c++"                   \
#    --include "Pair.h"                      \
#    --include "Pair.c++"                    \
#    --include "BackInserter.h"              \
#    --include "BackInserter.c++"            \
#    --include "OStreamIterator.c++"         \
#    --include "IStreamIterator.c++"         \
#    --include "ReverseIterator.c++"         \
#	@rsync -r -t -u -v --delete             \
#    --include "Quiz3.c++"                   \
#    --include "Quiz5.c++"                   \
#    --include "Quiz6.c++"                   \
#    --include "Quiz7.c++"                   \
#    --include "Quiz8.c++"                   \
#    --include "Quiz9.c++"                   \
#    --include "Quiz11.c++"                  \
#    --exclude "*"                           \
#    ../../quizzes/ quizzes

push:
	make clean
	@echo
	git add .travis.yml
	git add examples
	git add exercises
	git add makefile
	git add quizzes
	git commit -m "another commit"
	git push
	git status

status:
	make clean
	@echo
	git branch
	git remote -v
	git status

testx:
	cd examples; ls -al; ls -al; make testx
	@echo
	cd exercises; ls -al; ls -al; make testx
	@echo
	cd quizzes; ls -al; ls -al; make testx

testy:
	cd examples; ls -al; ls -al; make testy
	@echo
	cd exercises; ls -al; ls -al; make testy
	@echo
	cd quizzes; ls -al; ls -al; make testy

testz:
	cd examples; ls -al; ls -al; make testz
	@echo
	cd exercises; ls -al; ls -al; make testz
	@echo
	cd quizzes; ls -al; ls -al; make testz
