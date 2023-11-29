//
//  DetailViewModel.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 10/11/23.
//

import Foundation

protocol DetailViewModelProtocol {
    func updateView(charData: CharacterModel?)
}

final class DetailViewModel {

    private var viewDelegate: DetailViewProtocol?
    private var charData: CharactersModel?

    init(charData: CharactersModel?, viewDelegate: DetailViewProtocol?) {
        self.charData = charData
        self.viewDelegate = viewDelegate
    }
}

extension DetailViewModel: DetailViewModelProtocol {
    func updateView(charData: CharacterModel?) {
        viewDelegate?.update(name: charData?.name)
        viewDelegate?.update(image: charData?.image)
        viewDelegate?.update(description: charData?.description)
        viewDelegate?.update(job: charData?.job)
    }
}

