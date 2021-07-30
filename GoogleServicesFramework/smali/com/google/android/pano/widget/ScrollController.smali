.class public Lcom/google/android/pano/widget/ScrollController;
.super Ljava/lang/Object;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollController$Axis;
    }
.end annotation


# instance fields
.field public final horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mContext:Landroid/content/Context;

.field private mDragMode:I

.field private mFlingMode:I

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mHorizontalForward:Z

.field private mLerper:Lcom/google/android/pano/widget/Lerper;

.field private mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mMainHorizontal:Z

.field private mOrientation:I

.field private mScrollMode:I

.field private mScrollScroller:Landroid/widget/Scroller;

.field private mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

.field private mState:I

.field private mVerticalForward:Z

.field public final vertical:Lcom/google/android/pano/widget/ScrollController$Axis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 601
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 603
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    .line 605
    new-instance v0, Lcom/google/android/pano/widget/Lerper;

    invoke-direct {v0}, Lcom/google/android/pano/widget/Lerper;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    .line 607
    new-instance v1, Lcom/google/android/pano/widget/ScrollController$Axis;

    const-string v2, "vertical"

    invoke-direct {v1, v0, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;-><init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 609
    new-instance v0, Lcom/google/android/pano/widget/ScrollController$Axis;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    const-string v2, "horizontal"

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;-><init>(Lcom/google/android/pano/widget/Lerper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 611
    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 613
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    const/4 v0, 0x3

    .line 616
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    .line 619
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    const/4 v0, 0x1

    .line 622
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    .line 626
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    .line 627
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    .line 646
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    .line 648
    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .line 649
    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private getMode(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 724
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->touchscreen:I

    if-ne p0, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :cond_1
    :goto_0
    return p1
.end method

.method private updateDirection(FF)V
    .locals 4

    .line 735
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainHorizontal:Z

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-lez v3, :cond_1

    .line 737
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    goto :goto_1

    :cond_1
    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 739
    iput-boolean v2, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    :cond_2
    :goto_1
    cmpl-float p1, p2, v0

    if-lez p1, :cond_3

    .line 742
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    goto :goto_2

    :cond_3
    cmpg-float p1, p2, v0

    if-gez p1, :cond_4

    .line 744
    iput-boolean v2, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final computeAndSetScrollPosition()V
    .locals 4

    .line 955
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 956
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 958
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .line 968
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 969
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 970
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 971
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 960
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$200(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    .line 962
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$400(Lcom/google/android/pano/widget/ScrollController$Axis;)V

    :cond_4
    return-void
.end method

.method public final dragBy(FF)Z
    .locals 2

    .line 838
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 841
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v0

    .line 842
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 843
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 844
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$100(Lcom/google/android/pano/widget/ScrollController$Axis;F)V

    .line 845
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {p1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$100(Lcom/google/android/pano/widget/ScrollController$Axis;F)V

    const/4 p1, 0x3

    .line 846
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 p0, 0x1

    return p0
.end method

.method public final fling(II)Z
    .locals 10

    .line 749
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 752
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 754
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    const/4 v0, 0x1

    .line 755
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 756
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 757
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$000(Lcom/google/android/pano/widget/ScrollController$Axis;)F

    move-result v3

    float-to-int v3, v3

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    .line 756
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    return v0
.end method

.method public final getCurrVelocity()F
    .locals 2

    .line 706
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 707
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 709
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getFinalX()I
    .locals 2

    .line 879
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 880
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalX()I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 882
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalX()I

    move-result p0

    return p0

    .line 884
    :cond_1
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p0

    return p0
.end method

.method public final getFinalY()I
    .locals 2

    .line 888
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 889
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 891
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    return p0

    .line 893
    :cond_1
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p0

    return p0
.end method

.method public final getLastDirection()I
    .locals 1

    .line 942
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainHorizontal:Z

    if-eqz v0, :cond_1

    .line 943
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x42

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    return p0

    .line 945
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x82

    goto :goto_1

    :cond_2
    const/16 p0, 0x21

    :goto_1
    return p0
.end method

.method public final getScrollDuration(IZ)I
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x3e800000    # 0.25f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/16 p1, 0xfa

    const/16 p2, 0x5dc

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public getScrollItemAlign()I
    .locals 0

    .line 674
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result p0

    return p0
.end method

.method public final isFinished()Z
    .locals 5

    .line 915
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 916
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 918
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .line 924
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 926
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x3

    if-ne v0, p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final isMainAxisMovingForward()Z
    .locals 1

    .line 932
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    .line 933
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    :goto_0
    return p0
.end method

.method public final isSecondAxisMovingForward()Z
    .locals 1

    .line 937
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    .line 938
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController;->mVerticalForward:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollController;->mHorizontalForward:Z

    :goto_0
    return p0
.end method

.method public final lerper()Lcom/google/android/pano/widget/Lerper;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mLerper:Lcom/google/android/pano/widget/Lerper;

    return-object p0
.end method

.method public final mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    return-object p0
.end method

.method public final secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    return-object p0
.end method

.method public final setDragMode(I)V
    .locals 0

    .line 694
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mDragMode:I

    return-void
.end method

.method public final setFinalX(I)V
    .locals 2

    .line 897
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 898
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 900
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setFinalY(I)V
    .locals 2

    .line 905
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 906
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 908
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setFlingMode(I)V
    .locals 0

    .line 686
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingMode:I

    return-void
.end method

.method public final setOrientation(I)V
    .locals 2

    .line 653
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollItemAlign()I

    move-result v0

    .line 654
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v1

    .line 655
    iput p1, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 658
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    goto :goto_0

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 661
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 663
    :goto_0
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 664
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    .line 665
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mMainAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p1, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    .line 666
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mSecondAxis:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    return-void
.end method

.method public final setScrollCenter(II)V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 866
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    int-to-float p2, p2

    invoke-static {p1, p2, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$300(Lcom/google/android/pano/widget/ScrollController$Axis;FZ)Z

    .line 868
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p1

    .line 869
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result p2

    .line 870
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 871
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 872
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 873
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 874
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 875
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setScrollItemAlign(I)V
    .locals 0

    .line 670
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollItemAlign(I)V

    return-void
.end method

.method public final startScroll(IIZIZ)V
    .locals 7

    .line 769
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollMode:I

    if-nez v0, :cond_0

    return-void

    .line 772
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollController;->getMode(I)I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    .line 774
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->setOperationMode(I)V

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    .line 777
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 778
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 780
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 781
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->mScrollScroller:Landroid/widget/Scroller;

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v1

    .line 784
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    .line 785
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/2addr v1, p1

    .line 788
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    sub-int p1, v1, p1

    add-int/2addr v2, p2

    .line 789
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result p2

    sub-int p2, v2, p2

    .line 790
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 791
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    :cond_2
    move v5, v1

    move v1, p1

    move p1, v5

    move v6, v2

    move v2, p2

    move p2, v6

    int-to-float v3, v1

    int-to-float v4, v2

    .line 793
    invoke-direct {p0, v3, v4}, Lcom/google/android/pano/widget/ScrollController;->updateDirection(FF)V

    if-eqz p3, :cond_5

    .line 795
    iget-object p3, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    iget-object p5, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p5}, Landroid/widget/Scroller;->getStartX()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    .line 796
    iget-object p5, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p5}, Landroid/widget/Scroller;->getFinalY()I

    move-result p5

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    sub-int/2addr p5, v3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-float p5, p5

    mul-float v3, p3, p3

    mul-float v4, p5, p5

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 797
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 798
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result p0

    mul-float/2addr p3, p0

    div-float/2addr p3, v3

    mul-float/2addr p0, p5

    div-float/2addr p0, v3

    const/4 p5, 0x0

    cmpl-float v3, p3, p5

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move p3, v4

    goto :goto_1

    .line 801
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    div-float/2addr v3, p3

    float-to-int p3, v3

    :goto_1
    cmpl-float p5, p0, p5

    if-nez p5, :cond_4

    goto :goto_2

    .line 802
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p5

    mul-int/lit16 p5, p5, 0x3e8

    int-to-float p5, p5

    div-float/2addr p5, p0

    float-to-int v4, p5

    :goto_2
    if-nez p4, :cond_6

    .line 803
    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p0

    move p4, p0

    goto :goto_3

    :cond_5
    if-nez p4, :cond_6

    mul-int p3, v1, v1

    mul-int p4, v2, v2

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 806
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    invoke-virtual {p0, p3, p5}, Lcom/google/android/pano/widget/ScrollController;->getScrollDuration(IZ)I

    move-result p4

    :cond_6
    :goto_3
    move p5, p4

    move-object p0, v0

    move p3, v1

    move p4, v2

    .line 809
    invoke-virtual/range {p0 .. p5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public final startScrollByMain(IIZIZ)V
    .locals 7

    .line 827
    iget v0, p0, Lcom/google/android/pano/widget/ScrollController;->mOrientation:I

    if-nez v0, :cond_0

    move v2, p1

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, p1

    move v2, p2

    :goto_0
    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    .line 834
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/pano/widget/ScrollController;->startScroll(IIZIZ)V

    return-void
.end method

.method public final stopDrag()V
    .locals 2

    const/4 v0, 0x0

    .line 851
    iput v0, p0, Lcom/google/android/pano/widget/ScrollController;->mState:I

    .line 852
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$202(Lcom/google/android/pano/widget/ScrollController$Axis;F)F

    .line 853
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-static {p0, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->access$202(Lcom/google/android/pano/widget/ScrollController$Axis;F)F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 993
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 994
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "vertical="

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 996
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
