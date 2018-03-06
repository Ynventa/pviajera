module ApplicationHelper
	def reduce_text(text)
		text.split(" ")[0..10].join(" ")+" ... [leer más]"
	end
end
