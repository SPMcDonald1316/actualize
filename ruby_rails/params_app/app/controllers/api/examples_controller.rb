class Api::ExamplesController < ApplicationController
  def query 
    @username = params['name']
    render 'query_params.json.jb'
  end
end
