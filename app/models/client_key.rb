class ClinetKey < ApplicationRecord
  
  belongs_to :project

  validates :name, presence: true
  validates :is_active, inclusion: {in: [true, false]}
  validates :public_key, presence: true, uniqueness: true

end
