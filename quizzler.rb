def is_true_or_false?(answer)
  if answer == "true" || answer == "t" || answer == true
    return true
  elsif answer == "false" || answer == "f" || answer == false
    return false
  else
    "puts nil"
    return nil
  end
end


teacher_q_and_a = {
    "True or False: '<!--...-->' defines a comment in html?" => true,
    "True or False: '<li></li>' defines an item in a list in html?" => false,
    "True or False: html stands for Hyper Text Markdown Language?" => false,
    "True or False: In css 'background-position' is the property that sets whether a background image is fixed or scolls with the rest of the page?" => false,
    "True or False: In css 'transparency' set the opacity level for an element?" => false,
    "True or False: html tags are used in pairs?" => true,
    "True or False: H1 is the smallest header tag?" => false,
    "True or False: Multiple external style sheets can be referenced inside of a single html document?" => false,
    "True or False: In css, bottom specifies the bottom position of a positioned element?" => true,
    "True or False: <!--...--> defines a variable in html?" => false,
}

question_number = 0
student_quiz_answers = {}
number_of_correct_answers = 0
teacher_q_and_a.each do |question, correct_answer|
  question_number += 1
  puts "#{question_number}. #{question}"
  answer = is_true_or_false?(gets.chomp.downcase)
  while is_true_or_false?(answer) == nil
    puts "Please enter only 'true' or 'false': "
    answer = gets.chomp.downcase
  end
  student_quiz_answers[question] = answer
  if correct_answer == student_quiz_answers[question]
    number_of_correct_answers +=1
  end
end
grade = (number_of_correct_answers.to_f / teacher_q_and_a.length)
puts "You scored a #{grade*100}%!"