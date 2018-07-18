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
class UserInfoViewController: UIViewController {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
//    var userInfoPresenter : UserInfoPresenter = UserInfoPresenter()
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = firstName
        middleNameLabel.text = middleName
        lastNameLabel.text = lastName
        addressLabel.text = address
        ageLabel.text = age
        heightLabel.text = height
        weightLabel.text = weight
        birthdayLabel.text = birthday
        genderLabel.text = gender
//        userInfoPresenter.attachedView(view: self)
    }
    var firstName: String?
    var middleName: String?
    var lastName: String?
    var address: String?
    var age: String?
    var height: String?
    var weight: String?
    var birthday: String?
    var gender: String?
}
