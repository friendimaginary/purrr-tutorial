library(purrr)
load("data/swapi.rda")

ls()

luke <- people[[1]]
luke
luke$starships %>% length()

people %>%
  map( ~ length( .x$starships ))

load("data/planet_lookup.rda")

luke$homeworld
planet_lookup[[luke$homeworld]]

homes <- people %>%
  map( ~ planet_lookup[[.x$homeworld]]) %>%
  unlist
peeps <- people %>%
  map( ~ .x$name ) %>%
  unlist

homes
peeps
library(dplyr)
tbl_df( cbind(peeps, homes))

map_int(people, ~ length(.x$starships))

map_chr(people , ~ .x[["hair_color"]])
map_lgl(people, ~ .x[['gender']] == "male" )
 
map_dbl( people , ~ .x[['mass']] )
map( people, ~ .x$mass ) %>% unlist
library(readr)



people %>% 
  map_dbl( ~ as.numeric( .x$mass ))

films
films[[1]]


films <- set_names( films , films %>% map_chr( ~ .x$title )  ) 
films %>% map( ~ length( .x$characters )) %>% unlist %>% sort 

planet_lookup_2 <-
  planets %>% map_chr(~ .x$name) %>% set_names(planets %>% map_chr(~ .x$url))

species %>% map( ~ .x$eye_colors )

# VIDEO POSITION = ~ 50% , 105 min.



