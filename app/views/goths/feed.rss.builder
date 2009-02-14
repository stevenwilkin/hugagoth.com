xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
	xml.channel do
		xml.title "hug a goth"
		xml.description "because goths need love to"
		xml.link root_url
		xml.lastBuildDate @goths.first.published_at.strftime("%a, %d %b %Y %H:%M:%S %z")
		xml.ttl 240

		@goths.each do |goth|
			xml.item do
				xml.title goth.name
				image = goth_image_full_tag goth
				xml.description image
				xml.pubDate goth.published_at.strftime("%a, %d %b %Y %H:%M:%S %z")
				xml.link goth_permalink_url(goth) 
				xml.guid goth_permalink_url(goth) 
			end
		end

	end
end
