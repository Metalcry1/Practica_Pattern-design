//
//  HomeTableViewController.swift
//  MVVCEsdla
//
//  Created by Daniel Serrano on 14/10/23.
//

import UIKit

protocol HomeTableViewProtocol: AnyObject {
    func updateViews()
    func goToDetail(with data: DetailModel?)
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
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
}

// MARK: - EXTENSION

extension HomeTableViewController: HomeTableViewProtocol {
    
    func updateViews() {
        tableView.reloadData()
    }
    
    func goToDetail(with data: DetailModel?) {
        guard let data = data else { return }
        let detailVC = DetailViewController()
        let detailVM = DetailViewModel(data:data, viewDelegate: detailVC )
        detailVC.viewModel = detailVM
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

