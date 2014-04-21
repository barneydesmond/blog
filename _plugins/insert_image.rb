module Jekyll
  class InsertImageTag < Liquid::Tag

    def initialize(tag_name, image_name, tokens)
      super
      @image_name = image_name.strip
    end

    def render(context)
      img_full_path  = context.registers[:site].config['img_full_path']
      img_thumb_path = context.registers[:site].config['img_thumb_path']
      #"<p><a href=\"#{img_full_path}/#{@image_name}\"><img alt=\"ALT TEXT GOES HERE\" title=\"TITLE TEXT GOES HERE\" src=\"#{img_thumb_path}/#{@image_name}\"/></a></p>"
      "<p class=\"inline-embed\"><a href=\"#{img_full_path}/#{@image_name}\"><img alt=\"alt-text placeholder for #{@image_name}\" src=\"#{img_thumb_path}/#{@image_name}\" /></a></p>"
    end
  end
end

Liquid::Template.register_tag('insert_image', Jekyll::InsertImageTag)

