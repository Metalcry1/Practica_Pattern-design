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
    
    //MARK: - LIFECYCLE -
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCellHome.layer.cornerRadius = 4.0
        viewCellHome.layer.shadowColor = UIColor.gray.cgColor
        viewCellHome.layer.shadowOffset = .zero
        viewCellHome.layer.shadowOpacity = 0.7
        viewCellHome.layer.shadowRadius = 4.0
        
        imageCellHome.layer.cornerRadius = 4.0
        imageCellHome.layer.opacity = 0.7
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCellHome.image = nil
        nameCellHome.text = nil
    }
    
    func updateViews(data: ImageCellModel?){
        guard let data = data else {return}
        update(name: data.name)
        update(image: data.image)
    }
    
    func update(name: String){
        nameCellHome.text = name
    }
    
    func update(image: String?){
        imageCellHome.image = UIImage(named:  image ?? "")
    }
    
    
}
