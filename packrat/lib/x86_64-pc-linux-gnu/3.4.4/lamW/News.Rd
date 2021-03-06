\name{NEWS}
\alias{NEWS}
\title{NEWS file for the lamW package}

\section{Version 1.3.0 (2017-04-24)}{
  \subsection{Added}{
    \itemize{
      \item Added new package native routine registration.
    }
  }
}

\section{Version 1.2.0 (2016-10-26)}{
  \subsection{Changed}{
    \itemize{
      \item Now using RcppParallel for calculation. Speedup when calculating more than one value at a time should be noticeable, e.g. around a 5x speedup on an 8 core machine. There should be no noticeable change when calculating single values at a time.
    }
  }
}

\section{Version 1.1.1 (2016-05-02)}{
  \subsection{Added}{
    \itemize{
      \item Added testing for proper behavior near 0 due to log in Fritsch step implementation
    }
  }
  \subsection{Fixed}{
    \itemize{
      \item Edited NEWS.Rd so that it shows properly on CRAN
    }
  }
}

\section{Version 1.1.0 (2016-03-15)}{
  \subsection{Changed}{
    \itemize{
      \item Switched from exclusively using Halley iteration to usually using Fritsch iteration resulting in a significant increase in speed in both branches
    }
  }
}

\section{Version 1.0.0 (2015-12-27)}{
  \subsection{Added}{
    \itemize{
      \item Added explicit exportation of headers for use in the \link[lambertW]{LambertW} package (Thanks to Georg M. Goerg).
    }
  }
  \subsection{Changed}{
    \itemize{
      \item Update to initial release
      \item Adjust NEWS to more closely follow \href{http://keepachangelog.com/}{keep a changelog} suggestions
      \item Removed mention of LambertW and its importing \link{gsl} from documentation as it now imports this package

    }
  }
}

\section{Version 0.1-2 (2015-10-07)}{
  \subsection{Added}{
    \itemize{
      \item Have both branches of the function return their respective limits. The main branch returns \code{Inf} when it is passed \code{Inf} and the secondary branch returns -\code{Inf} when it is passed 0 (Thanks to Georg M. Gorg)
    }
  }
  \subsection{Changed}{
    \itemize{
      \item Make unit tests more robust
      \item Update code for tests for equality for changes in \code{testthat} package
    }
  }
}

\section{Version 0.1-1 (2015-05-20)}{
  \subsection{Fixed}{
    \itemize{
      \item Remove extra parenthesis which was causing boolean to be passed to \code{fabs} (thanks to Dr. Brian Ripley)
    }
  }
  \subsection{Added}{
    \itemize{
      \item Added URL and Bugreports to DESCRIPTION
      \item Implemented minor optimizations to reduce number of needed calculations
      \item Added comments to source explaining Halley step and provenance of numeric coefficients in Pade approximant
      \item Added more robust unit testing
    }
  }
  \subsection{Changed}{
    \itemize{
      \item Enhanced and cleaned documentation
      \item Cleaned up source code from unnecessary comments
    }
  }
}

\section{Version 0.0-1 (2015-05-19)}{
  \itemize{
    \item Initial release
  }
}