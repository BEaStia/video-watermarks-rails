FactoryGirl.define do
  factory :video do
    name { FFaker::LoremRU.words(10)}
    watermark { FFaker::LoremRU.words(10) }
  end
end
