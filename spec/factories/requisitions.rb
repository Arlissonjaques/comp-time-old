FactoryBot.define do
  factory :requisition do
    description { Faker::Lorem.sentence }
    reason_refusal { nil }
    status { 'on_approval' }
    time { Time.now }
    type_requisition { 'addition' }
  end
end