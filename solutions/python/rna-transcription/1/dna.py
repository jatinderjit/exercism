def to_rna(dna):
    complements = {
        'G': 'C',
        'C': 'G',
        'T': 'A',
        'A': 'U',
    }
    rna = ''
    for neucleotide in dna:
        rna += complements[neucleotide]
    return rna