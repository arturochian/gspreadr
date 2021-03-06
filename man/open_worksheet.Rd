% Generated by roxygen2 (4.0.2): do not edit by hand
\name{open_worksheet}
\alias{open_worksheet}
\title{Open worksheet by title or index}
\usage{
open_worksheet(ss, value)
}
\arguments{
\item{ss}{a spreadsheet object containing the worksheet}

\item{value}{a character string for the title of worksheet or numeric for
index of worksheet}
}
\value{
A worksheet object.
}
\description{
Use the title or index of a worksheet to retrieve the worksheet object.
}
\note{
Worksheet indexing starts at 1.
}
\examples{
\dontrun{
ss <- open_spreadsheet("My Spreadsheet")

ws <- open_worksheet(ss, "Sheet1")
ws <- open_worksheet(ss, 1)
}
}

