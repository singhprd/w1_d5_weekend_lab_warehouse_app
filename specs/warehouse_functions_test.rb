require( 'minitest/autorun' )
require_relative('../warehouse_functions.rb')

class TestWareHouse < MiniTest::Test

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

def test_return_bay_item
  actual_return = return_bay_item( "a1", @warehouse_product_information_hash )
  expected_return = "needle"
  assert_equal(expected_return, actual_return)
end

end