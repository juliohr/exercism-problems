export default class Hamming {
  compute(strandX,strandY) {
    if (strandX.length != strandY.length) throw new Error('DNA strands must be of equal length.')

    return strandX.split('').reduce((acc, nucleotide, i) => acc + (nucleotide !== strandY[i]), 0)
  }
}