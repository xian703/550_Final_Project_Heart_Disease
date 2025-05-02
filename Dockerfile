FROM rocker/tidyverse:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      pandoc \
      texlive-xetex \
      libcurl4-openssl-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/rstudio/project


COPY renv.lock renv.lock
COPY final_report.Rmd final_report.Rmd
COPY *.R ./
COPY heart_disease_data/ heart_disease_data/

RUN Rscript -e "install.packages('renv', repos='https://cloud.r-project.org')" \
 && Rscript -e "renv::restore(prompt = FALSE)"

RUN Rscript -e "rmarkdown::render('final_report.Rmd', output_file='final_report.html')"

CMD ["cp", "/home/rstudio/project/final_report.html", "/report/"]

