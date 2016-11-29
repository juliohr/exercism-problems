export default class Transcriptor {
  constructor() {
    this.dnaToRnaCompliment = {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U'
    }
  }  
  toRna(dnaStrand) {
    return [...dnaStrand].reduce((acc, nucleotide) => acc + this.dnaToRnaCompliment[nucleotide],'')
  }
}