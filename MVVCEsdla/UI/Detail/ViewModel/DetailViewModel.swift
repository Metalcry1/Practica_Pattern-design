//
//  DetailViewModel.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 10/11/23.
//

import Foundation

protocol DetailViewModelProtocol {
    func updateView()
}

final class DetailViewModel {

    private var characterData: DetailModel
    private weak var viewDelegate: DetailViewProtocol?

    init(data: DetailModel, viewDelegate: DetailViewProtocol?) {
        characterData = data
        self.viewDelegate = viewDelegate
    }
}

extension DetailViewModel: DetailViewModelProtocol {
    func updateView() {
        viewDelegate?.update(name: characterData.name)
        viewDelegate?.update(image: characterData.image)
        viewDelegate?.update(description: characterData.description)
        viewDelegate?.update(job: characterData.job)
    }
}

