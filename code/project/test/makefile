.PHONY : all clean

all : test.exe test.class test.pdf

test.exe : test.c
	gcc test.c -o test.exe

test.class : test.java
	javac test.java

test.pdf : test.tex
	latexmk -pdf test.tex

clean :
	del test.exe
	del test.class
	latexmk -C test.tex