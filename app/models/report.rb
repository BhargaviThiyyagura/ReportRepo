class Report < ActiveRecord::Base
    establish_connection (:development)
    self.table_name = 'SALES_TREND'
end