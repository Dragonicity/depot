require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Order confirmation", mail.subject
    assert_equal ["MyString"], mail.to
    assert_equal ["depot@example.com"], mail.from
    #assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Order shipped", mail.subject
    assert_equal ["MyString"], mail.to
    assert_equal ["depot@example.com"], mail.from
    #assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
      #mail.body.encoded
  end# 

end
