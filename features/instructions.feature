Feature: Regression test for TRU
  # TRU 2_1
  Scenario: Verify that user can add any item to the cart
    Then Click category Age
    Then Click the subcategory 2 - 4 Years
    Then Select 2 available item on the page
    Then Click Add to Cart
    Then Verify 1 item added to the Cart

  # TRU 2_2
  Scenario: Add 2 item to the cart for category Brand from different subcategories
    Then Click category Brand
    Then Select 1 subbrand
    Then Click the subcategory Dinosaurs
    Then Select 1 available item on the page
    Then Click Add to Cart
    Then Click Shop by
    Then Click category Brand
    Then Select 2 subbrand
    Then Select 1 available item on the page
    Then Click Add to Cart
    Then Verify 2 item added to the Cart


  # TRU 2_3
  Scenario: Add 2 identical item to the cart for category Clearance
    Then Click category Clearance
    Then Click the subcategory Action Figures
    Then Select 1 available item on the page
    Then Click 2x Add to Cart
    Then Verify 2 item added to the Cart


  # TRU 2_4
  Scenario: Add 1 item from the category Age and 1 item from the category Brand
    Then Click category Age
    Then Click the subcategory 2 - 4 Years
    Then Select 1 available item on the page
    Then Click Add to Cart
    Then Click Shop by
    Then Click category Brand
    Then Select 2 subbrand
    Then Select 1 available item on the page
    Then Click Add to Cart
    Then Verify 2 item added to the Cart


  # TRU 2_5
  Scenario: Remove item from the Cart
    Then Click category Age
    Then Click the subcategory 2 - 4 Years
    Then Select 1 available item on the page
    Then Click Add to Cart
    Then Click My Cart
    Then Click remove
    Then Verify 0 item added to the Cart

  # TRU 3_1
  Scenario: Add 2 identical items to the cart for category Age SubCategory 5-7 years old
    Then Click category Age
    Then Click the subcategory 5 - 7 Years
    Then Select 1 available item on the page
    Then Click 2x Add to Cart
    Then Verify 2 item added to the Cart

  # TRU 3_2
  Scenario: Add 3-d item to the cart for category Girls' toys 8-11 years old
    Then Click category Girls' Toys
    Then Select 8-11 Years category
    Then Select 3 available item on the page
    Then Click Add to Cart
    Then Verify 1 item added to the Cart

  # TRU 3_3
  Scenario: Add 2 item from the category Clearance/ Action Figure
    Then Click category Clearance
    Then Click the subcategory Action Figures
    Then Select 1 available item on the page
    Then Click Add to Cart
    Then Click back
    Then Select 2 available item on the page
    Then Click Add to Cart
    Then Verify 2 item added to the Cart

  # TRU 3_4
  Scenario: Check navigation to the Weekly Add page
    Then Top Navigate Weekly Ad

  # TRU 3_5
  Scenario: Check navigation to the Gift Finder
    Then RegBar Navigate Gift Finder

  # TRU 5_1
  Scenario: Search for the dress and verify that first displays dress
    Then Enter Doll inside the search
    Then Verify that first displayed item contain word Doll

  # TRU 5_2
  Scenario: Identify item with 5 stars review
    Then Click category Age
    Then Click the subcategory 2 - 4 Years
    Then Verify 5.0 stars review

  #  TRU 5_3
  Scenario: Find topic displayed on the button of the TRU home page
    Then Click Your Order on the button of the TRU HP

  # TRU 6
  Scenario: Register user
    Then RegBar Navigate My Account / Sign In
    Then Click the Sign In in the dropDown
    Then Enter Valid information into email field
    Then Enter valid information into the password field
    Then Enter valid information into verify password field
    Then Click the “SignIn” button
    Then Expected result: User is signed in

  #TRU 8
  Scenario: Mouse moving
    Then Move to the category Age and Subcategory Big Kids
    Then Select 1 available item on the page
    Then On the PDP click the twitter icon
    Then Verify new page opens up

  #TRU 9
  Scenario: Loop
    Then Move to the category Age and Subcategory Big Kids
    Then I create simple loop

  # TRU 9_1
  @accept
  Scenario: Loop 2
    Then Move to the category Age and Subcategory Big Kids
    Then Arrow loop

  #Amazon 10
  Scenario: Amazon
    Then Open Amazon
    Then Enter Books into search field
    Then Collect 5 stars books with prime option

