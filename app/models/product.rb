class Product < ApplicationRecord
	has_many :line_items
	has_many :orders, through: :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	validates :name, :description, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :name, uniqueness: true

	private
	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, 'Line Items present')
			throw :abort
		end
	end
end