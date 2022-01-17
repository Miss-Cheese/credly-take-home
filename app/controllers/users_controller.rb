class UsersController < ApplicationController
    def index
        users = fetch_users
        render json: users["results"]
    end

    private
    def fetch_users
        url = "https://swapi.dev/api/people"
        uri = URI(url)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(uri.path, {"Content-Type" => "application/json"})
        response = http.request(request)
        body = JSON.parse(response.body)
    end
end
