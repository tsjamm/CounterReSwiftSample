//
//  Reducer.swift
//  CounterReSwiftSample
//
//  Created by Sai Teja Jammalamadaka on 9/6/17.
//  Copyright © 2017 tsjamm. All rights reserved.
//

import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    
    // Here state is a value type, hence when assigned, it is copied
    var state = state ?? AppState()
    
    switch action {
    case _ as IncreaseAction:
        state.counter += 1
    case _ as DecreaseAction:
        state.counter -= 1
    case _ as ResetAction:
        state = AppState()
    default:
        ()
    }
    
    return state
}
