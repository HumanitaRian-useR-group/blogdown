# https://bookdown.org/yihui/blogdown/installation.html

## Install from CRAN
#install.packages("blogdown")

#blogdown::install_hugo(force = TRUE)

#blogdown::new_site()

## The content directory (by default, content/).
# This is where you write the R Markdown or Markdown source files for your posts and pages

blogdown::serve_site()

## The publishing directory (by default, public/). Your website will be generated to this directory,
# meaning that you do not need to manually add any files to this directory


# “New Post”: This addin provides a dialog box for you to enter the metadata of your blog post,
# including the title, author, date, and so on

#blogdown::new_post()
