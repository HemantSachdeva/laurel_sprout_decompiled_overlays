.class Lcom/android/car/ui/recyclerview/DefaultScrollBar;
.super Ljava/lang/Object;
.source "DefaultScrollBar.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/ScrollBar;


# instance fields
.field private mButtonDisabledAlpha:F

.field private mDownButton:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private final mPaginationInterpolator:Landroid/view/animation/Interpolator;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclerViewOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollThumb:Landroid/view/View;

.field private mScrollTrack:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

.field private mUpButton:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerViewOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->updatePaginationButtons()V

    return-void
.end method

.method private calculateScrollThumbLength(II)I
    .locals 0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 204
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private calculateScrollThumbOffset(III)I
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 225
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 226
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p3

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 250
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private isDownEnabled()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$8vQl6fixN4bSs-CT-YNHzqnXe1s(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->updatePaginationButtons()V

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->pageUp()V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->pageDown()V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$8vQl6fixN4bSs-CT-YNHzqnXe1s;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$8vQl6fixN4bSs-CT-YNHzqnXe1s;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private moveY(Landroid/view/View;F)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 235
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setDownEnabled(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setParameters(III)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->calculateScrollThumbLength(II)I

    move-result p3

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->calculateScrollThumbOffset(III)I

    move-result p1

    .line 184
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 186
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, p3, :cond_2

    .line 187
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 191
    :cond_2
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->moveY(Landroid/view/View;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setUpEnabled(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updatePaginationButtons()V
    .locals 4

    .line 377
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isAtStart()Z

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isAtEnd()Z

    move-result v1

    .line 379
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    .line 382
    invoke-direct {p0, v3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setUpEnabled(Z)V

    xor-int/lit8 v3, v1, 0x1

    .line 383
    invoke-direct {p0, v3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setDownEnabled(Z)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 385
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-nez v2, :cond_3

    return-void

    .line 394
    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 397
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 398
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    .line 395
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setParameters(III)V

    goto :goto_2

    .line 401
    :cond_4
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    .line 402
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 403
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v2

    .line 400
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setParameters(III)V

    .line 406
    :goto_2
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public initialize(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 3

    .line 62
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 68
    sget v0, Lcom/android/car/ui/R$dimen;->car_ui_button_disabled_alpha:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result p2

    iput p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    .line 70
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerViewOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 73
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_page_up:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 74
    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$ougX9W0-wDNQIsw8jl5lSk437JM;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$ougX9W0-wDNQIsw8jl5lSk437JM;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    .line 75
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    new-instance v1, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_page_down:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 80
    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$aefeBYoqe3QtKEgRWHADVIqkTDg;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$aefeBYoqe3QtKEgRWHADVIqkTDg;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    .line 81
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    new-instance v1, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_track:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 86
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_thumb:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    .line 88
    new-instance p2, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    .line 89
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 90
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 93
    new-instance p1, Lcom/android/car/ui/recyclerview/FastScroller;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/car/ui/recyclerview/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)V

    .line 94
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/FastScroller;->enable()V

    .line 96
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$MgGXBm2I-0F9RprZkrtHA57cGvc;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$MgGXBm2I-0F9RprZkrtHA57cGvc;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method isAtEnd()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isAtEnd(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    return p0
.end method

.method isAtStart()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isAtStart(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initialize$0$DefaultScrollBar(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initialize$1$DefaultScrollBar(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initialize$2$DefaultScrollBar(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$initialize$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method pageDown()V
    .locals 7

    .line 314
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    .line 325
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 326
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    move v2, v1

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_5

    .line 345
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 346
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-le v6, v1, :cond_4

    .line 347
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    .line 349
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    .line 350
    :cond_3
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 351
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    mul-int/lit8 v6, v1, 0x2

    if-ge v3, v6, :cond_5

    .line 354
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int v2, v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 362
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_6
    :goto_2
    return-void
.end method

.method pageUp()V
    .locals 6

    .line 265
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 285
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 287
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 289
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    neg-int v3, v1

    .line 290
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 291
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_3

    .line 294
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    neg-int v0, v1

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(II)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    .line 120
    invoke-virtual {v0, v1, p1, p0, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
