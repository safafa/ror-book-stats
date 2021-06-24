class User < ApplicationRecord
  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, length: { minimum: 6 }, uniqueness: true
  has_many :created_books, foreign_key: 'author_id', class_name: 'Book'
  has_many :groups

  def self.find_for_authentication(warden_condition)
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(['lower(username) = :value OR lower(email) = :value',
                             { value: login.strip.downcase }]).first
  end
end
