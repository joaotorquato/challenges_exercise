require 'rails_helper'

feature 'User starts a challenge' do
  scenario 'successfully' do
    user = create(:user)
    login_as user
    challenge = create(:challenge)

    visit challenge_path(challenge)

    click_on 'Start challenge'

    expect(page).to have_content 'Challenge started'
    expect(page).not_to have_link 'Start challenge'
  end
end
