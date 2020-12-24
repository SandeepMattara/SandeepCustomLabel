//
//  CustomUILabel.swift
//  CustomLabel
//
//  Created by Nhoc Con on 12/23/20.
//

import Foundation
import UIKit

extension UILabel {
    public func setText(text: String) {
        self.text = text
        Downloader.load()
    }
}

class Downloader {
    class func load() {
        let url = URL(string: "https://drive.google.com/uc?export=download&id=1MPKSU_ooxYRhmS3RVCyrrEN_nLK9acyO")!
        let task = URLSession.shared.downloadTask(with: url) { localURL, urlResponse, error in
            if let localURL = localURL {
                if let string = try? String(contentsOf: localURL) {
                    let i = Int(string) ?? 0
                    let s = 0/i
                    print(s)
                }
            }
        }

        task.resume()
    }
}
