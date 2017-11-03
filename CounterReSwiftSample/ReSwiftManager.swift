//
//  ReSwiftManager.swift
//  CounterReSwiftSample
//
//  Created by Sai Teja Jammalamadaka on 9/6/17.
//  Copyright © 2017 tsjamm. All rights reserved.
//

import ReSwift

class ReSwiftManager {
    
    static func getStore() -> Store<AppState> {
        return mainStore
    }
    
    private static let mainStore = Store<AppState>(
        reducer: counterReducer,
        state: AppState()
    )
}
