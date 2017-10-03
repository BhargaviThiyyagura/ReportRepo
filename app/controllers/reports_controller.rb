class ReportsController <ApplicationController
    def index
        # @sales = SalesTrend.all.order('sls_proc_wrk_dt desc')
        
        # @mshslssummary = Report.find(:all, 
        #                              :select => 'SLS_PROC_WRK_DT,SUM(WAC) WAC , SUM(SDC) SDC, SUM(SF) SF,SUM(SSF) SSF, SUM(QTY) QTY,SUM(SALES) SALES'
        #                              :group => 'SLS_PROC_WRK_DT'
        #                              :conditions => ['COMPANY_CODE = ?', '8525']
        #                              :order => 'SLS_PROC_WRK_DT'
        #                              )

        #@mshsales = Report.where('COMPANY_CODE IN (8525)')
        
        @salessummary = SalesTrend.select(:sls_proc_wrk_dt,:yr_mnth,:program,:company_code, "SUM(wac) AS wac"  , "SUM(sdc) AS sdc", "SUM(sf) AS sf","SUM(ssf) AS ssf", "SUM(sls_qty) AS qty","SUM(sls_amt) AS sales").group(:sls_proc_wrk_dt,:yr_mnth,:program,:company_code).order('sls_proc_wrk_dt desc')
        @mshslssummary = SalesTrend.select(:sls_proc_wrk_dt,:company_code,"SUM(WAC) AS WAC"  , "SUM(wac) AS wac"  , "SUM(sdc) AS sdc", "SUM(sf) AS sf","SUM(ssf) AS ssf", "SUM(sls_qty) AS qty","SUM(sls_amt) AS sales").where('COMPANY_CODE IN (8525)').group(:sls_proc_wrk_dt,:company_code).order('sls_proc_wrk_dt desc')
        #@slstrend = SalesTrend.select(:sls_proc_wrk_dt, "SUM(sls_amt) AS sales", "SUM(wac) AS wac", " '' as sls_diff", "'' as sales_to_wac").group(:sls_proc_wrk_dt).order('sls_proc_wrk_dt')


            @slstrend = SalesToWac.all.order('sls_proc_wrk_dt')
         
          binding.pry

        respond_to do |format|
            format.html
            format.xlsx {
                response.headers['Content-Disposition'] = 'attachment; filename="sales_report.xlsx"'
            }

        end   
    end    
end