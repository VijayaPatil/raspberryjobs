require "httparty"

class JobdetailsController < ApplicationController
  include HTTParty
  base_uri "http://api.careerbuilder.com"

  def index
  end

  def show
    @jobdetail = jobdetail(:DID => params[:jobDID])
  end

  def apply
    @jobDID = "J3H1CQ6G7W3C751X29V"
    @form = LoadApplicationForm(:DID => @jobDID)
  end

end
