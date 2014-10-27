//
//  ViewController.swift
//  Swift Addition for Kids
//
//  Created by Albert Saucedo on 10/26/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber1: UILabel!
    @IBOutlet weak var lblNumber2: UILabel!
    @IBOutlet weak var lblAnswer: UILabel!

    @IBOutlet weak var lblCorrectIncorrect: UILabel!
    @IBOutlet weak var lblTotalCorrect: UILabel!

    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!

    var numberOne = 0
    var numberTwo = 0
    var answer = 0

    var answerCalculate1 = 0
    var answerCalculate2 = 0
    var answerCalculate3 = 0

    var totalCorrect = 0
    var buttonAnswer = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }

    @IBAction func btnNextQuestion(sender: UIButton) {
        startGame()
        buttonLogic()
    }

    @IBAction func btnAnswer1Pressed(sender: UIButton) {
        if answerCalculate1 == answer {
            totalCorrect = totalCorrect + 1
            lblAnswer.text = String(answer)
            lblCorrectIncorrect.text = "Correct !!"
            lblTotalCorrect.text = "Correct Ansers : \(totalCorrect)"

            btnAnswer2.setTitle(String(""), forState: UIControlState.Normal)
            btnAnswer3.setTitle(String(""), forState: UIControlState.Normal)

            println("Correct 1")
        } else {
            lblTotalCorrect.text = "Try Again"
        }
        answerCalculate1 = 0
    }

    @IBAction func btnAnswer2Pressed(sender: UIButton) {
        if answerCalculate2 == answer {
            totalCorrect = totalCorrect + 1
            lblAnswer.text = String(answer)
            lblCorrectIncorrect.text = "Correct !!"
            lblTotalCorrect.text = "Correct Ansers : \(totalCorrect)"

            btnAnswer1.setTitle(String(""), forState: UIControlState.Normal)
            btnAnswer3.setTitle(String(""), forState: UIControlState.Normal)

            println("Correct 1")
        } else {
            lblTotalCorrect.text = "Try Again"
        }
        answerCalculate2 = 0
    }

    @IBAction func btnAnswer3Pressed(sender: UIButton) {
        if answerCalculate3 == answer {
            totalCorrect = totalCorrect + 1
            lblAnswer.text = String(answer)
            lblCorrectIncorrect.text = "Correct !!"
            lblTotalCorrect.text = "Correct Ansers : \(totalCorrect)"

            btnAnswer1.setTitle(String(""), forState: UIControlState.Normal)
            btnAnswer2.setTitle(String(""), forState: UIControlState.Normal)

            println("Correct 1")
        } else {
            lblTotalCorrect.text = "Try Again"
        }
        answerCalculate3 = 0
    }


    func startGame() -> Bool {
        numberOne = Int(arc4random_uniform(25))
        numberTwo = Int(arc4random_uniform(25))

        lblNumber1.text = String(numberOne)
        lblNumber2.text = String(numberTwo)

        lblAnswer.text = "?"
        lblCorrectIncorrect.text = "Select your answer"

        answer = numberOne + numberTwo

        buttonLogic()

        return true
    }

    func buttonLogic(){
        buttonAnswer = Int(arc4random_uniform(3))

        if buttonAnswer == 0{
            btnAnswer1.setTitle(String(answer), forState: UIControlState.Normal)

            var tempNumberOne = Int(arc4random_uniform(50))
            var tempNumberTwo = Int(arc4random_uniform(50))

            if tempNumberOne == answer{
                tempNumberOne = Int(arc4random_uniform(50))
            }
            if tempNumberTwo == answer{
                tempNumberTwo = Int(arc4random_uniform(50))
            }

            btnAnswer2.setTitle(String(tempNumberOne), forState: UIControlState.Normal)
            btnAnswer3.setTitle(String(tempNumberTwo), forState: UIControlState.Normal)

            answerCalculate1 = answer

        }

        if buttonAnswer == 1 {
            btnAnswer2.setTitle(String(answer), forState: UIControlState.Normal)

            var tempNumberOne = Int(arc4random_uniform(50))
            var tempNumberTwo = Int(arc4random_uniform(50))

            if tempNumberOne == answer{
                tempNumberOne = Int(arc4random_uniform(50))
            }
            if tempNumberTwo == answer{
                tempNumberTwo = Int(arc4random_uniform(50))
            }

            btnAnswer1.setTitle(String(tempNumberOne), forState: UIControlState.Normal)
            btnAnswer3.setTitle(String(tempNumberTwo), forState: UIControlState.Normal)

            answerCalculate2 = answer

        }

        if buttonAnswer == 2 {
            btnAnswer3.setTitle(String(answer), forState: UIControlState.Normal)

            var tempNumberOne = Int(arc4random_uniform(50))
            var tempNumberTwo = Int(arc4random_uniform(50))

            if tempNumberOne == answer{
                tempNumberOne = Int(arc4random_uniform(50))
            }
            if tempNumberTwo == answer{
                tempNumberTwo = Int(arc4random_uniform(50))
            }

            btnAnswer1.setTitle(String(tempNumberOne), forState: UIControlState.Normal)
            btnAnswer2.setTitle(String(tempNumberTwo), forState: UIControlState.Normal)

            answerCalculate3 = answer
        }
    }
}