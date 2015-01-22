class User < ActiveRecord::Base
  has_secure_password
  serialize :roles, Array

  class << self
    def sign_in(params)
      find_by(username: params[:username]).try(:authenticate, params[:password])
    end
  end
end
