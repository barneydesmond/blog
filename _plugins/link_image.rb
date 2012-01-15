module Jekyll
  class LinkImageTag < Liquid::Tag

    def initialize(tag_name, image_name, tokens)
      super
      @image_name = image_name.strip
    end

    def render(context)
      img_full_path  = context.registers[:site].config['img_full_path']
      "#{img_full_path}/#{@image_name}"
    end
  end
end

Liquid::Template.register_tag('link_image', Jekyll::LinkImageTag)

