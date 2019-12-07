  # describe "the base_hash method returns a Hash that" do
  #   it "has one key" do
  #     expect(base_hash.keys.count).to(eq(1), "Make sure you have at least one key defined in the monopoly hash")
  #   end
def monopoly
  monopoly = {
    railroads: {}
  }
end
# describe "the monopoly_with_second_tier method builds on the Hash returned by base_hash, but updates the inner Hash pointed at by :railroads such that the Hash" do
#     it "has a key called :pieces" do
#       expect(monopoly_with_second_tier[:railroads].has_key?(:pieces)).to(be_truthy, "Make sure the nested hash :railroads has a key called :pieces")
#     end

#     it "has a key, :pieces, points to the Integer value 4" do
#       expect(monopoly_with_second_tier[:railroads][:pieces]).to(eq(4), "Make sure the nested hash :railroads has a key called :pieces whose value is 4")
#     end
#   end

def monopoly_with_second_tier
  #copy and paste the monopoly hash you built in the previous method. We're going to add stuff to it here!
  monopoly = {
    railroads: {
      pieces: 4,
      names: {},
      rent_in_dollars: {}
    }
  }
end

# describe "the monopoly_with_third_tier method builds on the Hash returned by monopoly_with_second_tier, but updates the Hash pointed at by :railroads such that the Hash" do
#     it "has a key called :rent_in_dollars" do
#       expect(monopoly_with_third_tier[:railroads].has_key?(:rent_in_dollars)).to(be_truthy, ":railroads should point to a Hash with key rent_in_dollars")
#     end

#     it ":rent_in_dollars points to a Hash with four keys" do
#       expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].keys.count).to(eq(4), ":railroads :rent_in_dollars Hash should record 4 levels of ownership")
#     end

def monopoly_with_third_tier
	#copy and paste the monopoly hash you built in the previous method. We're going to add stuff to it here!
	monopoly = {
    railroads: {
      pieces: 4,
      names: {
        :reading_railroad => {},
        :pennsylvania_railroad => {},
        :b_and_o_railroad => {},
        :shortline => {}
      },
      rent_in_dollars: {
        :one_piece_owned => 25,
        :two_pieces_owned => 50,
        :three_pieces_owned => 100,
        :four_pieces_owned => 200
      }
    }
  }
end

# describe "the monopoly_with_fourth_tier method builds on the hash returned by monopoly_with_third_tier, but updates the Hash so that each of the :railroads :names keys points to a Hash with a key \"mortgage_value\" that is a String with a $-sign and an Integer after it" do

#     it "reports reading_railroad's mortgage value as $100" do
#       expect(monopoly_with_fourth_tier[:railroads][:names][:reading_railroad]["mortgage_value"]).to eq("$100")
#     end

#     it "sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is also a string, '$200'" do
#       expect(monopoly_with_fourth_tier[:railroads][:names][:pennsylvania_railroad]["mortgage_value"]).to eq("$200")
#     end

def monopoly_with_fourth_tier
  #copy and past the monopoly hash you build in the previous method. We're going to add stuff to it here!
  monopoly = {
    railroads: {
      pieces: 4,
      names: {
        :reading_railroad => {
          "mortgage_value" => "$100"
          },
        :pennsylvania_railroad => {
          "mortgage_value" => "$200"
          },
          :b_and_o_railroad => {
            "mortgage_value" => "$400"
          },
          :shortline => {
            "mortgage_value" => "$800"
          }
      },
      rent_in_dollars: {
        :one_piece_owned => 25,
        :two_pieces_owned => 50,
        :three_pieces_owned => 100,
        :four_pieces_owned => 200
      }
    }
  }
end
