class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true
    scope :custom_display, -> { order(:created_at).last(20) } #GIVES YOU THE LAST 20 MESSAGES TO DISPLAY, TIED TO CHATROOM CONTROLLER AND CHATROOM INDEX
end
