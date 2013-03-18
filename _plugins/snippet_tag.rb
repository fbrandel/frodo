module Jekyll
  module Tags
    class SnippetBlock < HighlightBlock

      def initialize(tag_name, markup, tokens)
          super
          unless markup.nil?
            markup = "html"
          end
      end

      def render(context)
        @template = Liquid::Template.parse(File.new(File.join(Frodo::CONFIG['templates'], "code_snippet.liquid")).read) # Parses and compiles the template
        @template.render({
            'code' => render_code(context, super),
            'example' => render_example(context, nodelist)
            }) 
      end

      def render_code(context, code)
        code
      end

      def render_example(context, code)
        code
      end

    end
  end
end

Liquid::Template.register_tag('snippet', Jekyll::Tags::SnippetBlock)