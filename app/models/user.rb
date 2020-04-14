class User < ApplicationRecord
    has_secure_password 
    # need bcrypt

    # validation :username to be unique
end
