#' Calculating the Energy that is produced by a Photovoltaic System
#' 
#' @description 
#' `energy_prod`(kWh) shows the approximate amount of energy produced depending
#' area covered (m2) and the average annual solar radiation (kWh)
#' 
#' @details 
#' This is a simple function that lets you calculate the energy that is
#' produced by a solar panel depending on the amount of area (m2) that is covered.
#' Here, this function assumes the panel yield and performance ratio that is seen
#' in most panels. These numbers are listed as below:
#' 
#' - `panel_yield` = 0.2
#' - `perf_ratio` = 0.75
#' 
#' The `area` and `sol_rad` parameters should be inputted towards the user's
#' specifications in order to get an accurate estimate of the amount of energy
#' they are creating.
#' 
#' 
#' @param area Solar panel area (m2)
#' @param panel_yield Panel yield (0-1) (Manufacture efficiency - usually around 0.2)
#' @param perf_ratio Performance ratio (0-1) (accounting for site factors that impact efficiency usually around 0.75)
#' @param sol_rad annual average solar radiation (kWh)
#' 
#' 
#' @return 
#' @export
#'
#' @examples
#' energy_prod(area = 100, sol_rad = 4.5)
energy_prod <- function(area, panel_yield = 0.2, perf_ratio = 0.75, sol_rad){
  energy_yield = (area * panel_yield * perf_ratio * sol_rad)
  print(energy_yield)
}

energy_prod(area = 150, sol_rad = 4.5)
