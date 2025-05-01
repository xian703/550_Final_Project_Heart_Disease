.PHONY: install clean report run

install:
	Rscript -e "renv::restore(prompt = FALSE)"

clean:
	rm -rf report final_report.html

report: install
	Rscript -e "rmarkdown::render('final_report.Rmd', output_file='final_report.html')"

run:
	docker build -t xian703/heart-disease-report:latest .
	mkdir -p report
	docker run --rm -v "$(PWD)/report":/report xian703/heart-disease-report:latest

