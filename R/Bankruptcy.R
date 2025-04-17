#' 破产重整生成生成器界面
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
#' BankruptcyUI()
BankruptcyUI <- function(tabTitle ='破产重整',
                           colTitles =c('操作区域','操作区域','显示区域'),
                           widthRates =c(6,6,12),
                           func_left = BankruptcyUI_left,
                           func_right =BankruptcyUI_right,
                           func_bottom = BankruptcyUI_bottom
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
#' BankruptcyUI_left()
BankruptcyUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_Bankruptcy_CompanyName',label ='公司名称' ,value ='' ),

    tsui::mdl_date(id = 'text_Bankruptcy_Date',label ='查询日期'  )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' BankruptcyUI_bottom()
BankruptcyUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_Bankruptcy_select',label = '查询'),

    tsui::mdl_download_button(id = 'dl_Bankruptcy',label = '下载破产重整至EXCEL')



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' BankruptcyUI_bottom()
BankruptcyUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'Bankruptcy_resultView',label ='结果显示' ))

  )
  return(res)

}
