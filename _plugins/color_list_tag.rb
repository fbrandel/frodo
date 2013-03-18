module Jekyll
  module Tags
    class ColorListTag < Liquid::Tag

      def initialize(tag_name, markup, tokens)
          super
          @markup = markup
          
      end

      def render(context)
        puts @markup[0].to_s

        
      end
    end
  end
end

Liquid::Template.register_tag('color_list', Jekyll::Tags::ColorListTag)