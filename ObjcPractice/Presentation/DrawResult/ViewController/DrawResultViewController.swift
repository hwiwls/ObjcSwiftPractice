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
    let resultLabel = UILabel()
    let retryBtn = UIButton(type: .system)
    
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
        resultLabel.text = resultMessage
        resultLabel.textAlignment = .center
        resultLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        retryBtn.setTitle("다시 참여하기", for: .normal)
        retryBtn.addTarget(self, action: #selector(retryAction), for: .touchUpInside)
    }
    
    func configLayout() {
        view.addSubview(resultLabel)
        view.addSubview(retryBtn)
        
        resultLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
            make.width.equalToSuperview().multipliedBy(0.8)
        }
        
        retryBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(resultLabel.snp.bottom).offset(50)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
    @objc func retryAction() {
        self.dismiss(animated: true, completion: nil)
    }
}
