Then(/^I should see "(.*?)" at the cell (\d+), (\d+)$/) do |text, x, y|

  cell = "#{x}:#{y}"

  last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
    td.should contain( text )
  end
end
