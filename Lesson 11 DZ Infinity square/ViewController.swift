//
//  ViewController.swift
//  Lesson 11 DZ Infinity square
//
//  Created by Кирилл Курочкин on 02.10.2023.
//

import UIKit



class ViewController: UIViewController {
    
    var animationDuration: TimeInterval = 3.0 // Adjust the duration as needed
        var isClockwise = true
    
    
    let myView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    var isDown = false
    var isRight = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myView.layer.cornerRadius = myView.frame.size.width/2
        myView.backgroundColor = .blue
        view.addSubview(myView)
    }
    @IBAction func runCircle(_ sender: UIButton) {
        
        //     UIView.animate(withDuration: 0.3) {
        //     self.myView.frame.origin.y += 100
        //  }
      //  let position = isDown == true ? self.myView.frame.origin.y - 100 : self.myView.frame.origin.y + 100
      //  self.isDown = !self.isDown
        
    /*    UIView.animate(withDuration: 0.3) {
            self.myView.frame.origin.y += 100
        } completion: { _ in
            UIView.animate(withDuration: 0.3) {
                self.myView.frame.origin.x += 100
            } completion: { _ in
                UIView.animate(withDuration: 0.3) {
                    self.myView.frame.origin.y -= 100
                } completion: { _ in
                    self.myView.frame.origin.x -= 100
                }
            }

        }*/
      //  let position = isDown == true ? self.oneRound() : self.twoRound()
       // self.isDown = !self.isDown
        
        //self.oneRound()
        
      
        self.oneRound()
    }
    
    func oneRound() {
        
        UIView.animate(withDuration: 0.3) {
            self.myView.frame.origin.y += 100
        } completion: { _ in
            UIView.animate(withDuration: 0.3) {
                self.myView.frame.origin.x += 100
            } completion: { _ in
                UIView.animate(withDuration: 0.3) {
                    self.myView.frame.origin.y -= 100
                } completion: { _ in
                    UIView.animate(withDuration: 0.3) {
                        self.myView.frame.origin.x -= 100
                    } completion: { _ in
                        self.oneRound()
                    }
                    
                }
                
            }
        }
    }
    func twoRound() {
        UIView.animate(withDuration: 0.3) {
            self.myView.frame.origin.y += 100
        } completion: { _ in
            UIView.animate(withDuration: 0.3) {
                self.myView.frame.origin.x += 100
            } completion: { _ in
                UIView.animate(withDuration: 0.3) {
                    self.myView.frame.origin.y -= 100
                } completion: { _ in
                    self.myView.frame.origin.x -= 100
                }
            }

        }
    }
    
    
    func circleAnimateDown() {
        UIView.animate(withDuration: 0.3) {
            self.myView.frame.origin.y += 100
            
            
        }
    }
    
        
        func circleAnimateUp() {
            UIView.animate(withDuration: 0.3) {
                self.myView.frame.origin.y -= 100
            }
        }
        
        func circleAnimateLeft() {
            UIView.animate(withDuration: 0.3) {
                self.myView.frame.origin.x += 100
            }
            
        }
        func circleAnimateRight() {
            UIView.animate(withDuration: 0.3) {
                self.myView.frame.origin.x -= 100
            }
            
        }
        
        
    func animateCircle() {
            UIView.animate(withDuration: animationDuration, animations: { [weak self] in
                guard let self = self else { return }
                
                self.myView.frame.origin.y -= 100
            }) { [weak self] finished in
                guard let self = self, finished else { return }
                
                UIView.animate(withDuration: self.animationDuration, animations: {
                    self.myView.frame.origin.x += 100
                }) { [weak self] finished in
                    guard let self = self, finished else { return }
                    
                    UIView.animate(withDuration: self.animationDuration, animations: {
                        self.myView.frame.origin.y += 100
                    }) { [weak self] finished in
                        guard let self = self, finished else { return }
                        
                        UIView.animate(withDuration: self.animationDuration, animations: {
                            self.myView.frame.origin.x -= 100
                        }) { [weak self] finished in
                            guard let self = self, finished else { return }
                            
                            // Call the animation recursively to create an infinite loop
                            self.animateCircle()
                        }
                    }
                }
            }
        }






        
        
    }
    

