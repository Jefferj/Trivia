//
//  QuestionViewModel.swift
//  Trivia
//
//  Created by Jefferson Naranjo rodríguez on 22/09/22.
//

import Foundation

class QuestionViewModel {
    
    private let questionsService: QuestionsService
    private var currentQuestion: Question?
    
    init(service: QuestionsService) {
        self.questionsService = service
    }
    
    func getQuestion(for categoryID: Int, completion: @escaping () -> Void) {
        questionsService.getQuestion(for: categoryID) { [weak self] receivedQuestion in
            guard let strongSelf = self else { return }
            strongSelf.currentQuestion = receivedQuestion
            completion()
        }
    }
            
    func getCurrentQuestion() -> String {
        if let question = self.currentQuestion {
            return question.question.htmlDecoded
        }
        return "Error getting question"
    }
    
    func validateCurrentQuestion(answer: String) -> Bool {
        if let rightAnswer = currentQuestion?.correct_answer {
            return rightAnswer == answer
        }
        return false
    }
}


extension String {
    var htmlDecoded: String {
        let decoded = try? NSAttributedString(data: Data(utf8), options: [
            .documentType: NSAttributedString.DocumentType.html,
            .characterEncoding: String.Encoding.utf8.rawValue
        ], documentAttributes: nil).string

        return decoded ?? self
    }
}
