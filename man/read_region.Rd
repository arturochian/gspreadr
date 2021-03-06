% Generated by roxygen2 (4.0.2): do not edit by hand
\name{read_region}
\alias{read_region}
\title{Get a region of a worksheet by min/max row and column}
\usage{
read_region(ws, from_row, to_row, from_col, to_col, header = TRUE)
}
\arguments{
\item{ws}{worksheet object}

\item{from_row,to_row}{range of rows to extract}

\item{from_col,to_col}{range of cols to extract}

\item{header}{\code{logical} to indicate if the first row should be taken as
the header}
}
\value{
A data frame.
}
\description{
Extract cells of a worksheet by specifying the minimum and maximum rows and
columns. If the specified range is beyond the dimensions of the worksheet,
the boundaries of the worksheet will be used instead.
}
\seealso{
\code{\link{read_all}}, \code{\link{get_row}}, \code{\link{get_rows}},
\code{\link{get_col}}, \code{\link{get_cols}}, \code{\link{read_range}}
}

