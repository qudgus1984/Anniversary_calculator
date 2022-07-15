//
//  SecondTransitionViewController.swift
//  Anniversary_calculator
//
//  Created by 이병현 on 2022/07/15.
//

import UIKit

var emotionNum = 0

class SecondTransitionViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱 켜면 데이터를 가지고 와서 텍스트 뷰에 보여주어야 함
     2. 바뀐 데이터를 저장해주어야 함
     => UserDefault
     
     
     */
    
    @IBOutlet weak var countLabel: UILabel!
    
    enum UserDefaultKey:String {
        case happyEmotion
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionSecondViewController",#function)
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            // 가져오기
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")

        } else {
            // 데이터가 없는 경우에 사용할 문구
            mottoTextView.text = "Sin prosa, Sin pausa"
        }
        
        countLabel.text = "\(UserDefaults.standard.integer(forKey: UserDefaultKey.happyEmotion.rawValue))"
        
        
        print(UserDefaults.standard.string(forKey: "PhoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))


    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondViewController",#function)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondViewController",#function)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondViewController",#function)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondViewController",#function)

    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView, forKey: "nickname")
        print("저장되었습니다!")
    }
    
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        // 기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: UserDefaultKey.happyEmotion.rawValue)
        
        // 감정 + 1
        let updateValue = currentValue + 1
        
        // 새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: UserDefaultKey.happyEmotion.rawValue)
        
        // 레이블에 새로운 내용 보여주기
        countLabel.text = "\(UserDefaults.standard.integer(forKey: UserDefaultKey.happyEmotion.rawValue))"
    }
    
}
