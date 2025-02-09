//
//  ViewController.swift
//  FunctionPractice
//
//  Created by Bo-Young PARK on 22/5/2017.
//  Copyright © 2017 Bo-Young PARK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /********************************************************************************/
    //                              어제 배운 것 조교님 예제                              //
    /********************************************************************************/
    
    let numA:Int = 10
    let numB:Int = 5
    
    func addTwoNum(firstNumb num1: Int, secondNumb num2: Int) -> Int {
        return num1 + num2
    }
    
    func square(of number: Int) -> Int {
        return number * number
    }
    
    /********************************************************************************/
    //                                      조건문                                    //
    /********************************************************************************/
    
    func isEven1(number num:Int) -> Bool {
        if (num % 2) == 0 {
            return true
        }else{
            return false
        }
    }
    
    /*****************************************************************************************************/
    // else는 안써도 무방해서 지울 수 있다. 하지만 거짓일 경우의 조건을 입력하지 않은 것이므로, 거짓일 경우에는 return이 되지 않는다. //
    // 따라서 if문 바깥, func의 내부에 return false를 별도 입력해주어야 한다.                                        //
    /*****************************************************************************************************/
    
    func isEven2(number num:Int) -> Bool {
        if (num % 2 ) == 0 {
            return true}
        
        return false
    }
    
    
    /********************************************************************************/
    //                      3.  튜플과 조건문, 연산자를 이용한 함수 작성                       //
    /********************************************************************************/
    
    /* 아래는 수업시간에 해본 예제
     
     let h:(floor:Int, location:String, money:Int) = (12, "Seoul", 5000)
     
     func isAble(myHome: (floor:Int, location:String, money:Int)) -> Bool
     {
     
     if myHome.floor >= 10 && myHome.location == "Seoul" && myHome.money <= 8000
     {
     print("완벽한 나의 집")
     return true
     }
     else if (myHome.0 >= 10 && myHome.1 == "Seoul") || myHome.2 <= 8000
     {
     print("괜찮은 나의 집")
     return true
     }
     else if myHome.floor >= 10 || myHome.location == "Seoul" || myHome.money <= 8000
     {
     print("좀 더 알아보자")
     return true
     }
     
     return false
     }
     
     print(isAble(myHome: (h)))
     
     let h1:(floor:Int, location:String, money:Int) = (9, "Gyeonggi-do", 3000)
     
     print(isAble(myHome: (h1)))
     */
    
    // 내가 스스로 해본 복습
    
    let myCreditCard:(type:String, limit:UInt, color:String) = ("Visa", 500, "Silver")
    func isAble(creditCard:(type:String, limit:UInt, color:String)) -> Bool
    {
        if creditCard.0 == "Visa" && creditCard.1 >= 500 && creditCard.2 == "Silver"
        {
            print("최고의 신용카드")
            return true
        }
        else if creditCard.0 == "Visa" && creditCard.1 >= 500 || creditCard.2 == "Silver"
        {
            print("괜찮은 신용카드")
            return true
        }
        else if creditCard.0 == "Visa" || creditCard.1 >= 500 || creditCard.2 == "Silver"
        {
            print("그냥 신용카드")
            return true
        }
        else
        {
            print("다른거 알아봐")
            return false
        }
    }
    
    /********************************************************************************/
    //                             4. Swap 을 이용한 함수 작성                           //
    /********************************************************************************/
    /* 수업시간 해본 예제
     func swapToInt(_ num1:inout Int, _ num2:inout Int)
     {
     let temp:Int = num1
     num1 = num2
     num2 = temp
     }
     
     func minus(firstNum num1:Int, secondNum num2:Int) -> Int
     {
     var vNum1 = num1
     var vNum2 = num2
     
     if vNum2 > vNum1 {
     
     swapToInt(&vNum1,&vNum2)
     }
     
     return vNum1 - vNum2
     
     }
     
     print(minus(firstNum: 5, secondNum: 10))
     print(minus(firstNum: 10, secondNum: 5))
     */
    
    func swapToInt(_ num1:inout Int, _ num2:inout Int)
    {
        let temp:Int = num1
        num1 = num2
        num2 = temp
    }
    
    func minus(num1:Int, num2:Int) -> Int
    {
        var vNum1:Int = num1
        var vNum2:Int = num2
        
        if vNum1 > vNum2
        {
            swapToInt(&vNum1, &vNum2)
        }
        return vNum1 - vNum2
    }
    
    
    /********************************************************************************/
    //                         5. 시험점수에 따라 학점을 배분하는 코드                        //
    /********************************************************************************/
    /*
     func gradeCal(score:Double) -> String
     {
     if(100 >= score && 95 < score)
     {
     print("A+")
     }
     else if(90 > score)
     {
     print("A")
     
     }
     else if(85 > score)
     {
     print("B+")
     
     }
     else if(80 > score)
     {
     print("B")
     
     }
     else if(75 > score)
     {
     print("C+")
     
     }
     else if(70 > score)
     {
     print("C")
     
     }
     else if(65 > score)
     {
     print("D+")
     
     }
     else if(60 > score)
     {
     print("D")
     
     }
     else
     {
     print("F")
     }
     return "올바른 점수를 입력해주세요."
     }
     
     gradeCal(score: 14)
     */
    
    func scoreToGrade(number score:UInt) -> String {
        var grade:String = "F"
        score <= 100
        
        if score > 95 {
            return "A+"
        }
        else if score >= 90 {
            return "A"
        }
        else if score >= 85 {
            return "B+"
        }
        else if score >= 80 {
            return "B"
        }
        else if score >= 75 {
            return "C+"
        }
        else if score >= 70 {
            return "C"
        }
        else if score >= 65 {
            return "D+"
        }
        else if score >= 60 {
            return "D"
        }
        else {
            return grade
        }
        return "정확한 값을 입력하세요"
    }
    
    /********************************************************************************/
    //         6. Grade를 받아서 Point로 변환해주는 함수 (예. Point=4.5, 4.0, 3.5 등)        //
    /********************************************************************************/
    /*
     func pointCal(grade: String)
     {
     if(grade == "A+")
     {
     print("4.5")
     }
     else if(grade == "A")
     {
     print("4.0")
     }
     else if(grade == "B+")
     {
     print("3.5")
     }
     else if(grade == "B")
     {
     print("3.0")
     }
     else if(grade == "C+")
     {
     print("2.5")
     }
     else if(grade == "C")
     {
     print("2.0")
     }
     else if(grade == "D+")
     {
     print("1.5")
     }
     else if(grade == "D")
     {
     print("1.0")
     }
     else if(grade == "F")
     {
     print("0.0")
     }
     else
     {
     print("올바르지 않은 등급 타입입니다. 다음 등급 중 하나를 입력하세요" + "\n" + "(A+, A, B+, B, C+, C, D+, D, F)")
     }
     }
     
     pointCal(grade: "A+")
     pointCal(grade: "good")
     
     */
    
    func gradeToPoint(grade:String) {
        switch grade {
        case "A+":
            print(4.5)
        case "A":
            print("4.0")
        case "B+":
            print("3.5")
        case "B":
            print("3.0")
        case "C+":
            print("2.5")
        case "C":
            print("2.0")
        case "D+":
            print("1.5")
        case "D":
            print("1.0")
        case "F":
            print("0.0")
        default:
            print("올바른 등급을 입력하세요. (예. A+,A,B+,B,C+,C,D+,D,F)")
        }
    }
    
    
    /********************************************************************************/
    //              7. 점수를 포인터로 변환하기 > function으로 다시할 것                       //
    /********************************************************************************/
    /*
     pointCal(grade: gradeCal(score: 92))
     */
    
    /********************************************************************************/
    //                              8. 절대값 구하기                                    //
    /********************************************************************************/
    
    func absoluteValue(no:Int)
    {
        if no < 0
        {
            print(no * -1)
        }
        else
        {
            print(no)
        }
    }
    
    
    //9. 홀수 인지 짝수인지 확인해 주는 함수
    func oddEven(no1:Int)
    {
        if no1 % 2 == 0
        {
            print("Even")
        }
        else
        {
            print("Odd")
        }
    }
    
    
    /********************************************************************************/
    //                          10. 영화표값 계산하기.                                   //
    //                              기본가격 : 9,000원                                 //
    //                              10시까지 조조 : -10%                               //
    //                              청소년 :       -10%                               //
    //                              argument : 영화시간(24시간제), 성인인원, 청소년인원       //
    /********************************************************************************/
    
    
