def group_by_marks(marks, pass_marks)
    marks.group_by { |name, marks_obtained| marks_obtained >= pass_marks ? 'Passed' : 'Failed' }
  end