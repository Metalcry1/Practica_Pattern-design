//
//  HomeTableViewController.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 14/10/23.
//

import UIKit

protocol HomeTableViewProtocol: AnyObject {
    func goToDetail(with data: CharacterModel?)
}

class HomeTableViewController: UITableViewController {
    
    var viewModel: HomeTableViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        viewModel?.onViewAppear()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: "HomeCellTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        self.title = "Characters"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleCharacterData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeCellTableViewCell else {
            return UITableViewCell()
        }
        
        if indexPath.row < sampleCharacterData.count {
            let charData = sampleCharacterData[indexPath.row]
            let homeData = ImageCellModel(image: charData.image, name: charData.name)
            cell.updateViews(data: homeData)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = DetailViewController()

        if indexPath.row < sampleCharacterData.count {
            nextVC.characterData = [sampleCharacterData[indexPath.row]]
        }
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

// MARK: - EXTENSION

extension HomeTableViewController: HomeTableViewProtocol {
    func goToDetail(with charData: CharacterModel?) {
        guard let charData = charData else { return }
        let detailVC = DetailViewController()
        detailVC.characterData = [charData]
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

