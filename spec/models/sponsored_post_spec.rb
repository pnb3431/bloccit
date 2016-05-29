require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:sponsoredpost) { SponsoredPost.create!(title: "New SponsoredPost Title", body: "New SponsoredPost Body", price: 50) }


    describe "attributes" do
        it "has title, body and price attributes" do
            expect(sponsoredpost).to have_attributes(title: "New SponsoredPost Title", body: "New SponsoredPost Body", price: 50)
        end
    end

 
end
