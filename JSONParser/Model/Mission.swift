//
//  Mission.swift
//  JSON Parser
//
//  Created by Brandon Rodriguez on 5/28/22.
//

import Foundation

struct Mission: Codable {
    
    let name: String
    let subtitle: String
    let detail: String
    let year: Int

}

struct Missions: Codable  {
    
    let missions: [Mission]
    
}
