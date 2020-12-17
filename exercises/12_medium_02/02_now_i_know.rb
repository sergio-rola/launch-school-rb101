def block_word?(str)
  blocks = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
            ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
            ["V", "I"], ["L", "Y"], ["Z", "M"]]

  result = ""
  str.upcase.chars do |char|
    blocks.each_with_index do |sub_arr, idx|
      if sub_arr.include?(char)
        result += char
        # make the sub array empty so there are no more elements
        blocks[idx] = []
      end
    end
  end

  result == str.upcase
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# LS solution

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(str)
  BLOCKS.none? { |block| str.upcase.count(block) > 1 }
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
