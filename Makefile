report: final_report.Rmd
	Rscript -e "rmarkdown::render('final_report.Rmd', output_format='html_document')"

.PHONY: report

