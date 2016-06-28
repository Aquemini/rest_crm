FactoryGirl.define do
  factory :shipment do
    order_id 1
    order_detail_id 1
    cost 1.5
    courier_response "MyString"
  end
end
