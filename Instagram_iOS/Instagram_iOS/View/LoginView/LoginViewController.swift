//
//  LoginViewController.swift
//  Instagram_iOS
//
//  Created by 차지용 on 7/8/24.
//


import UIKit
import SwiftUI
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
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
