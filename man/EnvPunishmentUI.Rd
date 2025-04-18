% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EnvPunishment.R
\name{EnvPunishmentUI}
\alias{EnvPunishmentUI}
\title{环保处罚生成生成器界面}
\usage{
EnvPunishmentUI(
  tabTitle = "环保处罚",
  colTitles = c("操作区域", "操作区域", "显示区域"),
  widthRates = c(6, 6, 12),
  func_left = EnvPunishmentUI_left,
  func_right = EnvPunishmentUI_right,
  func_bottom = EnvPunishmentUI_bottom
)
}
\arguments{
\item{tabTitle}{标题}

\item{colTitles}{主页标题}

\item{widthRates}{左右比例}

\item{func_left}{左函数}

\item{func_right}{右函数}

\item{func_bottom}{下面一栏}
}
\value{
返回值
}
\description{
环保处罚生成生成器界面
}
\examples{
EnvPunishmentUI()
}
