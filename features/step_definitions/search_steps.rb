Given /^the following movies exist:$/ do |table|
  table.hashes.each do |movie|
    Movie.create(:title => movie['title'], :rating => movie['rating'], :director => movie['director'], :release_date => movie['release_date'])
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |title, director|
  movie = Movie.find_by_title(title)
  movie.director.should == director
end
# try this again
