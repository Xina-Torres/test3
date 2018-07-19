import Foundation
protocol UserInfoPresenterDelegate{
    func showUserInfo(_ user: [UserDataModel])
}
class UserInfoPresenter{
    // MARK: - Properties
    
    var userRepository: UserRepository
    var view: UserInfoPresenterDelegate
    
    // MARK: - Functions
    
    required init(view: UserInfoPresenterDelegate, userRepository: UserRepository){
        self.view = view
        self.userRepository = userRepository
    }
    
}
