//
//  HomeCellTableViewCell.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 5/10/23.
//

import UIKit

class HomeCellTableViewCell: UITableViewCell {
    
    //MARK: - OUTLETS -
    
    @IBOutlet weak var nameCellHome: UILabel!
    @IBOutlet weak var imageCellHome: UIImageView!
    @IBOutlet weak var viewCellHome: UIView!
    @IBOutlet weak var raceCelHome: UILabel!
    
    //MARK: - LIFECYCLE -
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCellHome.layer.cornerRadius = 9.0
        viewCellHome.layer.shadowColor = UIColor.gray.cgColor
        viewCellHome.layer.shadowOffset = .zero
        viewCellHome.layer.shadowOpacity = 0.7
        viewCellHome.layer.shadowRadius = 4.0
        
        imageCellHome.layer.cornerRadius = 9.0
        imageCellHome.layer.opacity = 0.7
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCellHome.image = nil
        nameCellHome.text = nil
        raceCelHome.text = nil
    }
    
    func updateViews(data: CharacterModel?){
        guard let data = data else {return}
        update(image: data.image)
        update(name: data.name)
        update(race: data.race)
    }
    
    func update(name: String){
        nameCellHome.text = name
    }
    
    func update(image: String?){
        imageCellHome.image = UIImage(named:  image ?? "")
    }
    
    func update(race: String){
        raceCelHome.text = "Race: " + race
    }
    
    
}
