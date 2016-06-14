require 'rails_helper'

describe Challenge do
  describe '#started_by?' do
    it 'started by some user' do
      user = create(:user)
      challenge = create(:challenge, users: [user])
      expect(challenge.started_by?(user)).to be_truthy
    end

    it 'not started' do
      challenge = create(:challenge)
      expect(challenge.started_by?(nil)).to be_falsy
    end

    it 'started by another user' do
      user = create(:user)
      another_user = create(:user, email: 'aryastark@gmail.com')
      challenge = create(:challenge, users: [another_user])
      expect(challenge.started_by?(user)).to be_falsy
    end
  end
end
