# Makefile
#
# compile/link: boot.c, demo.s

all: program Factorial BinarySearch LinkedList BubbleSort QuickSort BinaryTree LinearSearch TreeVisitor

program: boot.o demo.o
	cc -g -o $@ $^

Factorial: boot.o Factorial.o
	cc -g -o $@ $^

BinarySearch: boot.o BinarySearch.o
	cc -g -o $@ $^

LinkedList: boot.o LinkedList.o
	cc -g -o $@ $^

BubbleSort: boot.o BubbleSort.o
	cc -g -o $@ $^

QuickSort: boot.o QuickSort.o
	cc -g -o $@ $^

BinaryTree: boot.o BinaryTree.o
	cc -g -o $@ $^

LinearSearch: boot.o LinearSearch.o
	cc -g -o $@ $^

TreeVisitor: boot.o TreeVisitor.o
	cc -g -o $@ $^

%.o: %.s
	cc -g -c -o $@ $<

%.o: %.c
	cc -g -c -o $@ $<

clean:
	rm -f program Factorial BinarySearch LinkedList BubbleSort QuickSort BinaryTree LinearSearch TreeVisitor *.o

