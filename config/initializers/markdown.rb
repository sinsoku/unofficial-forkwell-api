class CodeRayify < Redcarpet::Render::HTML
  def block_code(code, language)
    language = 'text' if language.nil?
    CodeRay.scan(code, language).div
  end
end

MarkdownRails.configure do |config|
  markdown = Redcarpet::Markdown.new CodeRayify,
    fenced_code_blocks: true,
    autolink: true
  config.render do |markdown_source|
    markdown.render(markdown_source)
  end
end
