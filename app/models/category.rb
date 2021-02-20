class Category < ApplicationRecord
	has_many :sub_categories
	
	NAME = {
		"Home Applicances" => {"home_applicances" => {"Catel" => "catel", "Lamp" => "lamp"}},
		"Electonics" => "electonics",
		"Furniture" => "furniture"
	}
end
