require 'spec_helper'

feature 'user can create a comment for a specific review', %Q{
  As a authorized user
  I want to comment on a specific review
  so that my opinions are heard
  } do

  scenario 'successfully adds a comment' do
    visit root_path

    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    visit post_path(post)
    prev_count = Comment.count
    click_on "Add a Comment"
    fill_in 'Body', with: comment.body
    click_on 'Submit Comment'

    expect(page).to have_content 'Comment was successfully added'
    expect(page).to have_content(comment.body)
    expect(Comment.count).to eq(prev_count + 1)
  end

end
