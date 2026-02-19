TARGET = report.pdf

# figures
FIGURE_DIR = figures
FIGURE_SOURCES = $(wildcard $(FIGURE_DIR)/*.typ)
FIGURE_OUTPUTS = $(FIGURE_SOURCES:.typ=.svg)


all: $(TARGET)

$(TARGET): main.typ $(FIGURE_OUTPUTS)
	typst compile main.typ $(TARGET)

$(FIGURE_DIR)/%.svg: $(FIGURE_DIR)/%.typ
	@echo "Compiling figure: $<..."
	typst compile $< $@


.PHONY: clean

clean:
	rm -f $(FIGURE_OUTPUTS) report.pdf
