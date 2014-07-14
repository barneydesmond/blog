module Jekyll
  class InsertImageTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      img_full_path  = context.registers[:site].config['img_full_path']
      img_thumb_path = context.registers[:site].config['img_thumb_path']
      #"<p><a href=\"#{img_full_path}/#{@text}\"><img alt=\"ALT TEXT GOES HERE\" title=\"TITLE TEXT GOES HERE\" src=\"#{img_thumb_path}/#{@text}\"/></a></p>"
      "<p class=\"inline-embed\"><a href=\"#{img_full_path}/#{@text}\"><img alt=\"alt-text placeholder for #{@text}\" src=\"#{img_thumb_path}/#{@text}\" /></a></p>"
    end
  end
end

Liquid::Template.register_tag('insert_image', Jekyll::InsertImageTag)

