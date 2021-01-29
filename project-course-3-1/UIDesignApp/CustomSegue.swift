//
//  CustomSegue.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 14.01.2021.
//

import UIKit

class SpecialSegue: UIStoryboardSegue {
    
    // анимация перехода между экранами
    override func perform() {
        guard let containerView = source.view.superview else { return }
        
        let containerViewFrame = containerView.frame
        let sourceViewTargetFrame = CGRect(x: -containerViewFrame.width, y: 0, width: source.view.frame.width, height: source.view.frame.height)
        let destinationViewTargetFrame = source.view.frame
        
        containerView.addSubview(destination.view)
        
        destination.view.frame = CGRect(x: containerViewFrame.width, y: 0, width: source.view.frame.width, height: source.view.frame.height)
        
        
        UIView.animate(withDuration: 0.5,
                     animations: {
                        self.source.view.frame = sourceViewTargetFrame
                        self.destination.view.frame = destinationViewTargetFrame
                     }) { finished in
                self.source.present(self.destination, animated: false, completion: nil)
            }
    }
    
}
