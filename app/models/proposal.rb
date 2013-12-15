class Proposal < ActiveRecord::Base
  after_initialize :set_uuid

  attr_readonly :uuid

  validates_presence_of :uuid, :name, :title, :bio, :residence,
    :email, :talk_title, :talk_description
  validates_inclusion_of :needs_travel_assistance, in: [true, false]

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end

  def to_param
    uuid
  end
end
