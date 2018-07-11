class DashboardController < ApplicationController
  def show
    user = User.find(params[:id])
    conn = Faraday.new(url: 'https://api.github.com')
    response  = conn.get do |req|
      req.url '/user'
      req.headers['Authorization'] = "token #{user.token}"
    end
    @parsed = JSON.parse(response.body)
  end
end
