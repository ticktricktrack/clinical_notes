class ClinicalNoteAutism < ClinicalNote
  def grouped_questions
    GROUPING.map do |section|
      {
        key: section[:key],
        title: section[:title],
        answers: answers.select { |a| section[:questions].map { |q| q[:number] }.include?(a[:number]) }
      }
    end
  end

  def grouped_answers_form
    GROUPING.map { |section|
      section[:questions].map { |question| self.answers.build(number: question[:number], question: question[:label]) }
    }.flatten
  end

  GROUPING = [
    {
      key: "A1",
      title: "Deficits in social-emotional reciprocity",
      questions: [
        { number: 1,
          label: "Social verbalization/chat"
        },
        { number: 2,
          label: "Reciprocal conversation"
        },
        { number: 3,
          label: "Imaginative social play"
        }
      ]
    },
    {
      key: "A2",
      title: "Deficits in nonverbal communicative behaviors used for social interaction",
      questions: [
        {
          number: 4,
          label: "Use of other's body to communicate"
        },
        {
          number: 5,
          label: "Pointing to express interest"
        }
      ]
    }
  ]
end
