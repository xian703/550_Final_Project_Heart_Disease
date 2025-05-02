.PHONY: install clean report run

install:
	Rscript -e "renv::restore(prompt = FALSE)"

clean:
	rm -rf report final_report.html

report: install
	Rscript -e "rmarkdown::render('final_report.Rmd', output_file='final_report.html')"

run:
.PHONY: install clean report run

install:
	Rscript -e "renv::restore(prompt = FALSE)"

clean:
	rm -rf report final_report.html

report: install
	Rscript -e "rmarkdown::render('final_report.Rmd', output_file='final_report.html')"

run:
	mkdir -p report
	docker pull xianwu00836/heart-disease-report:latest
	docker run --rm \
	  -v "$$(pwd)/report":/report \
	  --entrypoint sh \
	  xianwu00836/heart-disease-report:latest \
	  -c "cp /home/rstudio/project/final_report.html /report/"
	@echo "⤷ report/final_report.html ready"

