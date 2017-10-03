class CreateSalesTrend < ActiveRecord::Migration[5.1]
  def change
    create_table :sales_trends, id: false do |t|
            t.date :sls_proc_wrk_dt
            t.string :yr_mnth
            t.string :program
            t.string :company_code
            t.string :program_type
            t.string :splr_acct_id
            t.string :splr_acct_nam
            t.string :sap_sold_to
            t.string :cust_chn_id
            t.string :cust_chn_nam
            t.string :segment
            t.string :fill_dc_id
            t.numeric :sls_qty
            t.numeric :sls_amt
            t.numeric :sdc
            t.numeric :wac
            t.numeric :sf
            t.numeric :ssf
            t.integer :report_id
      
            t.timestamps
            
          
    end
  end
end
