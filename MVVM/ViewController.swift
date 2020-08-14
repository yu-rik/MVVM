//
//  ViewController.swift
//  MVVM
//
//  Created by yurik on 8/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    //теперь к модельке-Profile обращается ViewModel
    var viewModel: ViewModel? {
        didSet {
            self.nameLabel.text = viewModel?.name
            self.secondNameLabel.text = viewModel?.saecondName
            self.ageLabel.text = viewModel?.age
        }
    }
    
    
    //создаем наблюдателя за моделькой Profile
//    var profile: Profile? {
//        didSet {
//            //проверка чтоб profile не был nil
//            guard let profile = profile else {return}
//
//            self.nameLabel.text = profile.name
//            self.secondNameLabel.text = profile.secondName
//            self.ageLabel.text = "\(profile.age)"
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       viewModel = ViewModel()
        
        // создаем пользователя типа Profile
      //  profile = Profile(name: "Yurik", secondName: "Nosachenko", age: 25)
        //когда инициализируем пользователя - срабатывает didSet и заполняются label 
    }


}

