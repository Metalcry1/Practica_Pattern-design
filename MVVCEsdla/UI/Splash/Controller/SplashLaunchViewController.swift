//
//  SplashLaunchViewController.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 4/10/23.
//

import UIKit

//MARK: - PROTOCOL -

protocol SplashLaunchViewProtocol: AnyObject{
    func showLoading(_ show: Bool)
    func goToHome()
}

//MARK: - CLASE -

class SplashLaunchViewController: UIViewController {
    
    var viewModel: SplashLaunchViewModelProtocol?
    
    //MARK: - OULETS
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    //MARK: - LICECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        viewModel = SplashViewModel(viewDelegate: self) // sacamos mi viewmodel dentro del viewcontroller, para hacer inyeccion de dependencias, p  era inyectar a el viewmodel que quieras, mientras cumpla el protocolo viewprotocol "SplashLaunchViewProtocol" en este caso
        
        viewModel?.onViewAppear()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }
}


//MARK: - EXTENSION -

extension SplashLaunchViewController: SplashLaunchViewProtocol{
    func showLoading(_ show: Bool) {
        switch show{
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
        }
    }
    
    func goToHome() {
        let homeVC = HomeTableViewController()
        homeVC.viewModel = HomeTableViewModel(viewDelegate: homeVC, mapperHome: MapperToHome())
        navigationController?.setViewControllers([homeVC], animated: true)
    }
    
    
}
