# == Schema Information
#
# Table name: my_emails
#
#  id         :integer          not null, primary key
#  email      :string
#  ip         :string
#  state      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MyEmail < ApplicationRecord
	validates_presence_of :email, message: "Woops! parace que olvidaste colocar el correo."
	validates_uniqueness_of :email, message: "Este correo ya fue utilizado."
	validates_format_of :email, with: Devise::email_regexp, message: "No enviaste un correo"
end
