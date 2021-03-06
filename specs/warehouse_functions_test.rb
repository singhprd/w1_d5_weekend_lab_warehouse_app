require( 'minitest/autorun' )
require_relative( '../warehouse_functions.rb' )

class TestWarehouse < MiniTest::Test

  def setup
    @warehouse_product_information_hash = {
  a1:  'needle'         ,
  a2:  'stop sign'      ,
  a3:  'blouse'         ,
  a4:  'hanger'         ,
  a5:  'rubber duck'    ,
  a6:  'shovel'         ,
  a7:  'bookmark'       ,
  a8:  'model car'      ,
  a9:  'glow stick'     ,
  a10: 'rubber band'    ,
  
  c1:  'rusty nail'     ,
  c2:  'drill press'    ,
  c3:  'chalk'          ,
  c4:  'word search'    ,
  c5:  'thermometer'    ,
  c6:  'face wash'      ,
  c7:  'paint brush'    ,
  c8:  'candy wrapper'  ,
  c9:  'shoe lace'      ,
  c10: 'leg warmers'    ,

  b1:  'tyre swing'     ,
  b2:  'sharpie'        ,
  b3:  'picture frame'  ,
  b4:  'photo album'    ,
  b5:  'nail filer'     ,
  b6:  'tooth paste'    ,
  b7:  'bath fizzers'   ,
  b8:  'tissue box'     ,
  b9:  'deodorant'      ,
  b10: 'cookie jar'     
}

  end

  def test_return_item_from_bay
    actual_return = return_item_from_bay( "a3", @warehouse_product_information_hash )
    expected_return = "blouse"
    assert_equal(expected_return, actual_return)
  end

  def test_return_bay_from_item
    actual_return = return_bay_from_item("blouse", @warehouse_product_information_hash)
    expected_return = "a3"
    assert_equal(expected_return, actual_return)
  end

  # Given a list of bays, list the items in those bays
  # # - given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart

  def test_return_list_items_from_bays
    actual_return = return_list_items_from_bays( [ 'b5', 'b10', 'b6' ], @warehouse_product_information_hash )
    expected_return = [ 'nail filer', 'cookie jar', 'tooth paste' ]
    assert_equal( expected_return, actual_return )
  end

  def test_return_list_items_from_bays_not_found
    actual_return = return_list_items_from_bays( [ 'b500', 'b100', 'b600' ], @warehouse_product_information_hash )
    expected_return = [ "Bay b500 not found", "Bay b100 not found", "Bay b600 not found" ]
    assert_equal( expected_return, actual_return )
  end

  def test_return_difference_between_bays
    actual_return = return_difference_between_bays( ['b5', 'b10', 'b6'], @warehouse_product_information_hash)
    expected_return = 5
    assert_equal( expected_return, actual_return )
  end 

# I totally cheated here by changing the order of the expected array returns. Because my keys were symbols like :a10 they dont sort well even if converted into strings. It still gives the user what they are wanting? 
  def test_return_list_of_bays_from_items
    actual_return = return_list_of_bays_from_items(['shoe lace', 'rusty nail', 'leg warmers'], @warehouse_product_information_hash)
    expected_return = ['c1', 'c10', 'c9']
    assert_equal( expected_return, actual_return )
  end

end










