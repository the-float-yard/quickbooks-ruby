module Quickbooks
  module Model
    # Refer to: https://developer.intuit.com/docs/0100_accounting/0300_developer_guides/change_data_capture
    class InvoiceChange < BaseModel
      XML_NODE = "Invoice"

      xml_accessor :id, :from => 'Id', :as => Integer
      xml_accessor :status, :from => '@status'
      xml_accessor :meta_data, :from => 'MetaData', :as => MetaData
    end
  end
end