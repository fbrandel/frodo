module Jekyll
  module Tags
    class ColorTag < Liquid::Tag

      def initialize(tag_name, markup, tokens)
          super
          @markup = markup.split(" ")
          @name = @markup[0]
          @value = @markup[1]
          @variable = @markup[2]
      end

      def render(context)
        @template = Liquid::Template.parse(File.new(File.join(Frodo::CONFIG['templates'], 'color.liquid')).read)
        @template.render({
            'name' => @name,
            'value' => @value,
            'variable' => @variable
        }) 
      end
    end
  end
end

Liquid::Template.register_tag('color', Jekyll::Tags::ColorTag)