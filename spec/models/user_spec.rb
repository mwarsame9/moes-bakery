require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :products }
  it { should have_many :reviews }
  it { should validate_presence_of :encrypted_password }
  it { should validate_presence_of :email }
  # pending "add some examples to (or delete) #{__FILE__}"

end
