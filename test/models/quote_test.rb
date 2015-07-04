require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => "Myo Kyaw", :saying => "You start thinking how yolo.")
		expected = "MK#" + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end

end
