class WorkExperience < ApplicationRecord
  belongs_to :profile

  has_many :responsibilities, dependent: :destroy
  accepts_nested_attributes_for :responsibilities, reject_if: :all_blank, allow_destroy: true
end
