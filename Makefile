CHROMIUM ?= chromium
CV_HTML := $(CURDIR)/static/cv.html
CV_CSS := $(CURDIR)/static/cv.css
CV_PDF := static/CV_Lim.pdf

.PHONY: all cv clean

all: cv

cv: $(CV_PDF)

$(CV_PDF): $(CV_HTML) $(CV_CSS)
	$(CHROMIUM) --headless --no-pdf-header-footer \
		--print-to-pdf=$@ \
		file://$(CV_HTML)

clean:
	rm -f $(CV_PDF)
