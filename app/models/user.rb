class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_one :profile
  has_many :conversations, :foreign_key => :sender_id
  acts_as_liker
  acts_as_likeable
  
  # after_create :create_default_conversation


  # private

  # # for demo purposes

  # def create_default_conversation
  #   Conversation.create(sender_id: 1, recipient_id: self.id) unless self.id == 1
  # end
end
