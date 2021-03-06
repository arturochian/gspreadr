% Generated by roxygen2 (4.0.2): do not edit by hand
\name{fill_missing_tbl}
\alias{fill_missing_tbl}
\title{Fill in missing tuples for lookup table}
\usage{
fill_missing_tbl(lookup_tbl, row_min = 1, col_min = 1, row_only = FALSE)
}
\arguments{
\item{lookup_tbl}{data frame returned by \code{\link{get_lookup_tbl}}}

\item{row_min}{top-most row to start}

\item{col_min}{left-most column to start}

\item{row_only}{\code{logical}, set to \code{TRUE} to fill missing rows only}
}
\description{
The lookup table returned by get_lookup_tbl may contain missing tuples
for empty cells. This function fills in the table so that there is a tuple
for every row down to the bottom-most row of every column or every column
up to the right-most column of every row.
}

