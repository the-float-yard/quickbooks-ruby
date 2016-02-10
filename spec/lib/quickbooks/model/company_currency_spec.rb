describe "Quickbooks::Model::CompanyCurrency" do
  it "parse from XML" do
    xml = fixture("company_currency.xml")
    company_currency = Quickbooks::Model::CompanyCurrency.from_xml(xml)
    company_currency.id.should == "2"
    company_currency.sync_token.should == 0

    company_currency.meta_data.should_not be_nil
    company_currency.meta_data.create_time.should == DateTime.parse("2015-06-05T13:59:42-07:00")
    company_currency.meta_data.last_updated_time.should == DateTime.parse("2015-06-05T13:59:42-07:00")
    puts company_currency.inspect
    company_currency.name.should == "Euro"
    company_currency.code.should == "EUR"
    company_currency.active?.should == true
  end
end
