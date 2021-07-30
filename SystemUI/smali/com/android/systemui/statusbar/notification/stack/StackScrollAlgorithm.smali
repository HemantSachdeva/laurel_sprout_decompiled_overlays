.class public Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;,
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mClipNotificationScrollToTop:Z

.field private mCollapsedSize:I

.field private mGapHeight:I

.field private mHeadsUpInset:F

.field private final mHostView:Landroid/view/ViewGroup;

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mPinnedZTranslationExtra:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return p0
.end method

.method private childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;IILandroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 510
    invoke-interface {p1, p4, p5}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;->beginsSection(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 2

    .line 628
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result p0

    .line 629
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 630
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr v0, p1

    .line 631
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 632
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p0, p1

    .line 633
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 634
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p2, p2

    sub-float/2addr p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 636
    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 1

    .line 618
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p0

    .line 619
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr p0, p1

    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 618
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 620
    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    iget v0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float v0, p0, v0

    sub-float/2addr p1, v0

    .line 621
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p2

    int-to-float p2, p2

    .line 620
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 622
    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 4

    .line 649
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 654
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 655
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ge v3, p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 657
    :goto_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v0

    .line 658
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 659
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isAppearing()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p3

    if-nez p3, :cond_2

    if-nez p0, :cond_2

    .line 661
    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float p3, v0

    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 663
    :cond_2
    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float p3, v0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_4

    .line 665
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    move-result p0

    if-nez p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    iput-boolean p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 666
    iput-boolean v1, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 667
    iput-boolean v2, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_4
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 3

    .line 128
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 130
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 131
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 132
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 133
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 2

    if-nez p1, :cond_0

    .line 325
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float p0, p0

    return p0

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 327
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float p0, p0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 327
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    return p0

    .line 332
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 335
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    .line 332
    invoke-static {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    return p0
.end method

.method private initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 225
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 227
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    .line 231
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 232
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 240
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 242
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 245
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v7, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v2, v4, :cond_b

    move-object/from16 v9, p1

    .line 259
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 260
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_a

    .line 261
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v11

    if-ne v10, v11, :cond_2

    goto/16 :goto_5

    :cond_2
    if-lt v2, v5, :cond_3

    const/4 v8, 0x0

    .line 268
    :cond_3
    invoke-direct {v0, v1, v7, v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v7

    .line 269
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v11

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_6

    .line 271
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v15, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 273
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 274
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v15

    if-eqz v6, :cond_5

    .line 276
    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v12

    if-lez v14, :cond_4

    .line 278
    invoke-static {v12, v15, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_5

    .line 286
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 283
    invoke-static {v15, v12, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .line 289
    :cond_5
    :goto_2
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    .line 294
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v6

    .line 295
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v11, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_7
    :goto_3
    instance-of v6, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_9

    .line 298
    move-object v6, v10

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 301
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v8

    .line 302
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v8, :cond_9

    .line 303
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 304
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_8

    .line 305
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 306
    iput v7, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    move-object v8, v10

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 315
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 317
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 318
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    .line 319
    :cond_c
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    :cond_d
    const/4 v0, -0x1

    .line 316
    :goto_6
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->access$002(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)I

    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 77
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 79
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height_increased:I

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 81
    sget v0, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 82
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 83
    sget v0, Lcom/android/systemui/R$bool;->config_clipNotificationScrollToTop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 86
    sget v0, Lcom/android/systemui/R$dimen;->heads_up_pinned_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 88
    sget v0, Lcom/android/systemui/R$dimen;->notification_section_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    return-void
.end method

.method private resetChildViewStates()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 122
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 12

    .line 162
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v0

    .line 163
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 166
    :goto_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_1
    if-ge v4, p2, :cond_9

    .line 169
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 170
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v7

    .line 171
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v8, :cond_2

    .line 172
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 174
    :cond_2
    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 175
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v9, v8

    .line 177
    instance-of v10, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_3

    move-object v10, v6

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 178
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v2

    goto :goto_2

    :cond_3
    move v10, v3

    .line 179
    :goto_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v11, :cond_5

    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-eqz v11, :cond_4

    if-eqz v10, :cond_5

    if-nez v5, :cond_5

    :cond_4
    cmpg-float v11, v8, v1

    if-gez v11, :cond_5

    sub-float v11, v1, v8

    float-to-int v11, v11

    .line 184
    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_3

    .line 186
    :cond_5
    iput v3, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    :goto_3
    if-eqz v10, :cond_6

    move v5, v3

    .line 191
    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    move v8, v9

    .line 194
    :goto_4
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9

    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDimmed()Z

    move-result p0

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result v0

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v1

    .line 207
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 209
    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 210
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    .line 211
    iput-boolean p0, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 212
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    if-ne v1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz p0, :cond_1

    if-eqz v5, :cond_1

    .line 215
    iget v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    iput v5, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 12

    .line 542
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 546
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 550
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v3

    sub-float/2addr v2, v3

    .line 551
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 552
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getAppearFraction()F

    move-result v4

    .line 551
    invoke-static {v3, v2, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_b

    .line 558
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 559
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 562
    :cond_1
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 563
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 566
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 567
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v8, :cond_3

    .line 569
    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    move-object v4, v5

    :cond_3
    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v7, v2

    .line 572
    :goto_1
    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 573
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_5

    .line 574
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v9, :cond_5

    .line 575
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v9

    if-nez v9, :cond_5

    .line 577
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    if-eqz v7, :cond_5

    .line 578
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 580
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 581
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 585
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 586
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 587
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 588
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v4, :cond_6

    move-object v9, v1

    goto :goto_2

    .line 590
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_8

    if-nez v7, :cond_8

    .line 591
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v10, :cond_7

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8

    .line 595
    :cond_7
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 596
    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v10, v9

    int-to-float v8, v8

    sub-float/2addr v10, v8

    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 606
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v8, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v7

    if-lez v7, :cond_9

    .line 607
    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 610
    :cond_9
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 611
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 341
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    .line 342
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 343
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 9

    .line 370
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 371
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v2

    move-object v5, p1

    move-object v6, p2

    .line 373
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;FZ)F

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 4

    .line 525
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 527
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 528
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_1

    .line 531
    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 532
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    .line 536
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 4

    .line 140
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 141
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 143
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 144
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    if-lt v1, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 148
    :goto_1
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 2

    .line 688
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 691
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getGapHeightForChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;IILandroid/view/View;Landroid/view/View;)F
    .locals 0

    .line 485
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;IILandroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 487
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 1

    .line 672
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 673
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 674
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 676
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 520
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result p0

    return p0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    return-void
.end method

.method public resetViewStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->resetChildViewStates()V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 104
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 115
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    .line 748
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;FZ)F
    .locals 15

    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 402
    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-lez v7, :cond_0

    .line 403
    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 406
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    move-result-object v1

    iget v2, v8, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->anchorViewIndex:I

    move-object v0, p0

    move/from16 v3, p1

    move-object v4, v9

    .line 405
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;IILandroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 408
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    const/4 v2, 0x0

    .line 409
    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    .line 412
    iget v3, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v3, v3

    add-float v3, p4, v3

    goto :goto_1

    :cond_1
    move/from16 v3, p4

    .line 415
    :goto_1
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v4

    .line 416
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v5

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz p5, :cond_2

    add-int v12, v5, v4

    int-to-float v12, v12

    sub-float v12, v3, v12

    .line 418
    iput v12, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpg-float v3, v3, v11

    if-gtz v3, :cond_3

    .line 420
    iput v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    goto :goto_2

    .line 423
    :cond_2
    iput v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 425
    :cond_3
    :goto_2
    instance-of v3, v9, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 426
    instance-of v12, v9, Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v13, 0x4

    .line 428
    iput v13, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 429
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v14

    add-float/2addr v13, v14

    .line 430
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getIndexOfExpandingNotification()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 431
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v13, v8

    .line 433
    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v14, v8, v11

    if-ltz v14, :cond_6

    .line 436
    iget v14, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v14, v14

    add-float/2addr v8, v14

    add-float/2addr v8, v13

    .line 437
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v14

    cmpg-float v8, v8, v14

    if-gez v8, :cond_5

    const/4 v2, 0x1

    :cond_5
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_6
    if-eqz v3, :cond_7

    .line 440
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 441
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 440
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_8

    .line 443
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 444
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v3

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_3

    .line 445
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    if-eq v9, v2, :cond_9

    move-object/from16 v2, p3

    .line 446
    invoke-direct {p0, v9, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_9
    :goto_3
    if-eqz p5, :cond_a

    .line 450
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v0, :cond_b

    .line 452
    iget v0, v6, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    goto :goto_4

    .line 455
    :cond_a
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v2, v5

    add-float/2addr v0, v2

    int-to-float v2, v4

    add-float/2addr v2, v0

    cmpg-float v0, v2, v11

    if-gtz v0, :cond_b

    .line 457
    iput v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 460
    :cond_b
    :goto_4
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    if-nez v0, :cond_c

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to assign location for child "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StackScrollAlgorithm"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_c
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    add-float/2addr v0, v13

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return v2
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F
    .locals 7

    .line 699
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 700
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 701
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v1

    .line 702
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v2

    int-to-float v2, v2

    .line 703
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v3, :cond_1

    .line 704
    invoke-virtual {p4, p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 705
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    .line 706
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    add-float/2addr p2, v4

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p1

    .line 711
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr p1, p4

    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float/2addr p1, p4

    .line 712
    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p2, p1

    :goto_0
    int-to-float p1, v1

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    .line 714
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_3

    .line 716
    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    if-eq p3, v3, :cond_3

    if-nez p1, :cond_2

    .line 717
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 735
    :cond_2
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_3

    .line 720
    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 721
    :cond_4
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p1

    .line 722
    :goto_2
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    .line 723
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v3, v5

    .line 724
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr v3, p4

    .line 725
    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v5, v5

    add-float/2addr p4, v5

    cmpl-float v5, v3, p4

    if-lez v5, :cond_5

    .line 728
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_3

    :cond_5
    sub-float/2addr p4, v3

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 731
    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, v1

    mul-float/2addr p1, p4

    add-float/2addr v2, p1

    .line 732
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 742
    :goto_3
    iget p1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    move-result p3

    sub-float/2addr v4, p3

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float p0, p0

    mul-float/2addr v4, p0

    add-float/2addr p1, v4

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    return p2
.end method
