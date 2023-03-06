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
    
    @IBAction func firstButtonDown(_ sender: UIButton) {
        firstButton.animateButtonDown(sender)
    }
    
    @IBAction func firstButtonTouchUpInside(_ sender: UIButton) {
        firstButton.animateButtonUp(sender)
    }
    
    @IBAction func secondButtonDown(_ sender: UIButton) {
        secondButton.animateButtonDown(sender)
    }
    
    @IBAction func secondButtonTouchUpInside(_ sender: UIButton) {
        secondButton.animateButtonUp(sender)
    }
    
    @IBAction func thirdButtonDown(_ sender: UIButton) {
        thirdButton.animateButtonDown(sender)
        showModalController()
    }
    
    @IBAction func thirdButtonTouchUpInside(_ sender: UIButton) {
        thirdButton.animateButtonUp(sender)
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

