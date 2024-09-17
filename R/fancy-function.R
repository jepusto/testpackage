internal_fun <- function(data, formula) {
  stats::model.matrix(formula, data = data)
}


#' @title Some fancy stuff
#'
#' @description Wowzers
#'
#' @param data \code{data.frame}
#' @param formula A formula involving variables in data
#' @param ... further unused arguments.
#'
#' @returns A model frame including all predictors on the right-hand side of \code{formula}.
#'
#' @export
#'
#' @examples
#' fancy_function(data = mtcars, formula = cyl ~ disp)

fancy_function <- function (data, formula, ...) {
  cl <- match.call()
  mf <- match.call(expand.dots = FALSE)
  m <- match(c("data", "formula"), names(mf), 0L)
  mf <- mf[c(1L, m)]
  mf[[1L]] <- quote(internal_fun)
  mf <- eval(mf, parent.frame())

  return(mf)
}

#' @title Some fancy stuff
#'
#' @description Wowzers
#'
#' @param data \code{data.frame}
#' @param formula A formula involving variables in data
#' @param ... further unused arguments.
#'
#' @returns A model frame including all predictors on the right-hand side of \code{formula}.
#'
#' @export
#'
#' @examples
#' fancier_function(data = mtcars, formula = cyl ~ disp)

fancier_function <- function (data, formula, ...) {
  cl <- match.call()
  mf <- match.call(expand.dots = FALSE)
  m <- match(c("data", "formula"), names(mf), 0L)
  mf <- mf[c(1L, m)]
  mf[[1L]] <- str2lang("testpackage:::internal_fun")
  mf <- eval(mf, parent.frame())

  return(mf)
}
