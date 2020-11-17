require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'event model features', type: :model do

    context 'if the name and password of the user are described' do
      it 'validation passes' do
        # Here's what you need to know
        user = User.new( name: 'user1', email: 'user1@gmail.com', password: 'password', admin: 1)
        expect(user).to be_valid
      end
    end
  end

end
