#' 股权冻结生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' EquityFreezeUI()
EquityFreezeUI <- function(tabTitle ='股权冻结',
                             colTitles =c('操作区域','操作区域','显示区域'),
                             widthRates =c(6,6,12),
                             func_left = EquityFreezeUI_left,
                             func_right =EquityFreezeUI_right,
                             func_bottom = EquityFreezeUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' EquityFreezeUI_left()
EquityFreezeUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_EquityFreeze_CompanyName',label ='公司名称' ,value ='' ),

    tsui::mdl_date(id = 'text_EquityFreeze_Date',label ='查询日期'  )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' EquityFreezeUI_bottom()
EquityFreezeUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_EquityFreeze_select',label = '查询'),

    tsui::mdl_download_button(id = 'dl_EquityFreeze',label = '下载股权冻结至EXCEL')



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' EquityFreezeUI_bottom()
EquityFreezeUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'EquityFreeze_resultView',label ='结果显示' ))

  )
  return(res)

}
