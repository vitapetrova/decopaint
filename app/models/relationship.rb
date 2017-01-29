class Relationship < ApplicationRecord
  belongs_to :main, class_name: "Product"
  belongs_to :complementary, class_name: "Product"
end
