//
//  ViewController.swift
//  ARsample
//
//  Created by Tomohiro Tashiro on 2/15/19.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import QuickLook

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let vc = QLPreviewController()
        vc.dataSource = self
        present(vc, animated: false)
    }
}

extension ViewController: QLPreviewControllerDataSource {
    public func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    public func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        // URL must be a file-type URL (local files only)
        return Bundle.main.url(forResource: "ARModel2",
                               withExtension: "usdz")! as QLPreviewItem
    }
}
