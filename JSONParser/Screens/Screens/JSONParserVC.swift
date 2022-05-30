//
//  ViewController.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/27/22.
//

import UIKit

class JSONParserVC: UIViewController {
    
    let tableView = UITableView()
    
    var missions: [Mission] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        configureTableView()
        retrieveJSON()
        
    }

    private func configureViewController() {
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    private func configureTableView() {
        
        view.addSubview(tableView)
        tableView.frame =  view.bounds
        tableView.rowHeight = 100
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(JPCell.self, forCellReuseIdentifier: JPCell.reuseID)
        
    }
    
    /// Retrieves JSON file from bundle and displays data in the TableView
    private func retrieveJSON() {
        
        guard let url = Bundle.main.url(forResource: "Parser", withExtension: "json") else {
            
            fatalError("❌ Failed to locate file in bundle.")
            
        }
        
        guard let data = try? Data(contentsOf: url) else {
            
            fatalError("❌ Failed to load file from bundle.")
            
        }
        
        let decoder = JSONDecoder()
        
        do {
           
            let response = try decoder.decode(Missions.self, from: data)
            missions.append(contentsOf: response.missions)
            DispatchQueue.main.async { self.tableView.reloadData() }

        } catch {
            
            fatalError("❌ Unable to decode JSON.")

        }
        
    }

}

extension JSONParserVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return missions.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: JPCell.reuseID) as! JPCell
        
        let mission: Mission
        mission = missions[indexPath.row]
        
        cell.set(mission: mission)
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mission: Mission
        mission = missions[indexPath.row]
        
        let destVC = MissionDetailVC(mission: mission)
        
        navigationController?.pushViewController(destVC, animated: true)
        
    }
    
}
