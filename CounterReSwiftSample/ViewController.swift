//
//  ViewController.swift
//  CounterReSwiftSample
//
//  Created by Sai Teja Jammalamadaka on 9/6/17.
//  Copyright © 2017 tsjamm. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ReSwiftManager.getStore().subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ReSwiftManager.getStore().unsubscribe(self)
    }
    
    @IBAction func onResetTap(_ sender: Any) {
        ReSwiftManager.getStore().dispatch(ResetAction())
    }

    @IBAction func onIncrementTap(_ sender: Any) {
        ReSwiftManager.getStore().dispatch(IncreaseAction())
    }
    
    @IBAction func onDecrementTap(_ sender: Any) {
        ReSwiftManager.getStore().dispatch(DecreaseAction())
    }
}

extension ViewController: StoreSubscriber {
    func newState(state: AppState) {
        counterLabel.text = "\(state.counter)"
    }
}

