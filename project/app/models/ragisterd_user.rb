class RagisterdUser < WebUser
	accepts_nested_attributes_for :web_user
	has_one :profile
end
