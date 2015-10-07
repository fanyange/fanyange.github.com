module Jekyll
  module Converters
    class Markdown < Converter
      alias old_convert convert

      def convert(content)
        content.gsub!(/\[\[(.+?)\]\]/, '[\1](\1.html)')
        old_convert(content)
      end
    end
  end
end
