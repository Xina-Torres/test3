import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var middleNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var addressTextfield: UITextField!
    @IBOutlet weak var ageTextfield: UITextField!
    @IBOutlet weak var heightTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var birthdayTextfield: UITextField!
    @IBOutlet weak var genderTextfield: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    var registerPresenter: RegisterPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextfield.delegate = self
        middleNameTextfield.delegate = self
        lastNameTextfield.delegate = self
        addressTextfield.delegate = self
        ageTextfield.delegate = self
        heightTextfield.delegate = self
        weightTextfield.delegate = self
        birthdayTextfield.delegate = self
        genderTextfield.delegate = self
        firstNameTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        middleNameTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        lastNameTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        addressTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        ageTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        heightTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        birthdayTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        genderTextfield.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
    }
    @IBAction func registerButtonPressed(_ sender: Any) {
        registerPresenter.register()
        performSegue(withIdentifier: "showSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSegue"{
            let userInfoViewController = segue.destination as! UserInfoViewController
            }
    }
}
extension RegisterViewController: RegisterPresenterDelegate{
    func didFailGettingFirstName() {
        let alertFirstName = UIAlertController(title: "First Name Missing", message: "Please enter first name.", preferredStyle: .alert)
        alertFirstName.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.firstNameTextfield.becomeFirstResponder()
        }))
        self.present(alertFirstName, animated: true)
    }
    func didFailGettingMiddleName() {
        let alertMiddleName = UIAlertController(title: "Middle Name Missing", message: "Please enter middle name.", preferredStyle: .alert)
        alertMiddleName.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.middleNameTextfield.becomeFirstResponder()
        }))
        self.present(alertMiddleName, animated: true)
    }
    func didFailGettingLastName() {
        let alertLastName = UIAlertController(title: "Last Name Missing", message: "Please enter last name.", preferredStyle: .alert)
        alertLastName.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.lastNameTextfield.becomeFirstResponder()
        }))
        self.present(alertLastName, animated: true)
    }
    func didFailGettingAddress() {
        let alertAddress = UIAlertController(title: "Address Missing", message: "Please enter address.", preferredStyle: .alert)
        alertAddress.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.addressTextfield.becomeFirstResponder()
        }))
        self.present(alertAddress, animated: true)
    }
    func didFailGettingAge() {
        let alertAge = UIAlertController(title: "Age Missing", message: "Please enter age.", preferredStyle: .alert)
        alertAge.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.ageTextfield.becomeFirstResponder()
        }))
        self.present(alertAge, animated: true)
    }
    func didFailGettingHeight() {
        let alertHeight = UIAlertController(title: "Height Missing", message: "Please enter height.", preferredStyle: .alert)
        alertHeight.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.heightTextfield.becomeFirstResponder()
        }))
        self.present(alertHeight, animated: true)
    }
    func didFailGettingWeight() {
        let alertWeight = UIAlertController(title: "Weight Missing", message: "Please enter weight.", preferredStyle: .alert)
        alertWeight.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.weightTextfield.becomeFirstResponder()
        }))
        self.present(alertWeight, animated: true)
    }
    func didFailGettingBirthday() {
        let alertBirthday = UIAlertController(title: "Birthday Missing", message: "Please enter birthday.", preferredStyle: .alert)
        alertBirthday.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.birthdayTextfield.becomeFirstResponder()
        }))
        self.present(alertBirthday, animated: true)
    }
    func didFailGettingGender() {
        let alertGender = UIAlertController(title: "Gender Missing", message: "Please enter gender.", preferredStyle: .alert)
        alertGender.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            self.genderTextfield.becomeFirstResponder()
        }))
        self.present(alertGender, animated: true)
    }
}
extension RegisterViewController: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textfield: UITextField) {
        if (textfield == firstNameTextfield){
            if let firstNameText = firstNameTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.firstName, input: firstNameText)
            }
        }else if (textfield == middleNameTextfield){
            if let middleNameText = middleNameTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.middleName, input: middleNameText)
            }
        }else if (textfield == lastNameTextfield){
            if let lastNameText = lastNameTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.lastName, input: lastNameText)
            }
        }else if (textfield == addressTextfield){
            if let addressText = addressTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.address, input: addressText)
            }
        }else if (textfield == ageTextfield){
            if let ageText = ageTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.age, input: ageText)
            }
        }else if (textfield == heightTextfield){
            if let heightText = heightTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.height, input: heightText)
            }
        }else if (textfield == weightTextfield){
            if let weightText = weightTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.weight, input: weightText)
            }
        }else if (textfield == birthdayTextfield){
            if let birthdayText = birthdayTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.birthday, input: birthdayText)
            }
        }else if (textfield == genderTextfield){
            if let genderText = genderTextfield.text{
                registerPresenter.setValues(registerTextField: RegisterTextField.gender, input: genderText)
            }
        }
        
    }
    @objc func textFieldDidChange(_ textField: UITextField){
        if (textField == firstNameTextfield){
            firstNameTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.firstName, input: firstNameTextfield.text!)
        }
        if (textField == middleNameTextfield){
            middleNameTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.middleName, input: middleNameTextfield.text!)
        }
        if (textField == lastNameTextfield){
            lastNameTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.lastName, input: lastNameTextfield.text!)
        }
        if (textField == addressTextfield){
            addressTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.address, input: addressTextfield.text!)
        }
        if (textField == ageTextfield){
            ageTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.age, input: ageTextfield.text!)
        }
        if (textField == heightTextfield){
            heightTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.height, input: heightTextfield.text!)
        }
        if (textField == weightTextfield){
            weightTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.weight, input: weightTextfield.text!)
        }
        if (textField == birthdayTextfield){
            birthdayTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.birthday, input: birthdayTextfield.text!)
        }
        if (textField == genderTextfield){
            genderTextfield.text = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            registerPresenter.setValues(registerTextField: RegisterTextField.gender, input: genderTextfield.text!)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == firstNameTextfield){
            firstNameTextfield.resignFirstResponder()
        }else if (textField == middleNameTextfield){
            middleNameTextfield.resignFirstResponder()
        }else if (textField == lastNameTextfield){
            lastNameTextfield.resignFirstResponder()
        }else if (textField == addressTextfield){
            addressTextfield.resignFirstResponder()
        }else if (textField == ageTextfield){
            ageTextfield.resignFirstResponder()
        }else if (textField == heightTextfield){
            heightTextfield.resignFirstResponder()
        }else if (textField == weightTextfield){
            weightTextfield.resignFirstResponder()
        }else if (textField == birthdayTextfield){
            birthdayTextfield.resignFirstResponder()
        }else if (textField == genderTextfield){
            genderTextfield.resignFirstResponder()
    }
        return true
}
}
