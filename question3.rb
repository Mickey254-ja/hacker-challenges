def skip_animals(animals, skip)
    # Your code here
      result = []
      chosen = animals.map.with_index do |animal, index|
          if index >= skip
              result << "#{index}:#{animal}"
          end
      end
      result
  end
  