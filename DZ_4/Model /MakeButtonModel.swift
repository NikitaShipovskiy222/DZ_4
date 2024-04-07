//
//  MakeButtonModel.swift
//  DZ_4
//
//  Created by Nikita Shipovskiy on 07/04/2024.
//

import UIKit


class MakeButton{
    
    static func makeButton(image: UIImage, w: CGFloat, h: CGFloat, action: UIAction) -> UIButton{
        {
            $0.setImage(image, for: .normal)
            $0.frame.origin = CGPoint(x: w, y: h)
            return $0
        }(UIButton())
    }
}
