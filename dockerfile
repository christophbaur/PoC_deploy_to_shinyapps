FROM rocker/tidyverse:4.0.3
RUN install2.r rsconnect shiny 
RUN installGithub.r VerkehrsbetriebeZuerich/catmaply StatistikStadtZuerich/zuericssstyle
WORKDIR /home/poc_cb
COPY app.R app.R
COPY deploy.R deploy.R
CMD Rscript deploy.R
