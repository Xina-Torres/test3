//
//  UserInfoViewController.swift
//  Test3
//
//  Created by Maria Xina Rae Torres on 13/07/2018.
//  Copyright © 2018 Maria Xina Rae Torres. All rights reserved.
//

import UIKit
protocol UserInfoViewControllerDelegate{
    func didCompleteForm()
}
class UserInfoViewController: UIViewController, UserInfoViewControllerDelegate {
    var userDataModel : UserDataModel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       var userInfoPresenter = UserInfoPresenter(view: self as! UserInfoPresenterDelegate, userDataModel: userDataModel!)
        firstNameLabel.text = userDataModel.firstName
        middleNameLabel.text = userDataModel.middleName
        lastNameLabel.text = userDataModel.lastName
        addressLabel.text = userDataModel.address
        ageLabel.text = userDataModel.age
        heightLabel.text = userDataModel.height
        weightLabel.text = userDataModel.weight
        birthdayLabel.text = userDataModel.birthday
        genderLabel.text = userDataModel.gender
    }
    func didCompleteForm(){
        
    }
}
