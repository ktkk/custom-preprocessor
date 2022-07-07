CFLAGS=-Wall -Wpedantic -O3 -no-integrated-cpp -B$(PWD)

SOURCE=test.c
OUTPUT=test

all: $(OUTPUT)

$(OUTPUT):
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean run

clean:
	$(RM) -r $(OUTPUT)

run: $(OUTPUT)
	./$<
