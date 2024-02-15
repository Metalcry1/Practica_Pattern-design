//
//  HomeTableViewModel.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 14/10/23.
//

import Foundation

protocol HomeTableViewModelProtocol{
    func onViewAppear()
    func onItemSelected(at index: Int)
    func data(at index: Int) -> CharacterModel?
}

final class HomeTableViewModel{
    
    private weak var viewDelegate: HomeTableViewProtocol?
    private var viewData = [CharacterModel]()
    private var mapperHome: MapperCharacterToDetailModel
    
    init(viewDelegate: HomeTableViewProtocol?,mapperHome: MapperCharacterToDetailModel) {
        self.viewDelegate = viewDelegate
        self.mapperHome = mapperHome
    }
    
    private func loadData(){
        viewData = sampleCharacterData
        viewDelegate?.updateViews()
        
    }
}

extension HomeTableViewModel: HomeTableViewModelProtocol{

    func onViewAppear() {
        loadData()
    }
    
    func data(at index: Int) -> CharacterModel? {
        guard index < dataCount else {return nil}
        return viewData[index]
    }
    
    func onItemSelected(at index: Int) {
        guard data(at:index) != nil else {return}
        
        let characterData = CharacterModel(
            name: sampleCharacterData[index].name,
            job: sampleCharacterData[index].job,
            image: sampleCharacterData[index].image,
            race: sampleCharacterData[index].race,
            description: sampleCharacterData[index].description

        )
        let characterDataToDetailData = mapperHome.map(sampleCharacterData)
        viewDelegate?.goToDetail(with: characterDataToDetailData[index])
    }
    
    var dataCount: Int {
        viewData.count
    }
}
