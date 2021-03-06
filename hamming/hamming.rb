class Hamming

  def self.compute(source, destination)
    distance  = 0

    length = source.length <= destination.length ? source.length : destination.length
    source = source[0..length]
    destination = destination[0..length]

    if source.size == destination.size
      source.chars.zip(destination.chars).each do |src, dst|
        distance += 1 unless src == dst 
      end
    end    
    
    distance
  end

end