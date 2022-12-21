FROM rocker/tidyverse:4.0.3
RUN install2.r rsconnect shiny 
WORKDIR /home/poc_cb
COPY app.R app.R
COPY deploy.R deploy.R
CMD Rscript deploy.R
