# flickr.rb

module FlickrHelper
  def flickr(full_size_url, gallery, tiny_size_url)
    tiny_size_url ||= "#{full_size_url}_s"
  	html = ""
  	html << %(<a href="#{full_size_url}.jpg" rel="lightbox[#{gallery}]">\n)
  	html << %(  <img src="#{tiny_size_url}.jpg" alt="" />\n)
  	html << %(</a>)
    html
  end
end  # module FlickrHelper

Webby::Helpers.register(FlickrHelper)

# EOF
