module ApplicationHelper
	def reduce_text(text)
		text.split(" ")[0..10].join(" ")+" ... [leer más]"
	end

	def banner_top_home(banners)
    if banners.any?
      banner_top = banners.where(location_top: true)
      if banner_top.any?
        banner = banner_top.sample
        banner.views = banner.views.to_i + 1
        banner.save!

        if banner.link.present?
          "<a href='#{banner.link}' target='_blank'><div class='ui panorama centered ad' style='background: url(#{banner.image_top.url(:normal)}); background-size: cover;'></div></a>".html_safe
        else
          "<div class='ui panorama centered ad' style='background: url(#{banner.image_top.url(:normal)}); background-size: cover;'></div>".html_safe
        end

      end
    end
  end

  def banner_horizontal(banners)
    result = []
    if banners.any?
      horizontal = banners.where(location_horizontal: true)
      if horizontal.any?
        horizontal.each do |banner|
          banner.views = banner.views.to_i + 1
          banner.save!

          if banner.link.present?
            result << "<a href='#{banner.link}' target='_blank'><div class='ui top banner ad' style='background: url(#{banner.image_horizontal.url(:normal)}); background-size: cover;'></div></a>".html_safe
          else
            result << "<div class='ui top banner ad' style='background: url(#{banner.image_horizontal.url(:normal)}); background-size: cover;'></div>".html_safe
          end
        end
      end
    end
    result.shuffle
  end
end
