require 'thor'

class SentenceParser < Thor
  desc 'Parse FILE', 'Count occurrences of sentences in file'
  def parse(file)
    return puts 'A valid file is required' unless File.file?(file)
    sentence_counts = Hash.new(0)
    File.readlines(file).each do |line|
      next if line.empty?
      sentence_counts[line.delete("\n").downcase] += 1
    end
    sentence_counts = sentence_counts.sort_by {|k,v| v}.reverse
    output_file = File.new('out.txt', 'w')
    output_file.puts('Parsed results')
    sentence_counts.each do |k, v|
      output_file.puts "#{k} occurred #{v} times"
    end
    output_file.close
  end
end

SentenceParser.start(ARGV)
