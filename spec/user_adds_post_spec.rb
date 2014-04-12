require 'spec_helper'

feature 'user adds a post', %Q{
  As an MBTA rider
  I want to post a T Story
  so I can share with others
  } do



    scenario 'successfully adds a T story' do

      prev_count = Post.count
      visit new_post_path
      fill_in 'Title', with: "Craziest thing happened today..."
      fill_in 'Content', with: "While on the T, I saw a bear and a dog. It was cute"

      click_on 'Submit T Story'

      expect(page).to have_content 'Post was successfully created.'
      expect(page).to have_content 'Craziest thing'
      expect(Post.count).to eq(prev_count + 1)
    end

    scenario 'enters invalid T story' do

      prev_count = Post.count
      visit new_post_path

      click_on 'Submit T Story'

      expect(page).to have_content "can't be blank"
      expect(Post.count).to eq(prev_count)
    end
end




