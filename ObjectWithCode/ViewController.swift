//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by MAKAN on 23.09.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // EKRANIN (VIEW) BOYUTLARINI ALDIK.
        let width = view.frame.size.width //Ekranin genisligini burada aldik.
        let height = view.frame.size.height //Ekranin uzunlugunu burada aldik.
        
        // KOD ILE LABEL OLUSTURMA ISLEMI.
        
        
        myLabel.text = "Test label!"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.1, y: height * 0.5, width: width * 0.8, height: 50) //Labelin nerede gorunmesini belirtiyoruz burada.
        view.addSubview(myLabel)
        
        //BUTON OLUSTURMA ISLEMI.
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.25, y: height * 0.5 - 100 , width: 200, height: 100)
        view.addSubview(myButton)
        
        //BUTONA TIKLAMA ISLEMI
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
    }

    @objc func myAction() {
        myLabel.text = "Tapped"
    }

}

