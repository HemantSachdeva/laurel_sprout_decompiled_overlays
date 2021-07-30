.class public Lcom/google/android/pano/widget/ScrollController$Axis;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mAlignExtraOffset:I

.field private mDragOffset:F

.field private mExpandedSize:I

.field private mExtraSpaceHigh:I

.field private mExtraSpaceLow:I

.field private mLerper:Lcom/google/android/pano/widget/Lerper;

.field private mMaxEdge:I

.field private mMinEdge:I

.field private mOperationMode:I

.field private mPaddingHigh:I

.field private mPaddingLow:I

.field private mScrollCenter:F

.field private mScrollCenterOffset:I

.field private mScrollCenterOffsetPercent:F

.field private mScrollCenterStrategy:I

.field private mScrollItemAlign:I

.field private mScrollMax:I

.field private mScrollMin:I

.field private mSelectedTakesMoreSpace:Z

.field private mSize:I

.field private mTouchScrollMax:I

.field private mTouchScrollMin:I


# direct methods
.method public constructor <init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V
    .locals 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 103
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 p2, 0x0

    .line 152
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    .line 154
    iput-boolean p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    const/4 v0, -0x1

    .line 189
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 196
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    .line 255
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    .line 256
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mLerper:Lcom/google/android/pano/widget/Lerper;

    .line 257
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/ScrollController$Axis;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/ScrollController$Axis;F)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->dragBy(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/pano/widget/ScrollController$Axis;F)F
    .locals 0

    .line 102
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(FZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/ScrollController$Axis;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateFromDrag()V

    return-void
.end method

.method private dragBy(F)V
    .locals 1

    .line 401
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return-void
.end method

.method private reset()V
    .locals 1

    const/high16 v0, -0x31000000

    .line 405
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    const/high16 v0, -0x80000000

    .line 406
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 407
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 408
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    const v0, 0x7fffffff

    .line 409
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 410
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 411
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    const/4 v0, 0x0

    .line 413
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    return-void
.end method

.method private scrollMax()I
    .locals 2

    .line 315
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    :goto_0
    return p0
.end method

.method private scrollMin()I
    .locals 2

    .line 311
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    :goto_0
    return p0
.end method

.method private updateFromDrag()V
    .locals 2

    .line 397
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollCenter(FZ)Z

    return-void
.end method

.method private updateScrollCenter(FZ)Z
    .locals 4

    const/4 v0, 0x0

    .line 374
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mDragOffset:F

    .line 375
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->scrollMin()I

    move-result v0

    .line 376
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->scrollMax()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 379
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    goto :goto_1

    :cond_0
    int-to-float v0, v0

    cmpg-float v3, p1, v0

    if-gez v3, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    int-to-float v0, v1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 389
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mLerper:Lcom/google/android/pano/widget/Lerper;

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    invoke-virtual {p2, v0, p1}, Lcom/google/android/pano/widget/Lerper;->getValue(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    goto :goto_2

    .line 391
    :cond_3
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    :goto_2
    return v2
.end method


# virtual methods
.method public final getPaddingHigh()I
    .locals 0

    .line 458
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    return p0
.end method

.method public final getPaddingLow()I
    .locals 0

    .line 454
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    return p0
.end method

.method public final getScrollCenter()I
    .locals 0

    .line 303
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    float-to-int p0, p0

    return p0
.end method

.method public final getScrollItemAlign()I
    .locals 0

    .line 299
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    return p0
.end method

.method public final getSelectedTakesMoreSpace()Z
    .locals 0

    .line 291
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    return p0
.end method

.method public final getSizeForExpandableItem()I
    .locals 2

    .line 425
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSystemScrollPos()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos(I)I

    move-result p0

    return p0
.end method

.method public final getSystemScrollPos(I)I
    .locals 9

    .line 466
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mAlignExtraOffset:I

    add-int/2addr p1, v0

    .line 469
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    neg-int v0, v0

    .line 470
    :goto_0
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 471
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int/2addr p1, p0

    add-int/2addr p1, v0

    return p1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 473
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int/2addr v1, p0

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 475
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    int-to-float v1, v1

    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    float-to-int p0, p1

    add-int/2addr p0, v0

    return p0

    .line 478
    :cond_3
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int v4, v0, v1

    iget v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    sub-int/2addr v4, v5

    .line 483
    iget v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    if-ltz v5, :cond_4

    sub-int/2addr v5, v1

    goto :goto_1

    .line 485
    :cond_4
    iget v5, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_5

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    sub-int v5, v0, v1

    goto :goto_1

    .line 488
    :cond_5
    div-int/lit8 v5, v4, 0x2

    :goto_1
    sub-int v0, v4, v5

    .line 493
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->isMinUnknown()Z

    move-result v1

    .line 494
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->isMaxUnknown()Z

    move-result v6

    .line 495
    iget-boolean v7, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 497
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v7

    if-eq v7, v2, :cond_7

    if-eq v7, v3, :cond_6

    .line 506
    iget v8, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    goto :goto_2

    .line 502
    :cond_6
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    add-int v8, v2, v3

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    if-nez v6, :cond_8

    .line 510
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v2, v3

    iget v7, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v2, v7

    if-gt v2, v4, :cond_8

    .line 513
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v3, p0

    return v3

    :cond_8
    if-nez v1, :cond_9

    .line 517
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int v2, p1, v1

    add-int/2addr v2, v8

    if-gt v2, v5, :cond_9

    .line 520
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v1, p0

    return v1

    :cond_9
    if-nez v6, :cond_a

    .line 524
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    sub-int v2, v1, v8

    .line 525
    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    sub-int v6, v3, p1

    add-int/2addr v6, v2

    if-gt v6, v0, :cond_a

    .line 528
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v3, p0

    sub-int/2addr v4, v1

    sub-int/2addr v3, v4

    return v3

    :cond_a
    sub-int/2addr p1, v5

    .line 532
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr p1, p0

    add-int/2addr p1, v8

    return p1

    .line 535
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v7

    if-eq v7, v2, :cond_d

    if-eq v7, v3, :cond_c

    goto :goto_3

    .line 540
    :cond_c
    iget v8, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    goto :goto_3

    .line 537
    :cond_d
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    neg-int v8, v2

    :goto_3
    if-nez v1, :cond_e

    if-nez v6, :cond_e

    .line 548
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v2, v3

    iget v7, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v2, v7

    if-gt v2, v4, :cond_e

    .line 551
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v3, p0

    return v3

    :cond_e
    if-nez v1, :cond_f

    add-int v1, p1, v8

    .line 555
    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    sub-int/2addr v1, v2

    if-gt v1, v5, :cond_f

    .line 558
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v2, p0

    return v2

    :cond_f
    if-nez v6, :cond_10

    .line 562
    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    sub-int v2, v1, p1

    sub-int/2addr v2, v8

    iget v3, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    add-int/2addr v2, v3

    if-gt v2, v0, :cond_10

    .line 565
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr v1, p0

    sub-int/2addr v4, v3

    sub-int/2addr v1, v4

    return v1

    :cond_10
    sub-int/2addr p1, v5

    .line 569
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    sub-int/2addr p1, p0

    add-int/2addr p1, v8

    return p1
.end method

.method public invalidateScrollMax()V
    .locals 1

    const v0, 0x7fffffff

    .line 355
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 356
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 357
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    return-void
.end method

.method public invalidateScrollMin()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 334
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 335
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 336
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 1

    .line 421
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMinUnknown()Z
    .locals 1

    .line 417
    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAlignExtraOffset(I)V
    .locals 0

    .line 445
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mAlignExtraOffset:I

    return-void
.end method

.method public final setExpandedSize(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExpandedSize:I

    return-void
.end method

.method public final setExtraSpaceHigh(I)V
    .locals 0

    .line 441
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceHigh:I

    return-void
.end method

.method public final setExtraSpaceLow(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mExtraSpaceLow:I

    return-void
.end method

.method public final setOperationMode(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mOperationMode:I

    return-void
.end method

.method public final setPadding(II)V
    .locals 0

    .line 449
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingLow:I

    .line 450
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mPaddingHigh:I

    return-void
.end method

.method public final setScrollCenterOffset(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffset:I

    return-void
.end method

.method public final setScrollCenterOffsetPercent(I)V
    .locals 1

    const/16 v0, 0x64

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 283
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterOffsetPercent:F

    return-void
.end method

.method public final setScrollCenterStrategy(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    return-void
.end method

.method public final setScrollItemAlign(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollItemAlign:I

    return-void
.end method

.method public final setSelectedTakesMoreSpace(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSelectedTakesMoreSpace:Z

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateScrollMax(II)V
    .locals 2

    .line 341
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    .line 342
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    int-to-float p1, p1

    .line 343
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 345
    :cond_0
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMaxEdge:I

    .line 346
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    goto :goto_1

    .line 348
    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMax:I

    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMax:I

    :goto_1
    return-void
.end method

.method public final updateScrollMin(II)V
    .locals 2

    .line 320
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    .line 321
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    int-to-float p1, p1

    .line 322
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenter:F

    .line 324
    :cond_0
    iput p2, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mMinEdge:I

    .line 325
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollCenterStrategy:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    goto :goto_1

    .line 327
    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mScrollMin:I

    iput p1, p0, Lcom/google/android/pano/widget/ScrollController$Axis;->mTouchScrollMin:I

    :goto_1
    return-void
.end method
