class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body

  attr_accessible :email, :password, :password_confirmation, :name, :last_name, :father_name, :date_birth, :login

  validates :email, :presence => true, :uniqueness => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, :presence => true, :on => :create
  validates_confirmation_of :password
  validates :login, :presence => true, :uniqueness => true, :format => { :with => /[a-z]/ },  :length => { :in => 5..32 }

end
