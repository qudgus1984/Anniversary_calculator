//
//  ViewController.swift
//  Anniversary_calculator
//
//  Created by 이병현 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //DateFormatter : 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd hh:ss)
        let format = DateFormatter()
        format.dateFormat = "M월 d일 yy년"
        
        let result = format.string(from: Date())
        print(result, Date())
        
        let word = "3월 2일, 19년"
        let dateResult = format.date(from: word)
        
        print(dateResult)
    }


}

