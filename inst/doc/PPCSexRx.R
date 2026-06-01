## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment  = "#>"
)
library(PPCSexRx)

## ----cs1-screen---------------------------------------------------------------
screen_ppcs(
  age              = 16,
  days_post_injury = 35,
  vestibular_symptoms = FALSE,
  cervical_symptoms   = FALSE
)

## ----cs1-prescribe------------------------------------------------------------
rx_gold <- prescribe_ppcs(
  age              = 16,
  days_post_injury = 35,
  hrst             = 145,
  vestibular_symptoms = FALSE,
  cervical_symptoms   = FALSE
)
rx_gold

## ----cs2-screen---------------------------------------------------------------
screen_ppcs(
  age              = 14,
  days_post_injury = 20,
  vestibular_symptoms = FALSE,
  cervical_symptoms   = FALSE
)

## ----cs2-prescribe-stop, error = TRUE-----------------------------------------
try({
prescribe_ppcs(
  age              = 14,
  days_post_injury = 20,
  vestibular_symptoms = FALSE,
  cervical_symptoms   = FALSE
)
})

