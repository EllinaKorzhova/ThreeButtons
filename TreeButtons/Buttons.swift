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
        sizeToFit()
        translatesAutoresizingMaskIntoConstraints = false
        setImage(image, for: .normal)
        imageView?.contentMode = .scaleAspectFit
        semanticContentAttribute = .forceRightToLeft
        configuration!.imagePadding = 8
    }
    
    func animateButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
            sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }, completion: { _ in
            UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
                sender.transform = CGAffineTransform.identity
            })
        })
    }
}
