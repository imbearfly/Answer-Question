//
//  ViewController.swift
//  Answer Question
//
//  Created by Fly on 2016/7/5.
//  Copyright © 2016年 Fly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class QAndA {
        var question:String?
        var answer:String?
        
        init(question:String, answer:String) {
            self.question = question
            self.answer = answer
        }
    }
    
    @IBOutlet weak var QuestionLbl: UILabel!
    @IBOutlet weak var AnswerLbl: UILabel!
    var numNow = 0

    let questions = [QAndA(question: "國父革命了幾次成功?", answer: "十次"), QAndA(question: "誰是最潮的程式語言?",answer: "Swift"), QAndA(question: "台北最高的建築物?",answer: "台北101"),QAndA(question: "最帥的iOS開發講師?",answer: "Peter Pan"),QAndA(question: "誰發明了電燈泡?",answer: "愛迪生"),QAndA(question:"相對論是誰提出的?",answer: "達爾文"),QAndA(question: "1+1+1+1+1=?",answer: "5"),QAndA(question: "圓週率是多少?",answer: "3.14"),QAndA(question: "台北最早的捷運線?",answer: "木柵線"),QAndA(question: "你今天開心嗎?",answer: "開心！")]
    
    @IBAction func nextBtn(_ sender: UIButton) {
        if  numNow < questions.count - 1 {
            numNow += 1
            QuestionLbl.text = questions[numNow].question!
            AnswerLbl.text = ""
            }else {
            numNow = 0
            QuestionLbl.text = questions[numNow].question!
            AnswerLbl.text = ""
        }
    }
    
    @IBAction func answerBtn(_ sender: UIButton) {
        AnswerLbl.text = questions[numNow].answer!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionLbl.text = questions[0].question!
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

