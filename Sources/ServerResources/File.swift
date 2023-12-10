//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//
import Appwrite
import Foundation

enum EnvironmentKey {
    case projectId
    case projectEndpoint
    
    var value: String {
        switch self {
        case .projectId:
            return ProcessInfo.processInfo.environment["APPWRITE_FUNCTION_PROJECT_ID"]!
        case .projectEndpoint:
            return ProcessInfo.processInfo.environment["PROJECT_ENDPOINT"]!
        }
    }
}
