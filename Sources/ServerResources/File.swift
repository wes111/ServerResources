//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//
import Appwrite
import Foundation

public enum EnvironmentKey {
    case projectId
    case projectEndpoint
    case projectApiKey
    
    public var value: String {
        switch self {
        case .projectId:
            return ProcessInfo.processInfo.environment["APPWRITE_FUNCTION_PROJECT_ID"]!
        case .projectEndpoint:
            return ProcessInfo.processInfo.environment["PROJECT_ENDPOINT"]!
        case .projectApiKey:
            return ProcessInfo.processInfo.environment["PROJECT_API_KEY"]!
        }
    }
    
    public static let client: Client = {
        Client()
            .setEndpoint(EnvironmentKey.projectEndpoint.value)
            .setProject(EnvironmentKey.projectId.value)
            .setKey(EnvironmentKey.projectApiKey.value)
    }()
    
    public static let usersService: Users = {
        Users(client)
    }()
}
