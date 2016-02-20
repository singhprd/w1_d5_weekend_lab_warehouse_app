require( 'minitest/autorun' )
require_relative( '../warehouse_functions.rb' )

class TestWarehouse < MiniTest::Test

  def setup

  @warehouse_product_information_hash = {

  a1:  'needle'       ,
  a2:  'stop sign'    ,
  a3:  'blouse'       ,
  a4:  'hanger'       ,
  a5:  'rubber duck'  ,
  a6:  'shovel'       ,
  a7:  'bookmark'     ,
  a8:  'model car'    ,
  a9:  'glow stick'   ,
  a10: 'rubber band'
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

  def test_return_list_items_from_bay
    actual_return = return_list_items_from_bay( [ 'nail filer', 'cookie jar', 'tooth paste'], @warehouse_product_information_hash )
    expected_return = [ 'nail filer', 'cookie jar', 'tooth paste' ]
    assert_equal( expected_return, actual_return )
  end

end










