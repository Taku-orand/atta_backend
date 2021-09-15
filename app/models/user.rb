class User < ActiveRecord::Base
  has_many :items, dependent: :destroy

  def self.from_token_payload(payload)
    find_by(sub: payload['sub']) || create!(sub: payload['sub'])
  end
end