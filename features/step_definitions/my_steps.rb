Given(/^Voy a la pagina$/) do
  visit '/'
end

Then(/^visualizo el "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^Voy a jugar$/) do
   visit '/'
end

When(/^hago click en el boton "(.*?)"$/) do |botonLanzar|
  click_button(botonLanzar)
end


Then(/^visualizo numero "(.*?)"$/) do |numero|
	  last_response.body.should =~ /#{numero}/m
end

Then(/^visualizo el total de puntos "(.*?)"$/) do |total|
	  last_response.body.should =~ /#{total}/m
end

When(/^selecciono "(.*?)"$/) do |arg1|
  check(arg1)
end

Then(/^visualizo numero (\d+)$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

Then(/^visualizo en la tabla la fila "(.*?)"$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

Then(/^visualizo "(.*?)"$/) do |arg1|
   last_response.body.should =~ /#{arg1}/m
end

Then(/^no visualizo "(.*?)"$/) do |arg1|
	last_response.body.should =~ /#{arg1}/m
end

When(/^selecciono el link "(.*?)"$/) do |link|
	click_link(link)
end

Then(/^visualizo resultado "(.*?)"$/) do |arg1|
	  last_response.body.should =~ /#{arg1}/m
end
When(/^Puntaje menor a (\d+)$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^visualizo total "(.*?)"$/) do |arg1|
     last_response.body.should =~ /#{arg1}/m
end

Then(/^veo la imagen "(.*?)"$/) do |image_name|
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end

