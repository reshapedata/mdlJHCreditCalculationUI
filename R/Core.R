#' 基本信息生成生成器界面
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
#' CoreUI()
CoreUI <- function(tabTitle ='基本信息',
                                colTitles =c('操作区域','操作区域','显示区域'),
                                widthRates =c(6,6,12),
                                func_left = CoreUI_left,
                                func_right =CoreUI_right,
                                func_bottom = CoreUI_bottom
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
#' CoreUI_left()
CoreUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_Core_CompanyName',label ='公司名称' ,value ='' ),

    tsui::mdl_date(id = 'text_Core_Date',label ='查询日期'  )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' CoreUI_bottom()
CoreUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_Core_select',label = '查询'),

    tsui::mdl_download_button(id = 'dl_Core',label = '下载基本信息至EXCEL')



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' CoreUI_bottom()
CoreUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'Core_resultView',label ='结果显示' ))

  )
  return(res)

}
