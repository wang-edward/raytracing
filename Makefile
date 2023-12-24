CFLAGS = -std=c++17 -Wall -g
LDFLAGS = -fopenmp

app.out: *.cc *.h
	g++ $(LDFLAGS) $(CFLAGS) -o app.out *.cc $(LDFLAGS)

.PHONY: test clean

test: app.out
	./app.out

clean:
	rm -f app.out
