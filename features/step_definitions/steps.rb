# ==========================F=U=N=C=T=I=O=N=S===================================================
$mainurl = "http://www.toysrus.com"

#def close_continue
#  element = $driver.find_elements :xpath => "//div[@id = 'mopalLightBox'][@style = 'display: block;']//a[@id = 'mopalContinue']"
#  if element.count > 0
#    element[0].click
#  end
#  sleep 2
#end

def close_random
  element = $driver.find_elements :xpath => "//div[@id = 'bbiModal'][@style = 'display: block;']//div[@id = 'bbiCloseModal']"
  if element.count > 0
    element[0].click
  end
  sleep 2
end

def closepopup
  element_1 = $driver.find_elements :xpath => "//div[@id = 'mopalLightBox'][@style = 'display: block;']//a[@id = 'mopalContinue']"
  element_2 = $driver.find_elements :xpath => "//div[@id = 'bbiModal'][@style = 'display: block;']//div[@id = 'bbiCloseModal']"
  if element_1.count > 0
    element_1[0].click
  elsif element_2.count > 0
    element_2[0].click
  end
end

# =============================================================================

Then /^Click category ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//div[@class = 'categoryWrapper']//a[contains(text(), \"#{x}\")]"
  sleep 2
  element.click
end

Then /^Click the subcategory ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = '#{x}']"
  element.click
end

