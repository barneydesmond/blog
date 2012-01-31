module Jekyll
  class JishoTag < Liquid::Tag

    def initialize(tag_name, japanese_term, tokens)
      super
      @japanese_term = japanese_term.strip
    end

    def render(context)
      "#{@japanese_term}<sup><a href=\"http://jisho.org/words?jap=#{@japanese_term}&dict=edict\" title=\"Translate with jisho.org\">[?]</a></sup>"
    end
  end
end

Liquid::Template.register_tag('jisho', Jekyll::JishoTag)

