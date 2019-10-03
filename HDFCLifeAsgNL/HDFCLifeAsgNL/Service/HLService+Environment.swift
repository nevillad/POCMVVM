//
//  HLService+Environment.swift
//  HDFCLifeAsgNL
//
//  Created by Nevil Lad on 26/09/19.
//  Copyright © 2019 Nevil Lad. All rights reserved.
//

import Foundation


#if DEBUG
private var config_environment: HLEnvironment = .debug
#else
private var config_environment: HLEnvironment = .prod
#endif

public enum HLEnvironment {
    case debug
    case prod
    static var current: HLEnvironment { return config_environment}
}

extension HLEnvironment {
    var apiDomain: String {
        switch self {
        case .debug: return "http://makeup-api.herokuapp.com"
        case .prod: return "http://makeup-api.herokuapp.com"
        }
    }
}
