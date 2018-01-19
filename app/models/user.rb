class User < ApplicationRecord
  EMAIL_FORMAT= /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: { with:EMAIL_FORMAT, message: "邮箱格式错误" },
    length: { in: 2..20 },
    presence: true,
    uniqueness: { case_sensitive: false }
  validates :name,length:{in: 2..10},presence:true
  validates :password,presence: true,length:{ in:6..16 },:on=>:create

  has_many :lands
  has_secure_password

end
