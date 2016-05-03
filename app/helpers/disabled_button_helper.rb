module DisabledButtonHelper
  # Whenever a user submits a button, we disable and display some text
  # we vary the text to improve user engagement and loveability
  # little details can have a big impact on user engagement
  # lengthy to not be boring
  def working_msg
    serious = [
      "One Moment...",
      "Working...",
      "Wondering...",
      "Asking...",
      "Requesting...",
      "Sending...",
      "Please Wait...",
      "Proccessing...",
      "Thinking...",
      "Pondering...",
      "Waiting...",
      "Submitting...",
    ]
    silly = [
      "You Got It!",
      "Engaging Warp Drive...",
      "Will Do!",
      "Roger!",
      "Lets Do This!",
      "Yes Captain!",
      "Aye Aye!",
      "Awesome!",
      "Fantastic!",
      "Groovy!",
      "Totally!",
      "Right Away!",
      "Fasten Your Seatbelt...",
      "Thank You, Come Again!",
      "Horray!",
      "Weeee!",
      "Tally ho!", 
      "Fair Winds Ahead!", 
      "Almost There...", 
      "Ahoy!", 
      "Anchors Aweigh!" ,
      "Look! No Hands!",
      "Sure Thing!",
      "Like Us On Facebook!",
      "Follow Us On Twitter!",
      "Aye Captain!",
      "As You Wish!",
      "Good Day To You!",
      "Sally Forth!"
    ]
    rand < 0.35 ? silly.sample : serious.sample
  end
end