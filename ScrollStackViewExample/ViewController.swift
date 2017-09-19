//
//  ViewController.swift
//  ScrollStackViewExample
//
//  Created by Kristaps Grinbergs on 19/09/2017.
//  Copyright © 2017 fassko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  /// TextView
  @IBOutlet var textView: UITextView!
  
  /// TextView height constraint
  @IBOutlet var textViewHeight: NSLayoutConstraint!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidLayoutSubviews() {
    caluclateTextViewHeight()
  }

  override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
    caluclateTextViewHeight()
  }
  
  fileprivate func caluclateTextViewHeight() {
    let size: CGSize = textView.sizeThatFits(CGSize(width: textView.frame.size.width, height: CGFloat.greatestFiniteMagnitude))
    let insets: UIEdgeInsets = textView.textContainerInset
    textViewHeight.constant = size.height + insets.top + insets.bottom
  }
  
}
