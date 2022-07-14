//
//  ViewController.swift
//  Anniversary_calculator
//
//  Created by 이병현 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {
    // DatePicker 변수 선언
    @IBOutlet weak var selectedDay: UIDatePicker!
    
    // Label 변수 선언
    @IBOutlet weak var day100: UILabel!
    @IBOutlet weak var day200: UILabel!
    @IBOutlet weak var day300: UILabel!
    @IBOutlet weak var day400: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dayValueChanged(selectedDay)
        
    }
    
    @IBAction func dayValueChanged(_ sender: UIDatePicker) {
        // DateFormatter로 형식 정해주기
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy년 MM월 d일"
        
        // start에 Date 인스턴스 찍고 선택한 날짜 정보 저장해주기
        var start = Date()
        start = selectedDay.date
        
        // 선택한 날짜 + 100일
        let end100 = start.addingTimeInterval(3600*24*100)
        day100.text = "\(formatter.string(from: end100))"
        
        // 선택한 날짜 + 200일
        let end200 = start.addingTimeInterval(3600*24*200)
        day200.text = "\(formatter.string(from: end200))"
        
        // 선택한 날짜 + 300일
        let end300 = start.addingTimeInterval(3600*24*300)
        day300.text = "\(formatter.string(from: end300))"
        
        // 선택한 날짜 + 400일
        let end400 = start.addingTimeInterval(3600*24*400)
        day400.text = "\(formatter.string(from: end400))"
        
        
    }
    
    func dateAdd() {
    }
    
    
}

