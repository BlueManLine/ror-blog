class User < ActiveRecord::Base

    validates :email, :presence => true, :email => true

    def status_enum
        [['unactive',0],['active',1],['banned',2]]
    end

    rails_admin do
        list do
          field :id
          field :status
          field :email
          field :nick
          field :ip_login
          field :ip_created
          field :created_at
          field :updated_at
        end
        create do

            exclude_fields :activation_hash, :ip_login, :ip_created
            
            field :status do
                required true
            end
            field :email do
                required true
            end
            field :nick do
                required true
            end
            field :password do
                required true
            end
        end
        edit do
            field :status do
                required true
            end
            field :email do
                required true
            end
            field :nick do
                required true
            end
            field :password
        end
    end

end