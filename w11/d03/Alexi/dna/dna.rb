require 'pry'

class Dna
attr :strand

  def initialize(strand)
    strand = dna
  end

  def unique_bases(input)
    array = input.split(//)
    bases = array.uniq.length
    return bases
  end


  def num_bases(input)
  end
    
  def dna()
    a = array.count('A')
    g = array.count('G')
    t = array.count('T')
    c = array.count('C')

    dna_hash = Hash.new
    dna_hash['a'] = a
    dna_hash['g'] = g
    dna_hash['t'] = t
    dna_hash['c'] = c
    
  end

  dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"

end
