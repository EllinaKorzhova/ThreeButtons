//
//  ViewController.swift
//  TreeButtons
//
//  Created by Эллина Коржова on 5.03.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstButton: ChangeButton!
    @IBOutlet weak var secondButton: ChangeButton!
    @IBOutlet weak var thirdButton: ChangeButton!
    
    @IBAction func firstButtonTap(_ sender: UIButton) {
        firstButton.animateButton(sender)
    }
    
    @IBAction func secondButtonTap(_ sender: UIButton) {
        secondButton.animateButton(sender)
    }
    
    @IBAction func thirdButtonTap(_ sender: UIButton) {
        thirdButton.animateButton(sender)
        showModalController()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configureButtons()
        NSLayoutConstraint.activate([
            
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300),
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 10),
            
        ])
    }
    
    func configureButtons(){
        firstButton.configure(title: "First Button")
        secondButton.configure(title: "Second Middle Button")
        thirdButton.configure(title: "Third")
    }
    
    func showModalController() {
        let modalController = UIViewController()
        modalController.modalPresentationStyle = .pageSheet
        modalController.view.backgroundColor = UIColor.white
        modalController.view.frame = view.frame
        present(modalController, animated: true, completion: nil)
    }
}