//    func mTicketPrice(theatreTime time:UInt, adultCount adult:UInt, teenagerCount teen:UInt)
//    {
//        let TicketPrice:UInt = 9000
//        
//        if 11 > time
//        {
//            print(8100 * (adult + teen))
//        }
//        else if teen > 0
//        {
//            print((TicketPrice * adult) + (8100 * teen))
//        }
//        else{
//            print(TicketPrice * (adult + teen))
//        }
//    }
    
    func myTicket(schedule:UInt, adultCount:UInt, teenCount:UInt) {
        let standardPrice:UInt = 9000
        let totalTicket:UInt = standardPrice * (adultCount + teenCount)
        
            if schedule <= 10 {
                print(totalTicket * 90/100)
            }
                
            else {
                print((standardPrice * adultCount) + (standardPrice * 90/100 * teenCount))
            }
    }
    
    /*****************************************************************************************/
    //                                     11. 지폐별 갯수                                      //
    //금액을 입력받고 100원, 500원, 1,000원, 5,000원, 10,000원, 50,000원권으로 각각 몇 장씩 나눠지는지 프린트.//
    /*****************************************************************************************/
    

    func exchange(inputMoney:Int) {
        var result:(bill50K:Int, bill10K:Int, bill5K:Int, bill1K:Int, coin500:Int, coint100:Int) = (0,0,0,0,0,0)
        result.0 = inputMoney/50000
        result.1 = (inputMoney%50000)/10000
        result.2 = ((inputMoney%50000)%10000)/5000
        result.3 = (((inputMoney%50000)%10000)%5000)/1000
        result.4 = ((((inputMoney%50000)%10000)%5000)%1000)/500
        result.5 = (((((inputMoney%50000)%10000)%5000)%1000)%500)/100
        
        print("50000원 권은 \(result.0) 장 입니다")
        print("10000원 권은 \(result.1) 장 입니다")
        print("5000원 권은 \(result.2) 장 입니다")
        print("1000원 권은 \(result.3) 장 입니다")
        print("500원 동전은 \(result.4) 개 입니다")
        print("100원 동전은 \(result.5) 개 입니다")
    }
    
    
    /***********************************************************************************************/
    //                                      12. 윤년구하기
    //서력 기원 연수가 4로 나누어 떨어지는 해는 윤년으로 한다. (2004년, 2008년, 2012년, 2016년, 2020년, 2024년 ...).//
    //이 중에서 100으로 나누어 떨어지는 해는 평년으로 한다. (1900년, 2100년, 2200년, 2300년, 2500년 ...)          //
    //그 중에 400으로 나누어 떨어지는 해는 윤년으로 둔다. (1600년, 2000년, 2400년 ...)                          //
    //연도를 입력받고 윤년인지 평년인지 프린트                                                               //
    /***********************************************************************************************/
    
    
    func isYoonNyeon(year:Int) -> Bool{
        
        if (year%4 == 0 && year%100 != 0) || year%400 == 0 {
            print("윤년입니다")
            return true
        }
        
        print("평년입니다")
        return false
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTicket(schedule: 10, adultCount: 2, teenCount: 0) //예상 Print: 16200
        myTicket(schedule: 10, adultCount: 1, teenCount: 1) // 16200
        myTicket(schedule: 11, adultCount: 1, teenCount: 1) // 17100
        myTicket(schedule: 11, adultCount: 0, teenCount: 2) // 16200
        myTicket(schedule: 11, adultCount: 2, teenCount: 0) // 18000
        
        exchange(inputMoney: 513900)
        
        isYoonNyeon(year: 400)
        isYoonNyeon(year: 100)
        isYoonNyeon(year: 4)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

