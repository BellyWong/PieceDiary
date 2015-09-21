//
//  PDPieceEditToolbar.m
//  PieceDiary
//
//  Created by moshuqi on 15/9/14.
//  Copyright (c) 2015年 msq. All rights reserved.
//

#import "PDPieceEditToolbar.h"

@interface PDPieceEditToolbar ()

@property (nonatomic, weak) IBOutlet UIButton *leftBtn;
@property (nonatomic, weak) IBOutlet UIButton *rightBtn;
@property (nonatomic, weak) IBOutlet UIButton *returnPieceViewBtn;
@property (nonatomic, weak) IBOutlet UIButton *addImageBtn;

@end

@implementation PDPieceEditToolbar

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        UIView *containerView = [[[UINib nibWithNibName:@"PDPieceEditToolbar" bundle:nil] instantiateWithOwner:self options:nil] objectAtIndex:0];
        
        CGRect newFrame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        containerView.frame = newFrame;
        [self addSubview:containerView];
    }
    return self;
}

- (IBAction)touchedReturnBtn:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(returnPieceView)])
    {
        [self.delegate returnPieceView];
    }
}

- (IBAction)touchedAddImageBtn:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(showImagePicker)])
    {
        [self.delegate showImagePicker];
    }
}

@end
