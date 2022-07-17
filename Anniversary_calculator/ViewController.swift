//
//  ViewController.swift
//  Anniversary_calculator
//
//  Created by 이병현 on 2022/07/13.
//

import UIKit

// Code Snippet

var name = "Cody"

class ViewController: UIViewController {
    // DatePicker 변수 선언
    @IBOutlet weak var selectedDay: UIDatePicker!
    
    // 기념일 정한 날짜 레이블
    @IBOutlet weak var specialDay: UILabel!
    
    // Label 변수 선언
    @IBOutlet weak var day100: UILabel!
    @IBOutlet weak var day200: UILabel!
    @IBOutlet weak var day300: UILabel!
    @IBOutlet weak var day400: UILabel!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageChange(image: image1)
        imageChange(image: image2)
        imageChange(image: image3)
        imageChange(image: image4)
        dateSetting()
  
        

        
    }
    @IBAction func removeButtonTapped(_ sender: UIButton) {
        showAlert("삭제 완료")
    }
    
    @IBAction func dayValueChanged(_ sender: UIDatePicker) {
        dateSetting()
        // data 저장
        
    }
    
    func imageChange(image: UIImageView) {
        image.layer.cornerRadius = 10
    }
    
    func ssetWheelStyle() {
        if #available(iOS 14.0, *) {
            selectedDay.preferredDatePickerStyle = .wheels
            selectedDay.datePickerMode = .date
        }
    }
    
    
    func dateSetting() {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy년 MM월 d일"
        
        // start에 Date 인스턴스 찍고 선택한 날짜 정보 저장해주기
        var start = Date()
        start = selectedDay.date
                
        // 선택한 날짜 + 100일
        let end100 = start.addingTimeInterval(3600*24*99)
        day100.text = "\(formatter.string(from: end100))"
        
        // 선택한 날짜 + 200일
        let end200 = start.addingTimeInterval(3600*24*199)
        day200.text = "\(formatter.string(from: end200))"
        
        // 선택한 날짜 + 300일
        let end300 = start.addingTimeInterval(3600*24*299)
        day300.text = "\(formatter.string(from: end300))"
        
        // 선택한 날짜 + 400일
        let end400 = start.addingTimeInterval(3600*24*399)
        day400.text = "\(formatter.string(from: end400))"
        
    }
    
    func showAlert(_ alertText: String) {
        let alert = UIAlertController(title: alertText, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
}

