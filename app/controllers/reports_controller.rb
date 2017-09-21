class ReportsController <ApplicationController
    def index
        @sales = Report.all.order('SLS_PROC_WRK_DT DESC')
        

        # @mshslssummary = Report.find(:all, 
        #                              :select => 'SLS_PROC_WRK_DT,SUM(WAC) WAC , SUM(SDC) SDC, SUM(SF) SF,SUM(SSF) SSF, SUM(QTY) QTY,SUM(SALES) SALES'
        #                              :group => 'SLS_PROC_WRK_DT'
        #                              :conditions => ['COMPANY_CODE = ?', '8525']
        #                              :order => 'SLS_PROC_WRK_DT'
        #                              )

        #@mshsales = Report.where('COMPANY_CODE IN (8525)')
        #Student.select("SUM(students.total_mark) AS total_mark, SUM(students.marks_obtained) AS marks obtained").where(:id=>student_id)
        @mshslssummary = Report.select(:SLS_PROC_WRK_DT,:COMPANY_CODE,"SUM(WAC) AS WAC"  , "SUM(SDC) AS SDC", "SUM(SF) AS SF","SUM(SSF) AS SSF", "SUM(QTY) AS QTY","SUM(SALES) AS SALES").where('COMPANY_CODE IN (8525)').group(:SLS_PROC_WRK_DT,:COMPANY_CODE)

   

        respond_to do |format|
            format.html
            format.xlsx {
                response.headers['Content-Disposition'] = 'attachment; filename="sales_report.xlsx"'
            }

        end   
    end    
end