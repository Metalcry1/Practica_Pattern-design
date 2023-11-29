//
//  HomeTableViewModel.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 14/10/23.
//

import Foundation

protocol HomeTableViewModelProtocol{
    func onViewAppear()
    
}

final class HomeTableViewModel{
    
    private weak var viewDelegate: HomeTableViewProtocol?
    
    init(viewDelegate: HomeTableViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData(){
        
    }
    
}

extension HomeTableViewModel: HomeTableViewModelProtocol{
    func onViewAppear() {
        loadData()
    }
    

    
    
}
