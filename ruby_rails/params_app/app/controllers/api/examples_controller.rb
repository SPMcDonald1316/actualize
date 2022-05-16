class Api::ExamplesController < ApplicationController
  def query
    render 'query_params.json.jb'
  end
end
