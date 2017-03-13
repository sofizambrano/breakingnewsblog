class Article < ApplicationRecord
	validates :headline, :length => { maximum: 250 }
	has_many :comments, dependent: :destroy

	def text_to_show
		new_text = ''
		if self.body.length > 1000
			words = self.body.split
			words.each do |word|
				if new_text.length < 1000
					new_text << ' '
					new_text << word
				end
			end
			new_text << '...'
		else
			new_text = self.body
		end

		return new_text
	end
end
