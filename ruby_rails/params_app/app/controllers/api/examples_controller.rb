class Api::ExamplesController < ApplicationController
  def query 
    @username = params['name']
    render 'query_params.json.jb'
  end

  def body_parameters
    @input = params
    render 'api/examples/body_params'
  end
end
