# app/controllers/api/v1/users.rb
module API
  module V2
    class Users < Grape::API
      version 'v2'
      format :json
      

      resource :users do
        desc "Return list of users"
        get do
          User.all # obviously you never want to call #all here
        end
      end
    end
  end
end