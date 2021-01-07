

install.packages("devtools")
devtools::install_github("meerapatelmd/secretary")
packages_to_install <- c('aactR', 'acepack', 'amphora', 'AsioHeaders', 'askpass', 'assertthat', 'attempt', 'automatonR', 'backports', 'base', 'base64enc', 'BH', 'binman', 'Biobase', 'BiocGenerics', 'BiocManager', 'BiocVersion', 'bit', 'bit64', 'bitops', 'blob', 'blogdown', 'bookdown', 'boot', 'brew', 'brio', 'broca', 'broom', 'CallMeMaybe', 'callr', 'cancergovData', 'cartograph', 'cartographrLite', 'caTools', 'cave', 'cellranger', 'centipede', 'chariot', 'checkmate', 'chemidplusData', 'chemidplusSearchData', 'class', 'cli', 'clinicalDataQuality', 'clipr', 'clisymbols', 'cluster', 'codetools', 'collapsibleTree', 'colorspace', 'commonmark', 'compiler', 'condvis', 'covr', 'cpp11', 'crayon', 'credentials', 'crosstalk', 'curl', 'data.table', 'data.tree', 'DatabaseConnector', 'DatabaseConnectorJars', 'datasets', 'datasets.load', 'DBI', 'dbplyr', 'desc', 'devtools', 'diffobj', 'digest', 'DistillerData', 'downlit', 'dplyr', 'DT', 'easyBakeOven', 'ellipsis', 'ETLSyntheaBuilder', 'evaluate', 'fansi', 'farver', 'fastmap', 'fastmatch', 'ff', 'ffbase', 'FHIRworks', 'forcats', 'foreign', 'formatR', 'Formula', 'fs', 'future', 'future.apply', 'gapminder', 'gargle', 'generics', 'gert', 'ggenealogy', 'ggimage', 'ggplot2', 'ggplotify', 'ggrepel', 'gh', 'git2r', 'gitcreds', 'glitter', 'globals', 'glue', 'gmailr', 'gmailrX', 'gmp', 'googledrive', 'googlesheets', 'googlesheets4', 'graphics', 'grDevices', 'grid', 'gridExtra', 'gridGraphics', 'gtable', 'haven', 'HemOncExt', 'here', 'hexbin', 'hexSticker', 'highlight', 'highr', 'Hmisc', 'hms', 'htmlTable', 'htmltools', 'htmlwidgets', 'httpuv', 'httr', 'hunspell', 'ids', 'igraph', 'ini', 'isoband', 'jpeg', 'jsonld', 'jsonlite', 'kableExtra', 'KernSmooth', 'knitr', 'labeling', 'Lahman', 'later', 'lattice', 'latticeExtra', 'lazyeval', 'leaflet', 'leaflet.providers', 'lifecycle', 'listenv', 'lubridate', 'magick', 'magrittr', 'maps', 'markdown', 'MASS', 'Matrix', 'memoise', 'metaorite', 'metathesaurus', 'methods', 'mgcv', 'microbenchmark', 'mime', 'miniUI', 'mirCat', 'mirroR', 'modelr', 'mOMOP', 'munsell', 'mySeagull', 'neo4r', 'nlme', 'nnet', 'nycflights13', 'officer', 'OncoSeed', 'ontologyIndex', 'ontologyPlot', 'ontologySimilarity', 'openssl', 'openxlsx', 'packrat', 'pagedown', 'paintmap', 'parallel', 'parallelly', 'pdftools', 'pg13', 'pillar', 'pinp', 'pkgbuild', 'pkgconfig', 'pkgdown', 'pkgload', 'plogr', 'plotly', 'plyr', 'png', 'police', 'polite', 'polyester2', 'polyesterData', 'postfixR', 'praise', 'preQL', 'prettyunits', 'processx', 'progress', 'promises', 'pryr', 'ps', 'pubmedSearchData', 'purrr', 'qpdf', 'R.cache', 'R.methodsS3', 'R.oo', 'R.rsp', 'R.utils', 'r4ds', 'R6', 'ragg', 'rappdirs', 'raster', 'ratelimitr', 'rcmdcheck', 'RColorBrewer', 'Rcpp', 'RcppArmadillo', 'RCurl', 'rdflib', 'readi', 'readr', 'readxl', 'redland', 'rematch', 'rematch2', 'remotes', 'reprex', 'reshape2', 'rex', 'rJava', 'rlang', 'rmarkdown', 'rMarkedDown', 'RMySQL', 'robotstxt', 'rols', 'roxygen2', 'rpart', 'rprojroot', 'rsconnect', 'RSelenium', 'RSQLite', 'rstudioapi', 'rubix', 'rvcheck', 'rversions', 'rvest', 'scales', 'seagull', 'secretary', 'selectr', 'semver', 'servr', 'sessioninfo', 'setupAthena', 'setupMetathesaurus', 'shiny', 'showtext', 'showtextdb', 'sinew', 'skyscraper', 'sos', 'sourcetools', 'sp', 'spatial', 'spelling', 'spiderbar', 'splines', 'SqlRender', 'stampede', 'stats', 'stats4', 'stringi', 'stringr', 'styler', 'survival', 'suzyBakeOven', 'sys', 'sysfonts', 'systemfonts', 'tcltk', 'tesseract', 'testthat', 'textshaping', 'tibble', 'tidyr', 'tidyselect', 'tidyverse', 'tinytex', 'tools', 'triebeard', 'typewriteR', 'uptodate', 'urltools', 'usethis', 'utf8', 'utils', 'uuid', 'V8', 'vctrs', 'viridis', 'viridisLite', 'vitae', 'waldo', 'wdman', 'webshot', 'websocket', 'whisker', 'withr', 'WrapRmd', 'xfun', 'xlsx', 'xlsxjars', 'XML', 'xml2', 'xopen', 'xtable', 'yaml', 'zip')
installed_packages <- installed.packages()[,1]
packages_to_install <- 
  packages_to_install[!(packages_to_install %in% installed_packages)]
errors <- vector()
for (i in seq_along(packages_to_install)) {
  secretary::typewrite(
    secretary::enbold(packages_to_install[i])
  )
  secretary::typewrite_progress(
    iteration = i,
    total = length(packages_to_install)
  )
  output <-
    tryCatch(
      expr = install.packages(packages_to_install[i]),
      error = function(e) "Error"
    )
  
  if (identical(output, "Error")) {
    
    errors <-
      c(errors,
        packages_to_install[i])
  }
}

errors <- vector()
for (i in 1:length(packages_to_install)) {
  secretary::typewrite(
    secretary::enbold(packages_to_install[i])
  )
  secretary::typewrite_progress(
    iteration = i,
    total = length(packages_to_install)
  )
  output <-
    tryCatch(
      expr = devtools::install_github(
        glue::glue("meerapatelmd/{packages_to_install[i]}"),
        build_vignettes = TRUE),
      error = function(e) "Error"
    )
  
  if (identical(output, "Error")) {
    errors <-
      c(errors,
        packages_to_install[i])
  }
}



enterprise_repos <-
  c("grand-central-station",
    "escritoire",
    "concept-mapping",
    "teamworkR",
    "mskExtractR",
    "mskSetup",
    "fantasia")

i <- 0
for (enterprise_repo in enterprise_repos) {
  i <- i+1
  secretary::typewrite_progress(iteration = i,
                                total = length(enterprise_repos))
  system(command = 
           glue::glue("cd\ncd ~/GitHub/enterprise\ngit clone https://github.mskcc.org/patelm9/{enterprise_repo}.git"))
}
