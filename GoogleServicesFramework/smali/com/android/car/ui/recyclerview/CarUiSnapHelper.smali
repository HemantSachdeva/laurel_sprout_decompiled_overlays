.class public Lcom/android/car/ui/recyclerview/CarUiSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "CarUiSnapHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    .line 423
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static distanceToTopMargin(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 0

    .line 185
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 186
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 406
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 408
    :cond_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 390
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getPercentageVisible(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F
    .locals 5

    .line 250
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 251
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 253
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 254
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-lt v2, v0, :cond_0

    if-gt v3, v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 v4, 0x0

    if-gt v3, v0, :cond_1

    return v4

    :cond_1
    if-lt v2, v1, :cond_2

    return v4

    :cond_2
    if-gt v2, v0, :cond_3

    if-lt v3, v1, :cond_3

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 267
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_3
    if-ge v2, v0, :cond_4

    int-to-float v1, v3

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 270
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_4
    int-to-float v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    .line 273
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 398
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 400
    :cond_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private static isValidSnapView(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)Z
    .locals 0

    .line 238
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 280
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 73
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->distanceToTopMargin(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v2

    aput v2, v0, v1

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->distanceToTopMargin(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    aput p0, v0, v1

    :cond_2
    return-object v0
.end method

.method public calculateScrollDistance(II)[I
    .locals 5

    .line 307
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->calculateScrollDistance(II)[I

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_0

    return-object p1

    .line 313
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 314
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isAtEnd(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 320
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    .line 322
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 323
    invoke-static {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getPercentageVisible(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result p0

    .line 325
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    cmpl-float p0, p0, v4

    if-lez p0, :cond_3

    .line 331
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v3, p0

    :cond_3
    neg-int p0, v3

    .line 336
    aget p2, p1, v1

    invoke-static {p2, p0, v3}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->clamp(III)I

    move-result p2

    aput p2, p1, v1

    .line 337
    aget p2, p1, v2

    invoke-static {p2, p0, v3}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->clamp(III)I

    move-result p0

    aput p0, p1, v2

    :cond_4
    :goto_1
    return-object p1
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 0

    .line 293
    new-instance p1, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiSmoothScroller;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 13

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 114
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 115
    invoke-static {p0, v2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isValidSnapView(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1

    .line 118
    :cond_2
    iget-object v5, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_3

    return-object v1

    .line 126
    :cond_3
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 129
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-gez v6, :cond_4

    .line 131
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr p0, v6

    cmpl-float p0, v5, p0

    if-lez p0, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 p0, v0, -0x1

    .line 137
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 136
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    .line 141
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v5, v6, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 145
    invoke-static {p0, v2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getPercentageVisible(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v6

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    const v7, 0x7fffffff

    move-object v8, v1

    :goto_2
    if-ge v3, v0, :cond_8

    .line 153
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 154
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 156
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v7, :cond_7

    .line 157
    invoke-static {v9, v2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getPercentageVisible(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    cmpl-float v12, v11, v12

    if-lez v12, :cond_7

    cmpl-float v12, v11, v5

    if-lez v12, :cond_7

    move-object v8, v9

    move v7, v10

    move v5, v11

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    if-eqz v8, :cond_a

    if-eqz v4, :cond_9

    cmpl-float p1, v6, v5

    if-lez p1, :cond_9

    goto :goto_3

    :cond_9
    move-object p0, v8

    .line 181
    :cond_a
    :goto_3
    invoke-static {p0, v2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isValidSnapView(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v1, p0

    :cond_b
    return-object v1
.end method

.method public isAtEnd(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 365
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 371
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    :goto_0
    sub-int/2addr v1, v0

    .line 375
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 374
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 379
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_2

    .line 380
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    .line 381
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    if-gt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public isAtStart(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 346
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 350
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 352
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    .line 356
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 357
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    if-lt v3, p0, :cond_2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method
