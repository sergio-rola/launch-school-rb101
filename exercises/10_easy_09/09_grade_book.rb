def get_grade(grade1, grade2, grade3)
  score = (grade1 + grade2 + grade3) / 3

  case
    when score >= 90 && score <= 100 then 'A'
    when score >= 80 && score < 90 then 'B'
    when score >= 70 && score < 80 then 'C'
    when score >= 60 && score < 70 then 'D'
    when score >= 0 && score < 60 then 'F'
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"


# further exploration

def get_grade(grade1, grade2, grade3, extra_credit = 0)
  score = ((grade1 + grade2 + grade3) / 3) + extra_credit

  case
    when score > 100 then 'AA'
    when score >= 90 && score <= 100 then 'A'
    when score >= 80 && score < 90 then 'B'
    when score >= 70 && score < 80 then 'C'
    when score >= 60 && score < 70 then 'D'
    when score >= 0 && score < 60 then 'F'
  end
end

get_grade(97, 99, 95, 5) == "AA"
get_grade(50, 50, 95) == "D"
