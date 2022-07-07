CFLAGS=-Wall -Wpedantic -O3

SOURCE=test.c
INTERMEDIATE=$(patsubst %.c,%.i,$(SOURCE))
TEMP=$(patsubst %.c,%.tmp,$(SOURCE))
OUTPUT=test

all: $(OUTPUT)

$(OUTPUT): $(INTERMEDIATE)
	$(CC) $(CFLAGS) $< -o $@

$(INTERMEDIATE): $(TEMP)
	php $< > $@

$(TEMP): $(SOURCE)
	$(CC) -E $< > $@

.PHONY: clean run

clean:
	$(RM) -r $(OUTPUT) $(TEMP) $(INTERMEDIATE)

run: $(OUTPUT)
	./$<
