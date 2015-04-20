class Request < ActiveRecord::Base
	has_one    :ob_request, dependent: :destroy
	has_one    :leave_request, dependent: :destroy
	has_one    :ot_request, dependent: :destroy
	has_one    :ut_request, dependent: :destroy
	has_one    :offset_request, dependent: :destroy
 	accepts_nested_attributes_for :ob_request, allow_destroy: true
 	accepts_nested_attributes_for :leave_request, allow_destroy: true
 	accepts_nested_attributes_for :ot_request, allow_destroy: true
 	accepts_nested_attributes_for :ut_request, allow_destroy: true
 	accepts_nested_attributes_for :offset_request, allow_destroy: true
end