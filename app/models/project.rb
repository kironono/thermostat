class Project < ApplicationRecord

  belongs_to :organization

  has_many :client_keys

  validates :name, presence: true, uniqueness: { scope: :organization_id }

end
