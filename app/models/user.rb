class User < ApplicationRecord
    has_secure_password #works only if we have bcrypt: authenticate, password, password=
end