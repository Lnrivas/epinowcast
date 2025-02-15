% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model-module-helpers.R
\name{enw_reference_by_report}
\alias{enw_reference_by_report}
\title{Construct a lookup of references dates by report}
\usage{
enw_reference_by_report(
  missing_reference,
  reps_with_complete_refs,
  metareference,
  max_delay
)
}
\arguments{
\item{missing_reference}{\code{missing_reference} data.frame output from
\code{\link[=enw_preprocess_data]{enw_preprocess_data()}}.}

\item{reps_with_complete_refs}{A \code{data.frame} of report dates with complete
(i.e fully reported) reference dates as produced using
\code{\link[=enw_reps_with_complete_refs]{enw_reps_with_complete_refs()}}.}

\item{metareference}{\code{metareference} data.frame output from
\code{\link[=enw_preprocess_data]{enw_preprocess_data()}}.}

\item{max_delay}{Numeric defaults to 20. The maximum number of days to
include in the delay distribution. Computation scales non-linearly with this
setting so consider what maximum makes sense for your data carefully. Note
that this is zero indexed and so includes the reference date and
\code{max_delay - 1} other days.}
}
\value{
A wide data frame with each row being a complete report date and'
the columns being the observation index for each reporting delay
}
\description{
Construct a lookup of references dates by report
}
\seealso{
Helper functions for model modules
\code{\link{add_pmfs}()},
\code{\link{convolution_matrix}()},
\code{\link{enw_reps_with_complete_refs}()},
\code{\link{extract_sparse_matrix}()},
\code{\link{latest_obs_as_matrix}()}
}
\concept{modelmodulehelpers}
