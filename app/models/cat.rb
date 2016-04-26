class Cat < ActiveRecord::Base
    validates :name, presence: true,
                    length: { minimum: 3 },
                    format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
                    
    validates :color, presence: true,
                    length: { minimum: 3 },
                    format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    
    validates :race, presence: true,
                    length: { minimum: 5 },
                    format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
