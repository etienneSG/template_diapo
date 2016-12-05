# Name of the generated pdf
PDF_NAME=my_diapo
TEX_NAME=template_diapo
CLASS_NAME=diapo

# Paths of sections and images
IMG_PATH=images
GNUPLOT_PATH=gnuplot_script

all: pdf clean change_name

IMG_LIST=$(wildcard $(IMG_PATH)/*)
GNUPLOT_LIST=$(wildcard $(GNUPLOT_PATH)/*.gp)

gnuplot_images: $(GNUPLOT_LIST)
	if [ "$(GNUPLOT_LIST)" != "" ]; then gnuplot $(GNUPLOT_LIST); fi

pdf: gnuplot_images $(TEX_NAME).tex $(CLASS_NAME).cls math_command.tex template_theme.tex $(IMG_LIST)
	lualatex $(TEX_NAME).tex
	lualatex $(TEX_NAME).tex

change_name:
	@mv $(TEX_NAME).pdf $(PDF_NAME).pdf

clean:
	@find . -name '*~' -exec rm '{}' \; 
	@find . -name '*.aux' -exec rm '{}' \; 
	@find . -name '*.bak' -exec rm '{}' \; 
	@find . -name '*.bbl' -exec rm '{}' \; 
	@find . -name '*.blg' -exec rm '{}' \; 
	@find . -name '*.lof' -exec rm '{}' \; 
	@find . -name '*.log' -exec rm '{}' \; 
	@find . -name '*.lot' -exec rm '{}' \;
	@find . -name '*.nav' -exec rm '{}' \;  
	@find . -name '*.out' -exec rm '{}' \; 
	@find . -name '*.snm' -exec rm '{}' \; 
	@find . -name '*.toc' -exec rm '{}' \;


