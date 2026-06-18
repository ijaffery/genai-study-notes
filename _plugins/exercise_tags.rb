# frozen_string_literal: true
require 'kramdown'

module Jekyll
  module ExercisePlugin
    def self.markdownify(text)
      return text if text.nil? || text.empty?
      doc = Kramdown::Document.new(text, input: 'GFM', math_engine: :mathjax)
      html = doc.to_html
      html.sub(/^<div[^>]*>/, '').sub(/<\/div>\s*$/, '')
    end

    def self.render_quiz(content)
      # Upgrade single $ to $$ so Kramdown processes as display math (preserves \\)
      # Use block form for reliable capture group handling in Ruby gsub
      preprocessed = content.gsub(/\$\$(.*?)\$\$/m) { |m| '___DSP___' + $1 + '___' }
        .gsub(/\$(.*?)\$/) { |m| '$$' + $1 + '$$' }
        .gsub(/___DSP___(.*?)___/m) { |m| '$$' + $1 + '$$' }

      converted = markdownify(preprocessed)

      lines = converted.lines.select { |l| l.strip.start_with?('<li>') || l.strip.start_with?('- ') }
      options = lines.map do |line|
        line = line.gsub(/<\/?li>/, '').strip
        is_correct = line.include?('✔')
        label = line.gsub(/\s*✔\s*$/, '').strip
        label = label.sub(/^\s*\S+\s*[:\.!?\s]+\s*/, '')
        "    <span class=\"opt\" data-correct=\"#{is_correct ? 'true' : 'false'}\">#{label}</span>"
      end
      "<div class=\"quiz\">#{options.join("\n")}\n</div>"
    end

    def self.render_hint(content)
      converted = markdownify(content)
      "<details class=\"exercise-hint\"><summary>Hint</summary><div class=\"hint-content\">#{converted}</div></details>"
    end

    def self.render_solution(content)
      converted = markdownify(content)
      "<details class=\"exercise-solution\"><summary>Solution</summary><div class=\"solution-content\">#{converted}</div></details>"
    end
  end

  class ExerciseBlock < Liquid::Block
    def initialize(tag_name, title, tokens)
      super
      @title = title.strip.gsub(/^"|"$/, '')
    end

    def render(context)
      content = super

      quiz_blocks = []
      content.gsub!(/<div class="quiz">\s*\n?((?:[^<]|<(?!\/div>))*?)<\/div>\s*\n?/m) do |match|
        quiz_blocks << match
        "\n<!--QUIZ--><!--/QUIZ-->\n"
      end
      html_content = ExercisePlugin.markdownify(content)
      html_content.gsub!(/<!--\s*QUIZ\s*-->.*?<!--\s*\/QUIZ\s*-->/m) { quiz_blocks.shift || "" }

      exercise_count = context['exercise_count'] ||= 0
      exercise_count += 1
      context['exercise_count'] = exercise_count
      num = exercise_count
      "<div class=\"exercise\">\n" \
      "  <div class=\"exercise-header\">\n" \
      "    <span class=\"exercise-number\">#{num}</span>\n" \
      "    <span class=\"exercise-title\">#{ERB::Util.html_escape(@title)}</span>\n" \
      "  </div>\n" \
      "  <div class=\"exercise-body\">#{html_content}</div>\n" \
      "</div>"
    end
  end

  class QuizBlock < Liquid::Block
    def render(context)
      ExercisePlugin.render_quiz(super)
    end
  end

  class HintBlock < Liquid::Block
    def render(context)
      ExercisePlugin.render_hint(super)
    end
  end

  class SolutionBlock < Liquid::Block
    def render(context)
      ExercisePlugin.render_solution(super)
    end
  end
end

Liquid::Template.register_tag('exercise', Jekyll::ExerciseBlock)
Liquid::Template.register_tag('quiz', Jekyll::QuizBlock)
Liquid::Template.register_tag('hint', Jekyll::HintBlock)
Liquid::Template.register_tag('solution', Jekyll::SolutionBlock)
