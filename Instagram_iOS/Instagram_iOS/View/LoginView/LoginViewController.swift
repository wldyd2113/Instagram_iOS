//
//  LoginViewController.swift
//  Instagram_iOS
//
//  Created by 차지용 on 7/8/24.
//


import UIKit
import SwiftUI

class LoginViewController: UIViewController {
    
    private let mainImage: UIImageView = {
        let mainImage = UIImageView()
        mainImage.image = UIImage(named: "logo")
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        return mainImage
    }()
    
    private lazy var kakaoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "kakaologin"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(kakoLogin), for: .touchUpInside)
        return button
    }()
    
    private lazy var appleButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "applelogin"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(appleLogin), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainImage)
        view.addSubview(kakaoButton)
        view.addSubview(appleButton)
        NSLayoutConstraint.activate([
            
            mainImage.topAnchor.constraint(equalTo: self.view.topAnchor),
            mainImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            mainImage.widthAnchor.constraint(equalToConstant: 200),
            mainImage.heightAnchor.constraint(equalToConstant: 200),
            
            kakaoButton.topAnchor.constraint(equalTo: self.mainImage.topAnchor),
            kakaoButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            kakaoButton.widthAnchor.constraint(equalToConstant: 300),
            kakaoButton.heightAnchor.constraint(equalToConstant: 600),
            
            appleButton.topAnchor.constraint(equalTo: self.kakaoButton.topAnchor),
            appleButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            appleButton.widthAnchor.constraint(equalToConstant: 350),
            appleButton.heightAnchor.constraint(equalToConstant: 900),
            
            
            
            
        ])
        
    }
    
    //MARK: - KakaoLogin
    @objc func kakoLogin() {
        
    }
    
    //MARK: - AppleLogin
    @objc func appleLogin() {
        
    }

}




struct PreView: PreviewProvider {
    static var previews: some View {
        LoginViewController().toPreview()
    }
}


#if DEBUG
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
            let viewController: UIViewController

            func makeUIViewController(context: Context) -> UIViewController {
                return viewController
            }

            func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            }
        }

        func toPreview() -> some View {
            Preview(viewController: self)
        }
}
#endif
