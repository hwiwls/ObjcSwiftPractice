//
//  DrawResultViewController.swift
//  ObjcPractice
//
//  Created by JeongHwiJin on 9/27/24.
//

import UIKit
import SnapKit

class DrawResultViewController: UIViewController {
    
    var resultMessage: String?
    @objc   // Objective-C 파일에서 접근할 수 있도록
    init(message: String) {
        self.resultMessage = message
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        configView()
        configLayout()
    }
    
    func configView() {
    }
    
    func configLayout() {
    }
}
