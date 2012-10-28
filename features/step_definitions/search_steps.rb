#comment
Given /^the following movies exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |movie|
    Movie.create(:title => movie['title'], :rating => movie['rating'], :director => movie['director'], :release_date => movie['release_date'])
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |title, director|
#  movie = Movie.find_by_title(title)
#  movie.director.should == director
  step %Q{I should see "#{title}"}	
  step %Q{I should see "#{director}"}
end