Then /^Select ([^"]*) available item on the page$/ do |x|
  element = $driver.find_element :xpath => "(//div[@class = 'prodloop-thumbnail']/a/img)[#{x}]"
  element.click
end

Then /^Click Add to Cart$/ do
  element = $driver.find_element :id => "cartAddition"
  element.click
  sleep 2
  closepopup
end

Then /^Click 2x Add to Cart$/ do
  element = $driver.find_element :id => "cartAddition"
  element.click
  element = $driver.find_element :id => "cartAddition"
  element.click
end

Then /^Verify ([^"]*) item added to the Cart$/ do |x|
  $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '#{x}']"
end

Then /^Select ([^"]*) subbrand$/ do |x|
  element = $driver.find_element :xpath => "(//div[@id = 'trus_shopByModule']/div/div/a/img)[#{x}]"
  element.click
end

Then /^Click back$/ do
  $driver.navigate.back
end

Then /^Click Shop by$/ do
  element = $driver.find_element :xpath => "//div[@id = 'mainNav']/a"
  element.click
end

Then /^Click My Cart$/ do
  element = $driver.find_element :xpath => "//div[@id = 'hdrCart']/a"
  element.click
end

Then /^Click remove$/ do
  element = $driver.find_element :id => "remove-1"
  element.click
end

Then /^Select ([^"]*) category$/ do |x|
  element = $driver.find_element :xpath => "//div[@class = 'filter_multiselectAttrib']/a[text() = '#{x}']"
  element.click
end

Then /^Top Navigate ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//div[@id = 'hdrSection1']/ul/li/a[text() = '#{x}']"
  element.click
end

Then /^RegBar Navigate ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//div[@id = 'hdrSection2']//*[text() = \"#{x}\"]"
  element.click
end

Then /^Enter ([^"]*) inside the search$/ do |x|
  element = $driver.find_element :id => "kw"
  element.send_keys "#{x}"
  element = $driver.find_element :id => "goButton"
  element.click
end

Then /^Verify that first displayed item contain word ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//a[@class = 'prodtitle'][contains(text(),'#{x}')]"
end

Then /^Verify ([^"]*) review$/ do |x|
  element = $driver.find_element :xpath => "//div[@class = 'prStars' and text() = \"#{x}\"]"
end

Then /^Click ([^"]*) on the button of the TRU HP$/ do |x|
  element = $driver.find_element :xpath => "//div[@id = 'footerNavTRU']//*[text() = '#{x}']"
  element.click
end

Then /^Click the ([^"]*) in the dropDown$/ do |x|
  element = $driver.find_element :xpath => "//*[@id = 'tipcontentText']//*[text() = '#{x}']"
  element.click
end

Then /^Enter Valid information into email field$/ do
  element = $driver.find_element :id => "emailAddExmpl"
  element.send_keys "useruser1@gmail.com"
end

Then /^Enter valid information into the password field$/ do
  element = $driver.find_element :id => "passwrd"
  element.send_keys "12345678Ww"
end

Then /^Enter valid information into verify password field$/ do
  element = $driver.find_element :id => "confPasswrd"
  element.send_keys "12345678Ww"
end

Then /^Click the “SignIn” button$/ do
  element = $driver.find_element :id => "signUpButton"
  element.click
end

Then /^Expected result: User is signed in$/ do
  $driver.find_element :xpath => "//span[@class = 'loggedIn' and contains(text(), 'Welcome')]"
end

Then /^Click the ([^"]*) element and wait for ([^"]*) to appear$/ do |x, y|
  element = $driver.find_element :xpath => ""
  element.click
  wait = Selenium::WebDriver::Wait.new(:timeout => 40)
  wait.until {element = $driver.find_element :xpath => ""}
  element.click
end

Then /^Move to the category ([^"]*) and Subcategory ([^"]*)$/ do |x, y|
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = '#{x}']"
  sleep 2
  $driver.mouse.move_to element
  element = $driver.find_element :xpath => "//div[@class = 'col1'][./h2/a]//a[@class = 'hdrMenuCat' and text() = '#{y}']"
  element.click
end

Then /^On the PDP click the twitter icon$/ do
  element = $driver.find_element :id => "tweetButton"
  element.click
end

Then /^Verify new page opens up$/ do
  element = $driver.find_element :xpath => "//a[@class = 'alternate-context' and text() = 'Твиттер']"
end

Then /^Verify tweeter window$/ do
  $driver.switch_to.window $driver.window_handles.last
  assert $driver.title == "Post a Tweet on Twitter"
end

Then /^Ok Alert$/ do
  alert = $driver.switch_to.alert
  alert.accept
  alert.dismiss
end

Then /^Dismiss Alert$/ do
  alert = $driver.switch_to.alert
  alert.dismiss
end

Then /^Simple loop$/ do
  pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  a = 1
  for i in pages do
    ins_pages = $driver.find_element :xpath => "(//div[@id = 'pagination']//a[@class = 'results pageNumber'])["+a.to_s+"]"
    puts ins_pages.attribute("innerHTML")
    ins_pages.click
    a = a + 1
  end
end

Then /^I create simple loop$/ do
  elements = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
  numpages = elements.count-2
  for e in 2..numpages do
    element = $driver.find_element :xpath => "//a[@class = 'results pageNumber' and text() = '#{e}']"
    element.click
    puts "{e}"
  end
end

Then /^loop for stars$/ do
  pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  count = 1
  for i in pages do
    inspage = $driver.find_element :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']["+count.to_s+"]"
    inspage.click
    sleep 4
    element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]"
    if element.count > 3
      puts "4 stars"
    end
    count = count + 1
  end
end

Then /^Class loop$/ do
  pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  totalpages = pages.count-1
  for i in 0..totalpages do
    elements = $driver.find_elements :xpath => "//div[@class = 'prStars' and text() = '4.0 stars']"
    if elements.count == 0
      raise "No products with 4 stars"
    end
    puts elements
    puts elements.map {|n| n.text}
    pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
    pages[i].click
  end
  elements = $driver.find_elements :xpath => "//div[@class = 'prStars' and text() = '4.0 stars']"
  if elements.count == 0
    raise "No products with 4 stars"
  end
  puts elements.map {|n| n.attribute("innerHTML")}
end

Then /^Arrow loop$/ do
  arrow = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results'][.//span[@class = 'next']]"
  while arrow.count > 0
    arrow[0].click
    arrow = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results'][.//span[@class = 'next']]"
  end
end

Then /^Open Amazon$/ do
  $driver.get "http://www.amazon.com/"
end

Then /^Enter ([^"]*) into search field$/ do |x|
  element = $driver.find_element :id => "twotabsearchtextbox"
  element.send_keys "#{x}"
  element = $driver.find_element :xpath => "//input[@type = 'submit']"
  element.click
end

Then /^Collect 5 stars books with prime option$/ do
  next_page = $driver.find_element :id => "pagnNextString"
  while next_page.enabled? do
    items = $driver.find_elements :xpath => "//div[@class = 's-item-container'][.//span[text() = 'Prime']][.//span[contains(text(), '5 out')]]//h2"
    if items.count == 0
      raise "No product"
    else
      puts items.map {|n| n.text}
    end
    next_page.click
    sleep 10
    next_page = $driver.find_element :id => "pagnNextString"
  end
end

Then /^This is Array$/ do
  array_example = ['dog', 'ant', 'tree']
  puts array_example[1]
  array.push('value')
  array['value'] = 'malue'
end


