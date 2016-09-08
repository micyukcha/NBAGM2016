//
//  CustomCollectionViewLayout.swift
//  NBAGM2016
//
//  Created by Michael Chang on 9/8/16.
//  Copyright © 2016 Michael Chang. All rights reserved.
//

import UIKit

class CustomCollectionViewLayout: UICollectionViewLayout {
    
    // helps calculate cells CGRect
    let CELL_HEIGHT = 30.0
    let CELL_WIDTH = 100.0
    
    // dict to hold UICollectionViewLayoutAttribute for each cell, defines size and positoin (XYZ index)
    var cellAttrsDictionary = Dictionary<NSIndexPath,UICollectionViewLayoutAttributes>()

    // defines size of area user can move around in collection view
    var contentSize = CGSize.zero
    
    // determine if data source updated, data source is responsible if updated
    var dataSourceDidUpdate = true
    
    override func collectionViewContentSize() -> CGSize {
        return self.contentSize
    }
    
    override func prepareLayout() {
        
        // only update header cells
        if !dataSourceDidUpdate {
            let xOffSet = collectionView!.contentOffset.x
            let yOffSet = collectionView!.contentOffset.y
            
            // determine is current content offsets
            if collectionView?.numberOfSections() > 0 {
                for section in 0...collectionView!.numberOfSections()-1 {
                    
                    // confirm section has items
                    if collectionView?.numberOfItemsInSection(section) > 0 {
                        
                        // update for all in first row
                        if section == 0 {
                            for item in 0...collectionView!.numberOfItemsInSection(section)-1 {
                                
                                // build indexPath for each cell to get attributes from dict
                                let indexPath = NSIndexPath(forItem: item, inSection: section)
                                
                                // if cell exists in dictionary, get cells frame attributes and reset to offsets
                                // if first section/row, then update Y to follow uer
                                if let attrs = cellAttrsDictionary[indexPath] {
                                    var frame = attrs.frame
                                    
                                    // if first item/column, update X to follow user
                                    if item == 0 {
                                        frame.origin.x = xOffSet
                                    }
                                    
                                    frame.origin.y = yOffSet
                                    attrs.frame = frame
                                }
                            }
                            
                            // for other sections, only update X for the first time
                        } else {
                            // build index path to get attribute from dict
                            let indexPath = NSIndexPath(forItem: 0, inSection: section)
                            
                            // update Y position to follow
                            if let attrs = cellAttrsDictionary[indexPath] {
                                var frame = attrs.frame
                                frame.origin.x = xOffSet
                                attrs.frame = frame
                            }
                        }
                    }
                }
            }
            
            return
        }
        
        // acknowledge data source change, disable for next time
        dataSourceDidUpdate = false

        // cycle through each section of data source
        if collectionView?.numberOfSections() > 0 {
            for section in 0...collectionView!.numberOfSections()-1 {
                
                // cycle through each item of section
                if collectionView?.numberOfItemsInSection(section) > 0 {
                    for item in 0...collectionView!.numberOfItemsInSection(section)-1 {
                        
                        let cellIndex = NSIndexPath(forItem: item, inSection: section)
                        let xPos = Double(item) * CELL_WIDTH
                        let yPos = Double(section) * CELL_HEIGHT
//                        var calculatedCellWidth: Double

//                        // to customize
//                        if section % 2 == 0 && section != 0 && item != 0 {
//                            calculatedCellWidth = CELL_WIDTH * 2
//                            xPos = Double(item) * calculatedCellWidth - CELL_WIDTH
//                        } else {
//                            calculatedCellWidth = CELL_WIDTH
//                            xPos = Double(item) * calculatedCellWidth
//                        }
//                        
                        var cellAttributes = UICollectionViewLayoutAttributes(forCellWithIndexPath: cellIndex)
                        cellAttributes.frame = CGRect(x: xPos, y: yPos, width: CELL_WIDTH, height: CELL_HEIGHT)
                        
                        // Save the attributes.
                        cellAttrsDictionary[cellIndex] = cellAttributes
                        
                        // Determine zIndex based on cell type.
                        if section == 0 && item == 0 {
                            cellAttributes.zIndex = 4
                        } else if section == 0 {
                            cellAttributes.zIndex = 3
                        } else if item == 0 {
                            cellAttributes.zIndex = 2
                        } else {
                            cellAttributes.zIndex = 1
                        }
                    }
                }
            }
        }
        
        // update content size
        let contentWidth = Double(collectionView!.numberOfItemsInSection(0)) * CELL_WIDTH
        let contentHeight = Double(collectionView!.numberOfSections()) * CELL_HEIGHT
        self.contentSize = CGSize(width: contentWidth, height: contentHeight)
    }
    
    override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
        return cellAttrsDictionary[indexPath]
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        // Create an array to hold all elements
        var attributesInRect = [UICollectionViewLayoutAttributes]()
        
        // Check each element to see if it should be returned.
        for cellAttribute in cellAttrsDictionary.values {
            if CGRectIntersectsRect(rect, cellAttribute.frame) {
                attributesInRect.append(cellAttribute)
            }
        }
        
        // Return list of attributes
        return attributesInRect
    }
    
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        return true
    }
}
