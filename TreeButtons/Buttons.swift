//
//  Buttons.swift
//  TreeButtons
//
//  Created by Эллина Коржова on 5.03.23.
//

import Foundation
import UIKit

class ChangeButton: UIButton{
    let image = UIImage(systemName: "arrow.right.circle.fill")
    
    func configure (title: String){
        setTitle(title, for: .normal)
        configuration!.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        sizeToFit()
        translatesAutoresizingMaskIntoConstraints = false
        setImage(image, for: .normal)
        imageView?.contentMode = .scaleAspectFit
        semanticContentAttribute = .forceRightToLeft
        configuration!.imagePadding = 8
    }
    
    func animateButtonDown(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
            sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: nil)
    }
    
    func animateButtonUp(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
            sender.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    override func tintColorDidChange(){
        super.tintColorDidChange()
        if tintAdjustmentMode == .dimmed {
            configuration?.background.backgroundColor = .systemGray
            layer.backgroundColor = UIColor.systemGray.cgColor
            layer.cornerRadius = 10
        } else {
            configuration?.background.backgroundColor = .systemBlue
            layer.backgroundColor = UIColor.systemBlue.cgColor
        }
    }
}
