let isYelling = (message) => message.match(/[a-zA-Z]/) && message.toUpperCase() === message
let isQuestion = (message) => message.endsWith('?')
let isSilence = (message) => message.trim().length === 0
  
class Bob {
  hey(message) {
    if (isYelling(message)) {
     return 'Whoa, chill out!'
    }
    if (isQuestion(message)) {
      return 'Sure.'
    } 
    if (isSilence(message)) {
      return 'Fine. Be that way!'
    }
    return 'Whatever.'
  }
}

export default Bob