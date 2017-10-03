class SalesToWac< ActiveRecord::Base
    establish_connection (:development)
    self.table_name = 'V_SALES_WAC'
    #    def self.all_sales
    #     query = <<-SQL
    #             SELECT V_SALES_WAC.* from V_SALES_WAC
    #             SQL
    #         self.find_by_sql(query)
    #     binding.pry    
    #    end

      # self.connection.execute('SELECT SALES_TREND.* FROM SALES_TREND')
    # def self.all_sales
    #     select("V_SALES_WAC.* from V_SALES_WAC")
    # end
end