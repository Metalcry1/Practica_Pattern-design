//
//  Mappers.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 15/2/24.
//

import Foundation

protocol MapperCharacterToDetailModel {
    func map(_ characters: CharactersModel?) -> [DetailModel]
    func map(_ character: CharacterModel?) -> DetailModel?
}

class MapperToHome: MapperCharacterToDetailModel {
    
    func map(_ characters: CharactersModel?) -> [DetailModel] {
        guard let characters = characters else {return []}
        return characters.compactMap{ map($0)}
        
    }
    
    func map(_ character: CharacterModel?) -> DetailModel? {
        guard let character = character else {return nil}
        return DetailModel(name: character.name, image: character.image ?? "", description: character.description, job: character.job)
    }
}
