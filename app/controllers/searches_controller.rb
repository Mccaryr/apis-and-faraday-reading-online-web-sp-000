class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
       req.params['client_id'] = CV424WWIMQLPVHPWJ21DCBPQ3JA0HLRQEL4WD0DYZU1FTOHV
       req.params['client_secret'] = 1L2AUTQ1WB23DD1C22ZFA3HL1WKEIUYFIVP5FAC55JQCUWOH
       req.params['v'] = '20160201'
       req.params['near'] = params[:zipcode]
       req.params['query'] = 'coffee shop'
     end
     render 'search'
   end
