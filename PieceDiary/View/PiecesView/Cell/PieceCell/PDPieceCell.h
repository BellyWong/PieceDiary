//
//  PDPieceCell.h
//  PieceDiary
//
//  Created by moshuqi on 15/9/10.
//  Copyright (c) 2015年 msq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDPieceCellDataModel.h"

@interface PDPieceCell : UICollectionViewCell

@property (nonatomic, retain) NSArray *icons;

- (void)setupWithDataModel:(PDPieceCellDataModel *)dataModel;

@end
