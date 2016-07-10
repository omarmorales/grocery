require 'rails_helper'

RSpec.describe MyEmail, type: :model do
  it{ should validate_presence_of(:email).with_message"Woops! parace que olvidaste colocar el correo." }
  it{ should validate_uniqueness_of(:email).with_message"Este correo ya fue utilizado." }

  it "should not create with invalid email" do
  	email = MyEmail.new(email:"saul")
  	expect(email.valid?).to be_falsy 
  end

  it "should not create with invalid email" do
  	email = MyEmail.new(email:"saul@gmail.com")
  	expect(email.valid?).to be_truthy
  end
end