//
//  HomeTableViewController.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 4/10/23.
//

import UIKit

protocol DetailViewProtocol: AnyObject {
    func update(name: String?)
    func update(image: String?)
    func update(description: String?)
    func update(job: String?)
}

class DetailViewController: UIViewController {

    var characterData: CharactersModel?
    var viewModel: DetailViewModelProtocol?

    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var nameCharDetail: UILabel!
    @IBOutlet weak var descriptionDetail: UITextView!
    @IBOutlet weak var jobDetail: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = DetailViewModel(charData: characterData, viewDelegate: self)
        viewModel?.updateView(charData: characterData?.first)
    }
}

extension DetailViewController: DetailViewProtocol {
    func update(name: String?) {
        nameCharDetail.text = name ?? ""
    }

    func update(image: String?) {
        imageDetail.image = UIImage(named: image ?? "")
    }

    func update(description: String?) {
        descriptionDetail.text = description ?? ""
    }

    func update(job: String?) {
        jobDetail.text = job ?? ""
    }
}
