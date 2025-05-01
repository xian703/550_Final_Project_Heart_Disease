# Dockerfile
FROM rocker/tidyverse:latest


WORKDIR /home/rstudio/project


COPY . .


RUN Rscript -e "install.packages('renv', repos='https://cloud.r-project.org')" \
 && Rscript -e "renv::restore(prompt = FALSE)"

RUN Rscript -e "rmarkdown::render('final_report.Rmd', output_file='final_report.html')"


CMD ["cp", "/home/rstudio/project/final_report.html", "/report/"]


