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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainImage)
        NSLayoutConstraint.activate([
            mainImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            mainImage.widthAnchor.constraint(equalToConstant: 200),
            mainImage.heightAnchor.constraint(equalToConstant: 200),
            
        ])
        
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
