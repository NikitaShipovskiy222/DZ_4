//
//  ViewController.swift
//  DZ_4
//
//  Created by Nikita Shipovskiy on 07/04/2024.
//

import UIKit

class ViewController: UIViewController {

    
    lazy var AllAction = UIAction { _ in
     print("Hello")
    }
    
    private lazy var namedAppLabel: UILabel = {
        $0.text = "AppName"
        $0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        $0.textColor = .black
        return $0
    }(UILabel(frame: CGRect(x: 30, y: 63, width: view.frame.width - 60, height: 36)))
    
    private lazy var womanImage: UIImageView = {
        $0.image = .woman
        $0.frame.size = CGSize(width: view.frame.width - 60, height: 372)
        $0.center.y = view.center.y - 110
        $0.center.x = view.center.x
        return $0
    }(UIImageView())
    
    
    lazy var instButton = MakeButton.makeButton(image: .inst, w: 34, h: 34,action: AllAction)

    
    
    lazy var ttButton = MakeButton.makeButton(image: .tt, w: 34, h: 34,action: AllAction)
    lazy var vkButton = MakeButton.makeButton(image: .vk, w: 34, h: 34,action: AllAction)
    
    
    
    lazy var pointsButton: UIButton = {
        $0.setImage(._3, for: .normal)
        return $0
    }(UIButton(frame: CGRect(x: womanImage.frame.width  - 65, y: womanImage.frame.height - 356, width: 49, height: 49), primaryAction: AllAction))
        
    
   private lazy var hStackButton: UIStackView = {
        $0.axis = .horizontal
        $0.spacing = 12
        $0.alignment = .leading
        $0.distribution = .fillEqually
        $0.frame.size = CGSize(width: womanImage.frame.width - 215, height: 30)
       $0.frame.origin = CGPoint(x: womanImage.frame.minX - 5, y: womanImage.frame.minY - 105)
        $0.addArrangedSubview(instButton)
        $0.addArrangedSubview(ttButton)
        $0.addArrangedSubview(vkButton)
        return $0
    }(UIStackView())
    
    
    private lazy var nameSurnameLabel: UILabel = {
        $0.text = "Name Surname"
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    private lazy var medalImage: UIImageView = {
        $0.image = .medal
        return $0
    }(UIImageView())
    
    
    private lazy var hStackNamed: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .leading
        $0.frame.size = CGSize(width: womanImage.frame.width - 155, height: 29)
        $0.frame.origin = CGPoint(x: womanImage.frame.minX - 5, y: womanImage.frame.maxY - 217)
       $0.addArrangedSubview(nameSurnameLabel)
       $0.addArrangedSubview(medalImage)
        return $0
    }(UIStackView())
    
    private lazy var ageLabel: UILabel = {
        $0.text = "25 age"
        $0.font = UIFont.systemFont(ofSize: 16, weight: .light)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    private lazy var vStack: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .leading
        $0.distribution = .fillProportionally
        $0.frame.size = CGSize(width: womanImage.frame.width - 160, height: 45)
        $0.frame.origin = CGPoint(x: womanImage.frame.minX - 5, y: womanImage.frame.minY + 156)
    
        $0.addArrangedSubview(hStackNamed)
        $0.addArrangedSubview(ageLabel)
        return $0
    }(UIStackView())
    
    
    lazy var noButton = MakeButton.makeButton(image: .x, w: 65, h: 65,action: AllAction)
    lazy var yesButton = MakeButton.makeButton(image: .heart, w: 65, h: 65,action: AllAction)
    
    
    
    lazy var sendButton: UIButton = {
        $0.setTitle("Send", for: .normal)
        $0.tintColor = .white
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .mainGreen
        $0.frame.size = CGSize(width: view.frame.width - 223, height: 50)
        $0.frame.origin = CGPoint(x: 111, y: womanImage.frame.height + 155)
        return $0
    }(UIButton(primaryAction: AllAction))
    
    
    private lazy var hStackBotton: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .fill
        $0.spacing = 17
        $0.alignment = .center

        
        $0.frame.size = CGSize(width: view.frame.width - 60, height: 65)
        $0.frame.origin = CGPoint(x: 30, y: womanImage.frame.height + 148)

        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addArrangedSubview(noButton)
        $0.addArrangedSubview(sendButton)
        $0.addArrangedSubview(yesButton)
        
    
        return $0
    }(UIStackView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(namedAppLabel)
        view.addSubview(womanImage)
        
        
        [hStackButton, pointsButton, vStack].forEach{
            womanImage.addSubview($0)
            
        }
        view.addSubview(hStackBotton)

        NSLayoutConstraint.activate([
            sendButton.topAnchor.constraint(equalTo: womanImage.bottomAnchor, constant: 36),
            sendButton.leadingAnchor.constraint(equalTo: womanImage.leadingAnchor, constant: 90),
            sendButton.bottomAnchor.constraint(equalTo: womanImage.bottomAnchor, constant: 86),
            sendButton.trailingAnchor.constraint(equalTo: womanImage.trailingAnchor, constant: -82)
        
        
        ])

    }
}

#Preview() {
    ViewController()
}
