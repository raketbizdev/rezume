class Profile < ApplicationRecord
	has_many :socials, dependent: :destroy, inverse_of: :profile
	accepts_nested_attributes_for :socials, reject_if: :all_blank, allow_destroy: true

	has_many :awards, dependent: :destroy, inverse_of: :profile
	accepts_nested_attributes_for :awards, reject_if: :all_blank, allow_destroy: true

	has_many :work_experiences, dependent: :destroy, inverse_of: :profile
	accepts_nested_attributes_for :work_experiences, reject_if: :all_blank, allow_destroy: true

	has_many :educations, dependent: :destroy, inverse_of: :profile
	accepts_nested_attributes_for :educations, reject_if: :all_blank, allow_destroy: true

	has_many :skills, dependent: :destroy, inverse_of: :profile
	accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true

end
