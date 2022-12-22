FROM rocker/tidyverse:4.0.3
RUN install2.r rsconnect shiny readr dplyr plotly zoo reactable lubridate tidyverse colorspace httr data.table
RUN installGithub.r StatistikStadtZuerich/zuericssstyle
WORKDIR /home/poc_cb
COPY app.R app.R
COPY deploy.R deploy.R
CMD Rscript deploy.R
