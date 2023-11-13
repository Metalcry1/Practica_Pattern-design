//
//  SplashViewModel.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 4/10/23.
//

import Foundation

//MARK: - PROTOCOL -
protocol SplashLaunchViewModelProtocol: AnyObject{
    func onViewAppear()
}

//MARK: - CLASE -

final class SplashLaunchViewModel{
    
    private weak var viewDelegate: SplashLaunchViewProtocol?
    
    init(viewDelegate: SplashLaunchViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    private func loadData(){
        viewDelegate?.showLoading(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            [weak self] in
            self?.viewDelegate?.showLoading(false)
            self?.viewDelegate?.goToHome()
    }
}
}
//MARK: - EXTENSION -

extension SplashLaunchViewModel: SplashLaunchViewModelProtocol {
    func onViewAppear() {
        loadData()
    }
}
