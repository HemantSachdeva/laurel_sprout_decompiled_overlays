.class public final Lcom/google/android/pano/widget/ScrollAdapterView;
.super Landroid/widget/AdapterView;
.source "ScrollAdapterView.java"

# interfaces
.implements Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;,
        Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;,
        Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;,
        Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;,
        Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;,
        Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;,
        Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;"
    }
.end annotation


# static fields
.field private static final FLING_PAGE_ITEMS:[I


# instance fields
.field private mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

.field private mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

.field private mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

.field private mAdapterErrorHandler:Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

.field private mAnimateLayoutChange:Z

.field private final mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDataSetChangedFlag:Z

.field private mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

.field private final mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

.field private final mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

.field private mExpandedItemInAnim:Landroid/animation/Animator;

.field private mExpandedItemOutAnim:Landroid/animation/Animator;

.field private final mExpandedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridSetting:I

.field private mItemSelected:I

.field private mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

.field private mItemsOnOffAxis:I

.field private mLastFingItemsIndex:I

.field private mLeftIndex:I

.field private mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

.field private mMadeInitialSelection:Z

.field private mMeasuredSpec:I

.field private mNavigateOutAllowed:Z

.field private mNavigateOutOfOffAxisAllowed:Z

.field private mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPendingScrollPosition:F

.field private mPendingSelection:I

.field private mPlaySoundEffects:Z

.field private mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

.field private mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

.field private mRightIndex:I

.field private mScrapHeight:I

.field private mScrapWidth:I

.field private mScroll:Lcom/google/android/pano/widget/ScrollController;

.field private final mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

.field private mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

.field mScrollTask:Ljava/lang/Runnable;

.field private mScrollTaskRunning:Z

.field private mScrollerState:I

.field private mSelectedIndex:I

.field private mSelectedSize:I

.field private mSpace:I

.field private mSpaceHigh:I

.field private mSpaceLow:I

.field mTempRect:Landroid/graphics/Rect;

.field private mTiltX:F

.field private mTiltY:F

.field private mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

.field private mTrackpadNavigationEnabled:Z

.field private mTrackpadNavigationTiltEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 165
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 505
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v1, -0x1

    .line 170
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    .line 180
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateLayoutChange:Z

    .line 226
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    .line 228
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    .line 240
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    .line 308
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    .line 311
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-direct {v2, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    .line 350
    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-direct {v2}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    .line 351
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    .line 353
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    const/4 v1, 0x0

    .line 354
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingScrollPosition:F

    .line 356
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-direct {v1}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    const/4 v1, 0x0

    .line 367
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;

    .line 370
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;

    .line 372
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutOfOffAxisAllowed:Z

    .line 373
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    .line 488
    new-instance v1, Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-direct {v1, p0}, Lcom/google/android/pano/widget/TrackpadNavigation;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    .line 490
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationEnabled:Z

    .line 492
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    .line 496
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationTiltEnabled:Z

    .line 499
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPlaySoundEffects:Z

    .line 868
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$1;

    invoke-direct {v1, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$1;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 1038
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$2;

    invoke-direct {v1, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$2;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTask:Ljava/lang/Runnable;

    .line 1820
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$3;

    invoke-direct {v1, p0}, Lcom/google/android/pano/widget/ScrollAdapterView$3;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 506
    new-instance v1, Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/pano/widget/ScrollController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 507
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setChildrenDrawingOrderEnabled(Z)V

    .line 508
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSoundEffectsEnabled(Z)V

    .line 509
    invoke-static {}, Lcom/google/android/pano/widget/TrackpadNavigation;->getVisualIndicator()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setWillNotDraw(Z)V

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 511
    new-instance p1, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 512
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/ScrollAdapterView;I)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/pano/widget/ScrollAdapterView;FF)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->doFling(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/ScrollAdapterView;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/pano/widget/ScrollAdapterView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateLayoutChange:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollTaskRunInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterErrorHandler:Lcom/google/android/pano/widget/ScrollAdapterErrorHandler;

    return-object p0
.end method

.method private addAndMeasureExpandableView(II)Landroid/view/View;
    .locals 3

    .line 1330
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1331
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 1332
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1336
    :cond_0
    sget v1, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    new-instance v2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    invoke-direct {v2, v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1337
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1338
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    return-object p1
.end method

.method private adjustSystemScrollPos()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterView;->scrollTo(II)V

    return-void
.end method

.method private applyTransformations()V
    .locals 7

    .line 984
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    if-nez v0, :cond_0

    return-void

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    .line 988
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 989
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 990
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 991
    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 992
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v6

    sub-int/2addr v5, v6

    .line 990
    :goto_1
    invoke-interface {v3, v2, v4, v5}, Lcom/google/android/pano/widget/ScrollAdapterTransform;->transform(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static assertFailure(Ljava/lang/String;)V
    .locals 1

    .line 3391
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private childHasFocus(I)Z
    .locals 2

    .line 1235
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1236
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1240
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private computeScrollCenter(I)I
    .locals 9

    .line 3055
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    .line 3056
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    .line 3057
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3059
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 3067
    :cond_0
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    goto :goto_0

    .line 3064
    :cond_2
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_0

    .line 3061
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenter(Landroid/view/View;)I

    move-result v3

    .line 3070
    :goto_0
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3071
    sget v6, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    sub-int/2addr v3, v2

    :cond_5
    const/4 v2, -0x1

    :goto_1
    if-ge v1, v0, :cond_b

    .line 3076
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-gt v1, p1, :cond_6

    .line 3077
    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v7, v1

    if-ge p1, v7, :cond_6

    return v3

    .line 3080
    :cond_6
    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v8, v0, v7

    if-ge v1, v8, :cond_a

    add-int/2addr v7, v1

    .line 3082
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3083
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v8}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v8

    if-eqz v8, :cond_9

    if-eq v8, v4, :cond_8

    if-eq v8, v5, :cond_7

    goto :goto_3

    .line 3091
    :cond_7
    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 3088
    :cond_8
    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 3085
    :cond_9
    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    div-int/2addr v2, v5

    :goto_2
    add-int/2addr v2, v3

    .line 3094
    :goto_3
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v2, v3

    goto :goto_4

    :cond_a
    const v2, 0x7fffffff

    :goto_4
    move v3, v2

    .line 3075
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v1, v2

    move v2, v3

    goto :goto_1

    :cond_b
    const-string p0, "Scroll out of range?"

    .line 3100
    invoke-static {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->assertFailure(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private doFling(FF)Z
    .locals 5

    .line 1899
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1900
    :goto_0
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_1

    if-nez v0, :cond_1

    .line 1901
    invoke-virtual {p0, v4, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->fling(FF)V

    return v2

    .line 1903
    :cond_1
    iget p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 1904
    invoke-virtual {p0, p1, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->fling(FF)V

    return v2

    :cond_2
    return v1
.end method

.method private ensureSimpleItemTransform()V
    .locals 2

    .line 2492
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    instance-of v0, v0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    if-nez v0, :cond_0

    .line 2493
    new-instance v0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    :cond_0
    return-void
.end method

.method private expandableIndexFromAdapterIndex(I)I
    .locals 1

    .line 2592
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    add-int/2addr v0, p1

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private fillOneAxis(IIZZ)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    if-eqz p3, :cond_0

    .line 1478
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    iget v4, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1479
    :cond_0
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v2, :cond_4

    if-eqz p3, :cond_1

    .line 1483
    iget v7, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/2addr v7, v4

    const/4 v8, -0x1

    invoke-direct {v0, v7, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->addAndMeasureExpandableView(II)Landroid/view/View;

    move-result-object v7

    goto :goto_2

    .line 1484
    :cond_1
    iget v7, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v7, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->addAndMeasureExpandableView(II)Landroid/view/View;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_2

    return v3

    .line 1488
    :cond_2
    iget v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v8, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    goto :goto_3

    .line 1489
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1488
    :goto_3
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1490
    iget v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v8, v4

    .line 1491
    invoke-direct {v0, v8, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemSize(ILandroid/view/View;)I

    move-result v7

    .line 1490
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_6

    .line 1494
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    .line 1495
    iget v4, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v4, :cond_5

    sub-int v4, p1, v5

    goto :goto_4

    :cond_5
    sub-int v4, p2, v5

    move v6, v1

    move v1, v4

    move/from16 v4, p1

    goto :goto_5

    :cond_6
    move/from16 v4, p1

    :goto_4
    move v6, v1

    move/from16 v1, p2

    :goto_5
    move v7, v3

    :goto_6
    const/4 v8, 0x1

    if-ge v7, v2, :cond_11

    add-int v9, v6, v7

    .line 1502
    invoke-virtual {v0, v9}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1503
    sget v11, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 1504
    iput v5, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    .line 1505
    iget v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v13, 0x2

    if-nez v12, :cond_a

    .line 1506
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v12}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v12

    if-eqz v12, :cond_9

    if-eq v12, v8, :cond_8

    if-eq v12, v13, :cond_7

    goto :goto_7

    :cond_7
    add-int v12, v4, v5

    .line 1517
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v12, v13

    .line 1518
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v1

    .line 1517
    invoke-virtual {v10, v13, v1, v12, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1513
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v4

    .line 1514
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v1

    .line 1513
    invoke-virtual {v10, v4, v1, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1508
    :cond_9
    div-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    div-int/2addr v14, v13

    sub-int v14, v12, v14

    .line 1509
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    div-int/2addr v15, v13

    add-int/2addr v12, v15

    .line 1510
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v1

    .line 1508
    invoke-virtual {v10, v14, v1, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1521
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v1, v12

    .line 1522
    iget v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v1, v12

    goto :goto_9

    .line 1524
    :cond_a
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v12}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v12

    if-eqz v12, :cond_d

    if-eq v12, v8, :cond_c

    if-eq v12, v13, :cond_b

    goto :goto_8

    :cond_b
    add-int v12, v1, v5

    .line 1535
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v12, v13

    .line 1536
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    .line 1535
    invoke-virtual {v10, v4, v13, v14, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 1531
    :cond_c
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v4

    .line 1532
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v1

    .line 1531
    invoke-virtual {v10, v4, v1, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 1526
    :cond_d
    div-int/lit8 v12, v5, 0x2

    add-int/2addr v12, v1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    div-int/2addr v14, v13

    sub-int v14, v12, v14

    .line 1527
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1528
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v12, v12, v16

    .line 1526
    invoke-virtual {v10, v4, v14, v15, v12}, Landroid/view/View;->layout(IIII)V

    .line 1539
    :goto_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v4, v12

    .line 1540
    iget v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v4, v12

    :goto_9
    if-eqz p3, :cond_e

    .line 1543
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v13, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    invoke-virtual {v12, v10, v13}, Lcom/google/android/pano/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1544
    iget v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/2addr v12, v8

    iput v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    goto :goto_a

    .line 1546
    :cond_e
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v13, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    invoke-virtual {v12, v10, v13}, Lcom/google/android/pano/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1547
    iget v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v12, v8

    iput v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    .line 1549
    :goto_a
    invoke-direct {v0, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->computeScrollCenter(I)I

    move-result v9

    iput v9, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mScrollCenter:I

    if-eqz p4, :cond_10

    if-eqz p3, :cond_10

    .line 1550
    iget-object v9, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget v11, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    sub-int/2addr v11, v8

    .line 1551
    invoke-interface {v9, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-boolean v9, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    if-nez v9, :cond_10

    .line 1553
    invoke-direct {v0, v10}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v9

    .line 1554
    invoke-direct {v0, v10}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v11

    .line 1555
    iget v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v12, :cond_f

    .line 1556
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v12, v9, v11}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    goto :goto_b

    .line 1558
    :cond_f
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v12, v11, v9}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    .line 1560
    :goto_b
    iput-boolean v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    .line 1561
    invoke-direct {v0, v10, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_11
    return v8
.end method

.method private fillOneLeftChildView(Z)Z
    .locals 7

    .line 1289
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_8

    .line 1295
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v2

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const v3, 0x7fffffff

    move v4, v3

    :goto_0
    if-ge v0, v2, :cond_3

    .line 1298
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1299
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_1

    .line 1300
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 1301
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .line 1304
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v3, :cond_2

    .line 1305
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1310
    :cond_3
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 1311
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    sub-int/2addr v4, v0

    .line 1312
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v0

    sub-int v0, v4, v0

    if-gtz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 1313
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    goto :goto_4

    .line 1315
    :cond_5
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    sub-int/2addr v3, v0

    .line 1316
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v0

    sub-int v0, v3, v0

    if-gtz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    .line 1317
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v4

    :goto_4
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    return v1

    .line 1326
    :cond_7
    invoke-direct {p0, v4, v3, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneAxis(IIZZ)Z

    move-result p0

    return p0

    :cond_8
    return v1
.end method

.method private fillOneRightChildView(Z)Z
    .locals 10

    .line 1571
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 1574
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v0

    .line 1575
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v1

    .line 1577
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_c

    .line 1580
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v3

    sub-int/2addr v3, v4

    .line 1581
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int/2addr v5, v6

    sub-int/2addr v3, v5

    move v5, v2

    .line 1582
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1583
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1584
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v7

    .line 1585
    iget-object v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1587
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_1

    .line 1588
    iget-object v0, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3

    .line 1590
    :cond_1
    iget-object v1, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_3

    .line 1595
    :cond_2
    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v7, :cond_4

    if-nez v5, :cond_3

    .line 1598
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 1599
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-le v7, v0, :cond_6

    .line 1600
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    .line 1605
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_1
    move v5, v4

    goto :goto_2

    .line 1606
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v1, :cond_6

    .line 1607
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1612
    :cond_7
    :goto_3
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_9

    .line 1613
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v0, v1

    .line 1614
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v3

    if-lt v1, v3, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    move v1, v2

    .line 1615
    :goto_4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    goto :goto_6

    .line 1617
    :cond_9
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v1, v0

    .line 1618
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    if-lt v0, v3, :cond_a

    move v0, v4

    goto :goto_5

    :cond_a
    move v0, v2

    .line 1619
    :goto_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v3

    move v9, v1

    move v1, v0

    move v0, v3

    move v3, v9

    :goto_6
    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    return v2

    :cond_b
    move v1, v3

    .line 1626
    :cond_c
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneAxis(IIZZ)Z

    move-result p0

    return p0
.end method

.method private fillVisibleViewsInLayout()V
    .locals 4

    :goto_0
    const/4 v0, 0x1

    .line 1262
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneRightChildView(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1264
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneLeftChildView(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1266
    :cond_1
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1269
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v2

    .line 1270
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v3

    invoke-direct {p0, v2, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollLow(ILandroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMin(II)V

    goto :goto_2

    .line 1272
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->invalidateScrollMin()V

    .line 1274
    :goto_2
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1276
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1277
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    .line 1278
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollHigh(ILandroid/view/View;)I

    move-result p0

    invoke-virtual {v2, v1, p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMax(II)V

    goto :goto_3

    .line 1280
    :cond_3
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController$Axis;->invalidateScrollMax()V

    :goto_3
    return-void
.end method

.method private static findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;",
            ">;I)",
            "Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;"
        }
    .end annotation

    .line 2608
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2610
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2611
    iget v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findViewIndexContainingScrollCenter()I
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 739
    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v1

    const/4 v2, 0x0

    .line 738
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter(IIZ)I

    move-result p0

    return p0
.end method

.method private findViewIndexContainingScrollCenter(IIZ)I
    .locals 7

    .line 693
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    .line 694
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_8

    .line 695
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 696
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v3

    .line 698
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v4, :cond_0

    .line 699
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_1

    .line 701
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 703
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v5

    .line 704
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v5, v2, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasScrollPosition(III)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    .line 705
    invoke-direct {p0, p2, v4, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasScrollPositionSecondAxis(III)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    if-eqz p3, :cond_6

    .line 708
    iget-object p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p3}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result p3

    if-eqz p3, :cond_2

    if-ge v5, p1, :cond_2

    .line 709
    iget p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result p3

    if-ge p1, p3, :cond_3

    .line 710
    iget p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v1, p1

    goto :goto_2

    .line 712
    :cond_2
    iget-object p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p3}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result p3

    if-nez p3, :cond_3

    if-le v5, p1, :cond_3

    .line 713
    iget p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int p1, v1, p1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result p3

    if-lt p1, p3, :cond_3

    .line 714
    iget p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int/2addr v1, p1

    .line 717
    :cond_3
    :goto_2
    iget p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-ne p1, v6, :cond_4

    goto :goto_3

    .line 719
    :cond_4
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->isSecondAxisMovingForward()Z

    move-result p1

    if-eqz p1, :cond_5

    if-ge v3, p2, :cond_5

    add-int/lit8 p1, v1, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result p0

    if-ge p1, p0, :cond_6

    move v1, p1

    goto :goto_3

    .line 724
    :cond_5
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->isSecondAxisMovingForward()Z

    move-result p1

    if-nez p1, :cond_6

    if-ge v3, p2, :cond_6

    add-int/lit8 p1, v1, -0x1

    .line 726
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result p0

    if-lt p1, p0, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    :goto_3
    return v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method private fireDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 864
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    .line 865
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    return-void
.end method

.method private fireItemChange()V
    .locals 6

    .line 2257
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v0

    .line 2258
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2259
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 2262
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2264
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_2

    .line 2266
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2267
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2268
    invoke-interface {v2, v3, v1, v4}, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;->onItemSelected(Landroid/view/View;II)V

    goto :goto_0

    .line 2270
    :cond_1
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    goto :goto_2

    .line 2273
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    .line 2274
    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v2

    .line 2275
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnItemChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;

    .line 2276
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 2277
    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSystemScrollPos(I)I

    move-result v5

    sub-int v5, v2, v5

    .line 2276
    invoke-interface {v4, v1, v0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView$OnItemChangeListener;->onItemSelected(Landroid/view/View;II)V

    goto :goto_1

    .line 2279
    :cond_3
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemSelected:I

    :cond_4
    :goto_2
    const/4 v0, 0x4

    .line 2283
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private fireItemSelected()V
    .locals 6

    .line 2371
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2373
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 2374
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    .line 2373
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 v0, 0x4

    .line 2376
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private fireScrollChange()V
    .locals 6

    .line 2353
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 2354
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 2355
    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 2356
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateScrollInfo(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V

    .line 2357
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ltz v0, :cond_1

    .line 2361
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOnScrollListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;

    .line 2362
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    iget v5, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    iget v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$OnScrollListener;->onScrolled(Landroid/view/View;IFF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAdapterIndex(I)I
    .locals 1

    .line 2588
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final getCenter(Landroid/view/View;)I
    .locals 0

    .line 2558
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    .line 2559
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    :goto_0
    return p0
.end method

.method private final getCenterInOffAxis(Landroid/view/View;)I
    .locals 1

    .line 2563
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    .line 2564
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    :goto_0
    return p0
.end method

.method private getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    .locals 5

    .line 2623
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_1

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2630
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2631
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    invoke-virtual {v2, v0}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 2632
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-interface {v3, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 2636
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2637
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/pano/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 2638
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2640
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;-><init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/view/View;II)V

    .line 2641
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v3, p1, :cond_4

    .line 2642
    iget v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    if-ge v0, v2, :cond_3

    .line 2643
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2647
    :cond_4
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v1
.end method

.method private getScrollCenter(Landroid/view/View;)I
    .locals 0

    .line 3022
    sget p0, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mScrollCenter:I

    return p0
.end method

.method private getScrollHigh(ILandroid/view/View;)I
    .locals 2

    .line 3118
    sget v0, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 3119
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1

    .line 3123
    :cond_1
    iget p0, p2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 3121
    :cond_2
    iget p0, p2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    div-int/2addr p0, v0

    goto :goto_0
.end method

.method private getScrollLow(ILandroid/view/View;)I
    .locals 2

    .line 3105
    sget v0, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 3106
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3112
    :cond_0
    iget p0, p2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    :goto_0
    sub-int/2addr p1, p0

    :cond_1
    return p1

    .line 3108
    :cond_2
    iget p0, p2, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    div-int/2addr p0, v0

    goto :goto_0
.end method

.method private getSelectedItemSize(ILandroid/view/View;)I
    .locals 1

    .line 3382
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    if-eqz v0, :cond_0

    return v0

    .line 3384
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    if-eqz p0, :cond_1

    .line 3385
    invoke-interface {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterCustomSize;->getSelectItemSize(ILandroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final getSize(Landroid/view/View;)I
    .locals 0

    .line 2568
    sget p0, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    return p0
.end method

.method private final getSizeInOffAxis(Landroid/view/View;)I
    .locals 0

    .line 2572
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getTopItem(Landroid/view/View;)Landroid/view/View;
    .locals 2

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 2544
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 2545
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2548
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method private hasScrollPosition(III)Z
    .locals 4

    .line 3030
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sub-int p2, p1, p2

    .line 3038
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr p2, v0

    if-ge p2, p3, :cond_1

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr p1, p0

    if-gt p3, p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 3035
    :cond_2
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int v0, p1, v0

    if-gt v0, p3, :cond_3

    add-int/2addr p1, p2

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr p1, p0

    if-ge p3, p1, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 3032
    :cond_4
    div-int/2addr p2, v1

    sub-int v0, p1, p2

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_5

    add-int/2addr p1, p2

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr p1, p0

    if-ge p3, p1, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method private hasScrollPositionSecondAxis(III)Z
    .locals 2

    .line 3046
    div-int/lit8 p2, p2, 0x2

    sub-int v0, p3, p2

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    add-int/2addr p3, p2

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    add-int/2addr p3, p0

    if-gt p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private heuristicGetPersistentIndex()I
    .locals 8

    .line 1631
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1632
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v2, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1633
    iget v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 1634
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v5, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 1635
    iget p0, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    return p0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_3

    .line 1638
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    add-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    .line 1639
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    return v2

    .line 1642
    :cond_1
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 1643
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-wide v6, v6, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1648
    :cond_3
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    if-lt p0, v0, :cond_4

    add-int/lit8 p0, v0, -0x1

    :cond_4
    return p0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 516
    sget-object v0, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 518
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_orientation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setOrientation(I)V

    .line 520
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    sget v1, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_scrollItemAlign:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/pano/widget/ScrollController;->setScrollItemAlign(I)V

    .line 523
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_gridSetting:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setGridSetting(I)V

    .line 525
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_lowItemTransform:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_lowItemTransform:I

    .line 527
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 526
    invoke-static {p2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setLowItemTransform(Landroid/animation/Animator;)V

    .line 530
    :cond_0
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_highItemTransform:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 531
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_highItemTransform:I

    .line 532
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 531
    invoke-static {p2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setHighItemTransform(Landroid/animation/Animator;)V

    .line 535
    :cond_1
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_expandedItemInAnim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 536
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_expandedItemInAnim:I

    .line 537
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 536
    invoke-static {p2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;

    .line 540
    :cond_2
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_expandedItemOutAnim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 541
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v3, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_expandedItemOutAnim:I

    .line 542
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 541
    invoke-static {p2, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;

    .line 545
    :cond_3
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_space:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSpace(I)V

    .line 547
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_selectedTakesMoreSpace:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectedTakesMoreSpace(Z)V

    .line 550
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_selectedSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectedSize(I)V

    .line 553
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_scrollCenterStrategy:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterStrategy(I)V

    .line 555
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_scrollCenterOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterOffset(I)V

    .line 558
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_scrollCenterOffsetPercent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterOffsetPercent(I)V

    .line 561
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_scrollCenterDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setScrollCenterDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_flingOperationMode:I

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setFlingMode(I)V

    .line 566
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_dragOperationMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setDragMode(I)V

    .line 569
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_navigateOutAllowed:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setNavigateOutAllowed(Z)V

    .line 572
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_navigateOutOfOffAxisAllowed:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setNavigateOutOfOffAxisAllowed(Z)V

    .line 576
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_navigateInAnimationAllowed:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setNavigateInAnimationAllowed(Z)V

    .line 580
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadNavigationEnabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setTrackpadNavigationEnabled(Z)V

    .line 584
    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadNavigationTiltEnabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->setTrackpadNavigationTiltEnabled(Z)V

    .line 587
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p2}, Lcom/google/android/pano/widget/ScrollController;->lerper()Lcom/google/android/pano/widget/Lerper;

    move-result-object p2

    sget v1, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_lerperDivisor:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/pano/widget/Lerper;->setDivisor(F)V

    .line 590
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    sget v1, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadThreshold:I

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    .line 594
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    sget v1, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadSensitivityX:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setSensitivityX(F)V

    .line 597
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    sget v1, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadSensitivityY:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setSensitivityY(F)V

    .line 600
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    sget v1, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadLockAxis:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setLockAxis(Z)V

    .line 603
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    sget p2, Lcom/google/android/pano/ui/R$styleable;->ScrollAdapterView_trackpadOvershootProtection:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/TrackpadNavigation;->setOvershootProtection(F)V

    .line 607
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2131
    :cond_0
    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    .line 2134
    :cond_1
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isDirectionGrowing(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 5

    .line 1771
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1773
    invoke-virtual {p0}, Landroid/widget/AdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1774
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1776
    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 1777
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v4, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1778
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 1781
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1783
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1785
    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 1787
    :cond_2
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, v4, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1788
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_3

    .line 1791
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 1793
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1795
    :goto_1
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    :goto_2
    return-void
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 4

    .line 1343
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1345
    invoke-virtual {p0}, Landroid/widget/AdapterView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1346
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    :cond_0
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne p0, v1, :cond_2

    .line 1351
    iget p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1352
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_1

    .line 1354
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1356
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1359
    :cond_2
    iget p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1360
    iget p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez p0, :cond_3

    .line 1362
    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 1364
    :cond_3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1367
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private pruneInvisibleViewsInLayout()V
    .locals 8

    .line 1141
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    .line 1145
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, v0, :cond_1

    goto :goto_2

    .line 1149
    :cond_1
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 1153
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    .line 1154
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v5, :cond_3

    .line 1155
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_4

    goto :goto_2

    .line 1161
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    .line 1166
    :goto_0
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-ge v4, v5, :cond_6

    add-int v5, v1, v4

    .line 1168
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->childHasFocus(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v1, :cond_12

    .line 1185
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->isMainAxisMovingForward()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1187
    :cond_8
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    move v4, v1

    .line 1191
    :goto_3
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, v3

    if-le v4, v1, :cond_a

    goto :goto_6

    .line 1194
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    sub-int/2addr v1, v3

    .line 1195
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, v0, :cond_b

    goto :goto_6

    .line 1199
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    .line 1200
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_c

    .line 1201
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_d

    goto :goto_6

    .line 1207
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_d

    goto :goto_6

    :cond_d
    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_f

    sub-int v6, v1, v5

    .line 1214
    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->childHasFocus(I)Z

    move-result v6

    if-eqz v6, :cond_e

    move v1, v3

    goto :goto_5

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    move v1, v2

    :goto_5
    if-eqz v1, :cond_11

    :cond_10
    :goto_6
    return-void

    :cond_11
    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_8

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1224
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    sub-int/2addr v7, v3

    invoke-virtual {v6, v5, v7}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveInvisibleView(Landroid/view/View;I)V

    .line 1225
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 1226
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->recycleExpandableView(Landroid/view/View;)V

    .line 1227
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    move v1, v2

    .line 1176
    :goto_8
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-ge v1, v4, :cond_0

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1178
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveInvisibleView(Landroid/view/View;I)V

    .line 1179
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 1180
    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->recycleExpandableView(Landroid/view/View;)V

    .line 1181
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private recycleExpandableView(Landroid/view/View;)V
    .locals 1

    .line 1134
    sget v0, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    if-eqz v0, :cond_0

    .line 1136
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mItemViewType:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->recycleView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private requestNextFocus(ILandroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 2140
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2141
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/widget/AdapterView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2142
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, p2}, Landroid/widget/AdapterView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2143
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, p0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private reset()V
    .locals 7

    .line 667
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->copyFrom(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V

    const/4 v0, -0x1

    .line 668
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    const/4 v1, 0x0

    .line 669
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    .line 670
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    .line 671
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 672
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 673
    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->close()V

    .line 674
    iget-object v5, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 675
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v6, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->viewType:I

    invoke-virtual {v5, v6, v4}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->recycleView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 678
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 679
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 680
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 681
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->recycleExpandableView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->updateAdapter(Lcom/google/android/pano/widget/ScrollAdapterBase;)V

    .line 684
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->updateAdapter(Lcom/google/android/pano/widget/ScrollAdapterBase;)V

    .line 685
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 686
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 687
    iput-boolean v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    return-void
.end method

.method private restoreLoadingState()V
    .locals 10

    .line 1657
    invoke-virtual {p0}, Landroid/widget/AdapterView;->hasFocus()Z

    .line 1661
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 1664
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingScrollPosition:F

    :goto_0
    move v3, v1

    goto :goto_1

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->heuristicGetPersistentIndex()I

    move-result v0

    .line 1668
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->viewLocation:I

    goto :goto_1

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    if-eqz v0, :cond_15

    .line 1671
    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    .line 1672
    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    .line 1673
    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    move v0, v3

    goto :goto_0

    :goto_1
    const/4 v4, -0x1

    .line 1677
    iput v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 1678
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    const/4 v4, 0x0

    .line 1679
    iput-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    const-string v4, "ScrollAdapterView"

    if-ltz v0, :cond_14

    .line 1680
    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_2

    goto/16 :goto_9

    .line 1687
    :cond_2
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int v5, v0, v5

    sub-int v5, v0, v5

    .line 1689
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_4

    if-eq v3, v1, :cond_3

    move v6, v3

    goto :goto_2

    .line 1692
    :cond_3
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v6, v6, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 1691
    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v6

    iget v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    div-int v8, v0, v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 1693
    :goto_2
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v7, v7, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v7}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v7

    goto :goto_3

    .line 1695
    :cond_4
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v6, v6, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v6

    if-eq v3, v1, :cond_5

    move v7, v3

    goto :goto_3

    .line 1698
    :cond_5
    iget-object v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v7, v7, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    .line 1697
    invoke-virtual {v7}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result v7

    iget v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    div-int v9, v0, v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1700
    :goto_3
    iput v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    .line 1701
    iput v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLeftIndex:I

    const/4 v5, 0x0

    .line 1702
    invoke-direct {p0, v6, v7, v8, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneAxis(IIZZ)Z

    .line 1703
    iput-boolean v8, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMadeInitialSelection:Z

    .line 1705
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillVisibleViewsInLayout()V

    .line 1706
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    const-string p0, "unable to restore selection view"

    .line 1708
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1711
    :cond_6
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {v4, v6, v0}, Lcom/google/android/pano/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    if-eq v3, v1, :cond_11

    .line 1712
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_11

    .line 1715
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->getFinalX()I

    move-result v0

    goto :goto_4

    .line 1716
    :cond_7
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->getFinalY()I

    move-result v0

    .line 1717
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 1718
    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    .line 1719
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    if-gt v2, v0, :cond_b

    :goto_5
    if-ge v1, v0, :cond_f

    .line 1721
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v2, v3

    .line 1722
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1724
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneRightChildView(Z)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_7

    .line 1727
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v3

    .line 1729
    :cond_9
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_a

    goto :goto_7

    .line 1733
    :cond_a
    iput v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    move v1, v3

    goto :goto_5

    :cond_b
    :goto_6
    if-le v1, v0, :cond_f

    .line 1738
    iget v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int/2addr v2, v3

    .line 1739
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1741
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneLeftChildView(Z)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_7

    .line 1744
    :cond_c
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableView(I)Landroid/view/View;

    move-result-object v3

    .line 1746
    :cond_d
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v3

    if-ge v3, v0, :cond_e

    goto :goto_7

    .line 1750
    :cond_e
    iput v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    move v1, v3

    goto :goto_6

    .line 1754
    :cond_f
    :goto_7
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_10

    .line 1755
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollController;->setFinalX(I)V

    goto :goto_8

    .line 1757
    :cond_10
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/ScrollController;->setFinalY(I)V

    goto :goto_8

    :cond_11
    if-eq v3, v1, :cond_13

    .line 1759
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-eq v1, v8, :cond_12

    const/4 v3, 0x4

    if-ne v1, v3, :cond_13

    .line 1762
    :cond_12
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 1763
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 1766
    :cond_13
    invoke-direct {p0, v0, v2, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectionInternal(IFZ)V

    :goto_8
    return-void

    .line 1681
    :cond_14
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid selection "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method private scheduleScrollTask()V
    .locals 1

    .line 1032
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1033
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z

    .line 1034
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private scrollStateTransition(Z)V
    .locals 7

    .line 743
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v0

    if-ltz v0, :cond_0

    .line 749
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 751
    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 755
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 756
    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->getCurrVelocity()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result p1

    if-ltz p1, :cond_3

    .line 762
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 763
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->getLastDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollAndFocusTo(Landroid/view/View;IZIZ)V

    goto :goto_0

    .line 767
    :cond_2
    iget p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 768
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    :cond_3
    :goto_0
    return-void
.end method

.method private scrollTaskRunInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 1055
    iput-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollTaskRunning:Z

    .line 1057
    iget-boolean v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    if-eqz v1, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->reset()V

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1067
    :cond_1
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1069
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1070
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    return-void

    .line 1073
    :cond_2
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->restoreLoadingState()V

    .line 1074
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->computeAndSetScrollPosition()V

    .line 1076
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-nez v1, :cond_4

    .line 1079
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 1080
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V

    .line 1084
    :cond_4
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->pruneInvisibleViewsInLayout()V

    .line 1087
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillVisibleViewsInLayout()V

    if-eqz v1, :cond_5

    .line 1089
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 1093
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 1094
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V

    .line 1098
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollStateTransition(Z)V

    .line 1102
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 1103
    iget v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 1104
    iget v0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 1105
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireScrollChange()V

    .line 1111
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->applyTransformations()V

    .line 1114
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1115
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    goto :goto_1

    .line 1118
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    .line 1119
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V

    :goto_1
    return-void

    .line 1061
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->invalidate()V

    .line 1062
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v0, :cond_8

    .line 1063
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V

    :cond_8
    return-void
.end method

.method private selectedItemCanScale()Z
    .locals 1

    .line 3378
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setSelectionInternal(IFZ)V
    .locals 6

    if-ltz p1, :cond_6

    .line 2381
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 2382
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2386
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v0

    .line 2387
    iget-boolean v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataSetChangedFlag:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 2388
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_2

    .line 2394
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2395
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    .line 2396
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_2

    .line 2398
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2399
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2402
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 2404
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_3

    .line 2405
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    goto :goto_1

    .line 2407
    :cond_3
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    add-int/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/pano/widget/ScrollController;->setScrollCenter(II)V

    :goto_1
    const/4 p2, 0x0

    .line 2409
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 2410
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->adjustSystemScrollPos()V

    .line 2411
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->applyTransformations()V

    if-eqz p3, :cond_4

    .line 2413
    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    .line 2414
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireScrollChange()V

    if-nez v3, :cond_4

    .line 2416
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemChange()V

    :cond_4
    return-void

    .line 2389
    :cond_5
    :goto_2
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 2390
    iput p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingScrollPosition:F

    .line 2391
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    return-void

    .line 2383
    :cond_6
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid selection index = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScrollAdapterView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopDragBy()V
    .locals 2

    .line 790
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 791
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 792
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->stopDrag()V

    .line 793
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    :cond_0
    return-void
.end method

.method private transferFocusTo(Landroid/view/View;I)V
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2426
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    .line 2427
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 2430
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestNextFocus(ILandroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 2432
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2435
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireItemSelected()V

    return-void
.end method

.method private updateFlingPageItems(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1931
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    .line 1933
    iget-wide p0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->time:J

    return-void
.end method

.method private updateScrollInfo(Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;)V
    .locals 8

    .line 2287
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v0

    .line 2288
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v1

    const/4 v2, 0x0

    .line 2289
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter(IIZ)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p0, -0x1

    .line 2292
    iput p0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    return-void

    .line 2295
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2296
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    if-le v0, v4, :cond_2

    .line 2298
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2299
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v0, v4

    .line 2300
    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 2303
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    .line 2306
    iput v5, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_0

    .line 2308
    :cond_3
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v6, v2, v6

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 2309
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int/2addr v2, v3

    .line 2310
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2311
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 2312
    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 2316
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSize(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->mainPos:F

    .line 2319
    :goto_0
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v0

    if-le v1, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 2321
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 2322
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v0

    int-to-float v1, v1

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v1, v0

    .line 2323
    iput v1, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto :goto_1

    :cond_5
    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 2328
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSizeInOffAxis(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto :goto_1

    :cond_6
    if-ne v1, v0, :cond_7

    .line 2331
    iput v5, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v2, -0x1

    .line 2333
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 2335
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2336
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 2337
    iput v1, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    move v2, v4

    goto :goto_1

    :cond_8
    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 2342
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSizeInOffAxis(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->secondPos:F

    .line 2345
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    .line 2346
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_2
    iput v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->viewLocation:I

    .line 2347
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2348
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->index:I

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->id:J

    :cond_a
    return-void
.end method

.method private updateViewsLocations(Z)V
    .locals 40

    move-object/from16 v0, p0

    .line 2663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    .line 2664
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->selectedItemCanScale()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 2666
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return-void

    .line 2670
    :cond_3
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    .line 2671
    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v3

    .line 2673
    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2677
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v5

    move v8, v5

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ge v8, v1, :cond_8

    .line 2680
    invoke-virtual {v0, v8}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2681
    invoke-direct {v0, v13}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v14

    .line 2682
    invoke-direct {v0, v13}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v15

    .line 2683
    iget v7, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v7, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_1
    if-gt v14, v2, :cond_7

    .line 2684
    iget v6, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-eq v6, v12, :cond_5

    invoke-direct {v0, v3, v7, v15}, Lcom/google/android/pano/widget/ScrollAdapterView;->hasScrollPositionSecondAxis(III)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2689
    :cond_5
    iget-object v6, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    if-eqz v6, :cond_6

    .line 2691
    invoke-direct {v0, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v7

    .line 2690
    invoke-interface {v6, v7, v13}, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;->getItemAlignmentExtraOffset(ILandroid/view/View;)I

    move-result v11

    :cond_6
    move v9, v8

    move v10, v14

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    const/4 v6, -0x1

    if-ne v9, v6, :cond_9

    return-void

    .line 2699
    :cond_9
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int v6, v9, v2

    if-ge v6, v1, :cond_b

    .line 2702
    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2703
    invoke-direct {v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v2

    .line 2704
    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    if-eqz v3, :cond_a

    .line 2706
    invoke-direct {v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v7

    .line 2705
    invoke-interface {v3, v7, v1}, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;->getItemAlignmentExtraOffset(ILandroid/view/View;)I

    move-result v1

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v6, -0x1

    .line 2711
    :goto_2
    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v3, v9, v3

    if-ge v3, v5, :cond_c

    const/4 v3, -0x1

    .line 2717
    :cond_c
    invoke-direct {v0, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v5

    .line 2718
    invoke-direct {v0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v13, -0x1

    if-eq v6, v13, :cond_d

    .line 2721
    iget v14, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v14, v5

    invoke-direct {v0, v14}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v14

    goto :goto_3

    :cond_d
    move-object v14, v8

    :goto_3
    if-eq v3, v13, :cond_e

    .line 2726
    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int/2addr v5, v3

    invoke-direct {v0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOrCreateExpandedView(I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object v8

    .line 2730
    :cond_e
    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v9, v3

    if-eq v6, v13, :cond_f

    add-int/2addr v6, v3

    .line 2735
    :cond_f
    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2736
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v9, v5, :cond_13

    .line 2743
    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v15

    sub-int v15, v2, v15

    int-to-float v15, v15

    sub-int/2addr v2, v10

    int-to-float v2, v2

    div-float/2addr v15, v2

    if-eqz v7, :cond_11

    .line 2747
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v2, :cond_10

    iget-object v2, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_4

    .line 2748
    :cond_10
    iget-object v2, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v2, v15

    float-to-int v2, v2

    .line 2750
    invoke-virtual {v7, v15}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->setProgress(F)V

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    :goto_5
    if-eqz v14, :cond_16

    .line 2754
    iget v10, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v10, :cond_12

    iget-object v10, v14, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    goto :goto_6

    .line 2755
    :cond_12
    iget-object v10, v14, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    :goto_6
    sub-float v12, v13, v15

    int-to-float v10, v10

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 2757
    invoke-virtual {v14, v12}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->setProgress(F)V

    goto :goto_9

    :cond_13
    if-eqz v7, :cond_15

    .line 2762
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v2, :cond_14

    iget-object v2, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_7

    .line 2763
    :cond_14
    iget-object v2, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2764
    :goto_7
    invoke-virtual {v7, v13}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->setProgress(F)V

    move v15, v13

    goto :goto_8

    :cond_15
    move v15, v13

    const/4 v2, 0x0

    :cond_16
    :goto_8
    const/4 v10, 0x0

    :goto_9
    add-int v12, v2, v10

    const v17, 0x7fffffff

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v18

    sub-int v18, v4, v18

    iget v13, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int v18, v18, v13

    const/16 v16, 0x1

    add-int/lit8 v18, v18, -0x1

    div-int v13, v18, v13

    move/from16 v18, v2

    .line 2776
    iget-boolean v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateLayoutChange:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 2777
    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    move/from16 v19, v3

    move/from16 v20, v10

    move/from16 v22, v12

    move/from16 v21, v17

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_b
    if-ge v3, v13, :cond_3c

    .line 2779
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v25

    move/from16 v26, v13

    iget v13, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    mul-int v27, v3, v13

    move-object/from16 v28, v8

    add-int v8, v25, v27

    add-int/2addr v13, v8

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    if-lt v13, v4, :cond_18

    move/from16 v13, v17

    :cond_18
    move/from16 v25, v4

    move-object/from16 v27, v7

    move v7, v8

    const/4 v4, 0x0

    move/from16 v39, v21

    move-object/from16 v21, v14

    move/from16 v14, v39

    :goto_c
    if-gt v7, v13, :cond_1f

    move/from16 v29, v1

    .line 2787
    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move/from16 v30, v11

    .line 2788
    sget v11, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    move/from16 v31, v2

    if-eqz v2, :cond_1a

    .line 2791
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v2, :cond_19

    .line 2792
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    .line 2793
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v32

    add-float v2, v2, v32

    iput v2, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    goto :goto_d

    .line 2795
    :cond_19
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    .line 2796
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v32

    add-float v2, v2, v32

    iput v2, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    .line 2799
    :cond_1a
    :goto_d
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_e

    .line 2800
    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2799
    :goto_e
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-nez v3, :cond_1e

    .line 2802
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_f

    :cond_1c
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2804
    :goto_f
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2805
    iget v2, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    sub-int/2addr v1, v2

    :cond_1d
    if-ge v1, v14, :cond_1e

    move v14, v1

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v29

    move/from16 v11, v30

    move/from16 v2, v31

    goto :goto_c

    :cond_1f
    move/from16 v29, v1

    move/from16 v31, v2

    move/from16 v30, v11

    add-int v1, v14, v4

    move v7, v8

    const/high16 v11, -0x80000000

    :goto_10
    if-gt v7, v13, :cond_27

    .line 2816
    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v34, v3

    .line 2818
    iget v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_11

    .line 2819
    :cond_20
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_11
    move/from16 v35, v10

    .line 2820
    iget-object v10, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v10}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v10

    if-eqz v10, :cond_22

    move/from16 v36, v5

    const/4 v5, 0x2

    if-eq v10, v5, :cond_21

    move v3, v14

    goto :goto_12

    :cond_21
    sub-int v3, v4, v3

    add-int/2addr v3, v14

    goto :goto_12

    :cond_22
    move/from16 v36, v5

    .line 2822
    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v5, v3

    add-int v3, v14, v5

    .line 2830
    :goto_12
    iget v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v5, :cond_24

    .line 2831
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2832
    invoke-direct {v0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2833
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    .line 2834
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v33

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v37

    move/from16 v38, v14

    add-int v14, v33, v37

    .line 2833
    invoke-virtual {v2, v3, v5, v10, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_13

    :cond_23
    move/from16 v38, v14

    .line 2836
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_13

    :cond_24
    move/from16 v38, v14

    .line 2839
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2840
    invoke-direct {v0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2841
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 2842
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v10, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v3

    .line 2841
    invoke-virtual {v2, v5, v3, v10, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_13

    .line 2844
    :cond_25
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2847
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->selectedItemCanScale()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2849
    invoke-direct {v0, v7}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    invoke-direct {v0, v3, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemSize(ILandroid/view/View;)I

    move-result v2

    .line 2848
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_26
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v34

    move/from16 v10, v35

    move/from16 v5, v36

    move/from16 v14, v38

    goto/16 :goto_10

    :cond_27
    move/from16 v34, v3

    move/from16 v36, v5

    move/from16 v35, v10

    move v2, v8

    :goto_14
    if-gt v2, v13, :cond_28

    .line 2854
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2855
    sget v5, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2856
    iput v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mMaxSize:I

    const/4 v5, 0x0

    .line 2857
    iput v5, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    .line 2858
    invoke-direct {v0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->computeScrollCenter(I)I

    move-result v5

    iput v5, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mScrollCenter:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    if-gt v8, v9, :cond_29

    if-gt v9, v13, :cond_29

    move/from16 v2, v16

    goto :goto_15

    :cond_29
    const/4 v2, 0x0

    :goto_15
    if-gt v8, v6, :cond_2a

    if-gt v6, v13, :cond_2a

    move/from16 v3, v16

    goto :goto_16

    :cond_2a
    const/4 v3, 0x0

    :goto_16
    const/high16 v5, -0x80000000

    if-eq v11, v5, :cond_33

    if-eqz v2, :cond_2b

    sub-int/2addr v11, v4

    int-to-float v4, v11

    mul-float/2addr v4, v15

    :goto_17
    float-to-int v4, v4

    goto :goto_18

    :cond_2b
    if-eqz v3, :cond_2c

    sub-int/2addr v11, v4

    int-to-float v4, v11

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v7, v5, v15

    mul-float/2addr v4, v7

    goto :goto_17

    :cond_2c
    const/4 v4, 0x0

    :goto_18
    if-lez v4, :cond_33

    .line 2872
    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/2addr v1, v4

    add-int/2addr v12, v4

    .line 2875
    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollController;->getScrollItemAlign()I

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2d

    const/4 v5, 0x0

    goto :goto_19

    :cond_2d
    move v5, v4

    goto :goto_19

    .line 2877
    :cond_2e
    div-int/lit8 v5, v4, 0x2

    goto :goto_19

    .line 2890
    :cond_2f
    div-int/lit8 v5, v4, 0x2

    :goto_19
    add-int v7, v36, v5

    sub-int/2addr v4, v5

    add-int v10, v35, v4

    move v4, v8

    :goto_1a
    if-gt v4, v13, :cond_32

    .line 2895
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2896
    iget-object v14, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v14}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSelectedTakesMoreSpace()Z

    move-result v14

    if-eqz v14, :cond_31

    .line 2897
    iget v14, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v14, :cond_30

    .line 2898
    invoke-virtual {v11, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    .line 2900
    :cond_30
    invoke-virtual {v11, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2902
    :goto_1b
    sget v14, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    .line 2903
    invoke-virtual {v11, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2904
    iput v5, v11, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mExtraSpaceLow:I

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_32
    move v5, v7

    goto :goto_1c

    :cond_33
    move/from16 v10, v35

    move/from16 v5, v36

    :goto_1c
    if-eqz v31, :cond_37

    :goto_1d
    if-gt v8, v13, :cond_37

    .line 2912
    invoke-virtual {v0, v8}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2913
    sget v7, Lcom/google/android/pano/ui/R$id;->ScrollAdapterViewChild:I

    invoke-virtual {v4, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;

    .line 2914
    iget v11, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v11, :cond_34

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v11

    goto :goto_1e

    :cond_34
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    :goto_1e
    int-to-float v11, v11

    .line 2915
    iget v14, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocation:F

    cmpl-float v14, v14, v11

    if-eqz v14, :cond_36

    .line 2916
    iget v14, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    move/from16 v32, v5

    const/4 v5, 0x0

    if-nez v14, :cond_35

    .line 2917
    iget v7, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    sub-float/2addr v7, v11

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 2918
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1f

    .line 2920
    :cond_35
    iget v7, v7, Lcom/google/android/pano/widget/ScrollAdapterView$ChildViewHolder;->mLocationInParent:F

    sub-float/2addr v7, v11

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2921
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1f

    :cond_36
    move/from16 v32, v5

    :goto_1f
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v32

    goto :goto_1d

    :cond_37
    move/from16 v32, v5

    if-eqz v2, :cond_39

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v15, v2

    if-nez v3, :cond_38

    move/from16 v3, v18

    goto :goto_20

    :cond_38
    const/4 v3, 0x0

    :goto_20
    add-int/2addr v3, v1

    move/from16 v23, v1

    move v1, v3

    goto :goto_22

    :cond_39
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3b

    cmpl-float v3, v15, v2

    if-nez v3, :cond_3a

    move/from16 v2, v20

    goto :goto_21

    :cond_3a
    move/from16 v2, v22

    :goto_21
    add-int/2addr v2, v1

    move/from16 v24, v1

    move v1, v2

    .line 2936
    :cond_3b
    :goto_22
    iget v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    add-int/2addr v1, v2

    add-int/lit8 v3, v34, 0x1

    move-object/from16 v14, v21

    move/from16 v4, v25

    move/from16 v13, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move/from16 v11, v30

    move/from16 v2, v31

    move/from16 v5, v32

    move/from16 v21, v1

    move/from16 v1, v29

    goto/16 :goto_b

    :cond_3c
    move/from16 v29, v1

    move/from16 v36, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move/from16 v35, v10

    move/from16 v30, v11

    move-object/from16 v21, v14

    .line 2938
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    move/from16 v7, v30

    int-to-float v2, v7

    mul-float/2addr v2, v15

    move/from16 v3, v29

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v13, v4, v15

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->setAlignExtraOffset(I)V

    .line 2940
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/pano/widget/ScrollController$Axis;->setExpandedSize(I)V

    .line 2941
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    move/from16 v2, v36

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->setExtraSpaceLow(I)V

    .line 2942
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/pano/widget/ScrollController$Axis;->setExtraSpaceHigh(I)V

    move/from16 v3, v19

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v3, :cond_3f

    .line 2947
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-object/from16 v4, v27

    move-object/from16 v14, v21

    move-object/from16 v8, v28

    if-eq v2, v4, :cond_3e

    if-eq v2, v14, :cond_3e

    if-eq v2, v8, :cond_3e

    .line 2949
    iget-object v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2950
    iget v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-direct {v0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2951
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 2953
    :cond_3d
    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->close()V

    .line 2954
    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget v7, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-virtual {v5, v6, v7}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveInvisibleView(Landroid/view/View;I)V

    .line 2955
    iget-object v5, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    .line 2956
    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRecycleExpandedViews:Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;

    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->viewType:I

    invoke-virtual {v5, v6, v2}, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->recycleView(Landroid/view/View;I)V

    .line 2957
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    :goto_24
    move-object/from16 v27, v4

    move-object/from16 v28, v8

    move-object/from16 v21, v14

    goto :goto_23

    :cond_3f
    move-object/from16 v14, v21

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    .line 2963
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v1, :cond_46

    .line 2964
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    if-ne v2, v4, :cond_40

    move/from16 v3, v23

    goto :goto_26

    :cond_40
    move/from16 v3, v24

    :goto_26
    if-eq v2, v8, :cond_42

    if-ne v2, v14, :cond_41

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v15, v6

    if-eqz v7, :cond_42

    .line 2967
    :cond_41
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2969
    :cond_42
    iget v6, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_44

    .line 2970
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2971
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-direct {v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2973
    :cond_43
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    iget-object v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    .line 2974
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v9, 0x0

    .line 2973
    invoke-virtual {v6, v3, v9, v7, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_27

    .line 2976
    :cond_44
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2977
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-direct {v0, v6}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    .line 2979
    :cond_45
    iget-object v6, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    .line 2980
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    const/4 v9, 0x0

    .line 2979
    invoke-virtual {v6, v9, v3, v7, v2}, Landroid/view/View;->layout(IIII)V

    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_46
    const/4 v9, 0x0

    .line 2983
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v9

    :goto_28
    if-ge v5, v1, :cond_49

    .line 2984
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v2, v8, :cond_47

    if-ne v2, v14, :cond_48

    cmpl-float v6, v15, v3

    if-nez v6, :cond_48

    .line 2987
    :cond_47
    iget-object v2, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 2993
    :cond_49
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    if-eqz v1, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2994
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2995
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2996
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v2

    if-lt v1, v2, :cond_4b

    .line 2997
    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v7, v9

    :goto_29
    if-ge v7, v2, :cond_4b

    .line 2998
    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2999
    iget v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-direct {v0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v4

    if-ne v4, v1, :cond_4a

    iget-object v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    .line 3000
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4a

    .line 3001
    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_4a
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_4b
    return-void
.end method


# virtual methods
.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1916
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationEnabled:Z

    if-eqz v0, :cond_0

    .line 1917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1918
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->deliverGenericMotionEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 1921
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 2036
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1804
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dragBy(FF)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/pano/widget/ScrollController;->dragBy(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 783
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 784
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1013
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 1014
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackPadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->drawVisualIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public firstExpandableIndex()I
    .locals 0

    .line 2580
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public fling(FF)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/pano/widget/ScrollController;->fling(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 775
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 776
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    :cond_0
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 3

    .line 2524
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2527
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2528
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2529
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2530
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result p0

    add-int/2addr v2, p0

    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1455
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    if-gez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1456
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p0

    :goto_0
    if-gez p0, :cond_1

    return p2

    :cond_1
    if-ge p2, p0, :cond_2

    return p2

    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-ge p2, v0, :cond_3

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p2

    :cond_3
    return p0
.end method

.method getExpandableChild(Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2597
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2598
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 2599
    iget-object v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 2600
    iget p1, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getExpandableView(I)Landroid/view/View;
    .locals 0

    .line 2576
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 799
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    .line 800
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemsForFling(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)I
    .locals 7

    .line 1937
    sget-object v0, Lcom/google/android/pano/widget/ScrollAdapterView;->FLING_PAGE_ITEMS:[I

    iget v1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    .line 1940
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x1

    const/16 v5, 0x11

    if-eq v1, v5, :cond_3

    const/16 v6, 0x42

    if-ne v1, v6, :cond_1

    goto :goto_0

    .line 1958
    :cond_1
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-ne v5, v4, :cond_5

    .line 1959
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSizeForExpandableItem()I

    move-result v3

    int-to-float v3, v3

    .line 1960
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-double v2, v3

    .line 1959
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1961
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateFlingPageItems(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)V

    .line 1962
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    aget p0, v0, p0

    mul-int/2addr p0, v2

    const/16 v0, 0x21

    if-ne v1, v0, :cond_2

    .line 1964
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    goto :goto_1

    .line 1966
    :cond_2
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    goto :goto_2

    .line 1946
    :cond_3
    :goto_0
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_5

    .line 1947
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollController$Axis;->getSizeForExpandableItem()I

    move-result v3

    int-to-float v3, v3

    .line 1948
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-double v2, v3

    .line 1947
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1949
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateFlingPageItems(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)V

    .line 1950
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLastFingItemsIndex:I

    aget p0, v0, p0

    mul-int/2addr p0, v2

    if-ne v1, v5, :cond_4

    .line 1952
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    :goto_1
    add-int v3, p0, p1

    goto :goto_3

    .line 1954
    :cond_4
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    :goto_2
    sub-int v3, p0, p1

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    return v4
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 805
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    .line 806
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    .line 2509
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2512
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mRightIndex:I

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2513
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2515
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result p0

    add-int/2addr v2, p0

    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSelectedExpandedView()Landroid/view/View;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findExpandedView(Ljava/util/ArrayList;I)Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 924
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    :goto_0
    return-object p0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 942
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemId()J
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-wide v1

    .line 952
    :cond_0
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public getSelectedItemPosition()I
    .locals 0

    .line 937
    iget p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    return p0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 918
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    if-ltz v0, :cond_0

    .line 919
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected handleArrowKey(IIZZ)Z
    .locals 10

    .line 2148
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2149
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getExpandableChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 2150
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findFocus()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 2153
    invoke-virtual {v2, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eq v4, v2, :cond_0

    .line 2154
    invoke-static {v0, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2155
    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestNextFocus(ILandroid/view/View;Landroid/view/View;)Z

    return v3

    .line 2159
    :cond_0
    invoke-static {p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->isDirectionGrowing(I)Z

    move-result v2

    const/16 v4, 0x42

    const/4 v5, 0x0

    if-eq p1, v4, :cond_4

    const/16 v4, 0x11

    if-ne p1, v4, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x82

    if-eq p1, v4, :cond_3

    const/16 v4, 0x21

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_3

    .line 2164
    :cond_3
    :goto_0
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v4, :cond_2

    :goto_1
    move v4, v3

    goto :goto_3

    .line 2162
    :cond_4
    :goto_2
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-ne v4, v3, :cond_2

    goto :goto_1

    :goto_3
    const/4 v6, 0x0

    if-eq v0, v1, :cond_6

    if-nez p3, :cond_6

    .line 2169
    instance-of p3, v0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_5

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p3

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2170
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findFocus()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p3, v1, v7, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    :cond_5
    move-object p3, v6

    .line 2172
    :goto_4
    invoke-direct {p0, p3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getTopItem(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return v5

    .line 2181
    :cond_6
    iget p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedIndex:I

    invoke-direct {p0, p3}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p3

    if-gez p3, :cond_7

    return v5

    :cond_7
    if-eqz v4, :cond_b

    if-eqz v2, :cond_9

    add-int/lit8 p2, p3, 0x1

    .line 2187
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result v0

    if-ge p2, v0, :cond_9

    .line 2188
    invoke-direct {p0, p3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int/2addr v0, v1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_9

    .line 2190
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    :cond_8
    :goto_5
    move-object v5, p2

    goto/16 :goto_b

    :cond_9
    if-nez v2, :cond_a

    add-int/lit8 p2, p3, -0x1

    .line 2191
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result v0

    if-lt p2, v0, :cond_a

    .line 2192
    invoke-direct {p0, p3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    rem-int/2addr p3, v0

    if-eqz p3, :cond_a

    .line 2193
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_5

    .line 2195
    :cond_a
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutOfOffAxisAllowed:Z

    xor-int/2addr p0, v3

    return p0

    .line 2198
    :cond_b
    invoke-direct {p0, p3}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p3

    add-int/2addr p2, v3

    move v0, p3

    :goto_6
    if-lez p2, :cond_13

    if-eqz v2, :cond_c

    .line 2201
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    add-int/2addr v1, v0

    goto :goto_7

    .line 2202
    :cond_c
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    sub-int v1, v0, v1

    :goto_7
    if-eqz v2, :cond_d

    .line 2203
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_e

    :cond_d
    if-nez v2, :cond_11

    if-gez v1, :cond_11

    :cond_e
    if-eq v0, p3, :cond_f

    .line 2205
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 2206
    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_13

    .line 2207
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AdapterView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    if-eqz p1, :cond_10

    .line 2209
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p1

    .line 2208
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2210
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_10

    .line 2211
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2214
    :cond_10
    iget-boolean p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    xor-int/2addr p0, v3

    return p0

    .line 2220
    :cond_11
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    add-int/lit8 p2, p2, -0x1

    :cond_12
    move v0, v1

    goto :goto_6

    :cond_13
    if-eqz v2, :cond_17

    .line 2226
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p2

    if-gt v0, p2, :cond_15

    .line 2227
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_8

    .line 2230
    :cond_15
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneRightChildView(Z)Z

    move-result p2

    if-nez p2, :cond_14

    :goto_8
    if-nez v6, :cond_16

    .line 2232
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_a

    :cond_16
    move-object p2, v6

    goto :goto_a

    .line 2236
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result p2

    if-lt v0, p2, :cond_18

    .line 2237
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->expandableIndexFromAdapterIndex(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_9

    .line 2240
    :cond_18
    invoke-direct {p0, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->fillOneLeftChildView(Z)Z

    move-result p2

    if-nez p2, :cond_17

    :goto_9
    if-nez v6, :cond_16

    .line 2242
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    :goto_a
    if-nez p2, :cond_8

    return v3

    :goto_b
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p1

    move v9, p4

    .line 2249
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->scrollAndFocusTo(Landroid/view/View;IZIZ)V

    .line 2250
    iget-boolean p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPlaySoundEffects:Z

    if-eqz p2, :cond_19

    .line 2251
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    :cond_19
    return v3
.end method

.method protected internalKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x42

    .line 2047
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :pswitch_1
    const/16 v2, 0x11

    .line 2042
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :pswitch_2
    const/16 v2, 0x82

    .line 2057
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :pswitch_3
    const/16 v2, 0x21

    .line 2052
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2062
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lastExpandableIndex()I
    .locals 0

    .line 2584
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 998
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 1000
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1001
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 1002
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1003
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 1004
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 1003
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v2, v0

    int-to-float v3, v1

    .line 1005
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1006
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    .line 1007
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2067
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V

    .line 2068
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->internalKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2076
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2077
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v0

    .line 2078
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2080
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v4

    .line 2081
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 2082
    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    .line 2081
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 p0, 0x1

    return p0

    .line 2090
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1027
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 1028
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->updateViewsLocations(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1372
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-nez v0, :cond_0

    const-string v0, "ScrollAdapterView"

    const-string v1, "onMeasure: Adapter not available "

    .line 1373
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->setPadding(II)V

    .line 1378
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object v0, v0, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->setPadding(II)V

    .line 1380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1381
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1382
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1383
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1384
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1385
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1387
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    .line 1388
    iget-object v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    invoke-interface {v6, p0}, Lcom/google/android/pano/widget/ScrollAdapterBase;->getScrapView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1389
    invoke-direct {p0, v6, v8, v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureScrapChild(Landroid/view/View;II)V

    .line 1390
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    .line 1391
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    .line 1394
    :cond_1
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    const/4 v7, 0x1

    if-lez v6, :cond_2

    goto :goto_1

    .line 1395
    :cond_2
    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v6, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    .line 1396
    :cond_3
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    div-int v6, v5, v4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    :goto_0
    move v6, v7

    goto :goto_1

    .line 1397
    :cond_5
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    div-int v6, v4, v5

    :goto_1
    iput v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    if-nez v6, :cond_6

    .line 1399
    iput v7, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    .line 1402
    :cond_6
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    if-eqz v4, :cond_7

    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    iget v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    if-eq v5, v4, :cond_7

    const/4 v4, 0x0

    .line 1403
    iput-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    :cond_7
    const/high16 v4, -0x80000000

    if-eqz v0, :cond_8

    if-ne v0, v4, :cond_b

    .line 1407
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-ne v5, v7, :cond_b

    .line 1409
    :cond_8
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-ne v5, v7, :cond_9

    .line 1410
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    mul-int/2addr v5, v6

    iget v9, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    sub-int/2addr v6, v7

    mul-int/2addr v9, v6

    add-int/2addr v5, v9

    goto :goto_2

    :cond_9
    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    .line 1411
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v5, v6

    if-ne v0, v4, :cond_a

    .line 1412
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_a
    move v2, v5

    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    if-ne v1, v4, :cond_f

    .line 1418
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_f

    .line 1420
    :cond_c
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_d

    .line 1421
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    iget v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    mul-int/2addr v0, v5

    iget v6, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    sub-int/2addr v5, v7

    mul-int/2addr v6, v5

    add-int/2addr v0, v6

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    .line 1422
    :goto_4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    if-ne v1, v4, :cond_e

    .line 1423
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_e
    move v3, v0

    .line 1425
    :cond_f
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_10

    move p1, p2

    :cond_10
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    .line 1427
    invoke-virtual {p0, v2, v3}, Landroid/widget/AdapterView;->setMeasuredDimension(II)V

    .line 1430
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingLow()I

    move-result p1

    .line 1431
    iget p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez p2, :cond_11

    move v2, v3

    :cond_11
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    .line 1432
    invoke-virtual {p2}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getPaddingHigh()I

    move-result p2

    sub-int/2addr v2, p2

    .line 1433
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p2}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p2

    invoke-virtual {p2, p1, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMin(II)V

    .line 1434
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->updateScrollMax(II)V

    .line 1436
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5
    if-ge v8, p1, :cond_12

    .line 1437
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 1438
    iget-object p2, p2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1441
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->firstExpandableIndex()I

    move-result p1

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    move-result p2

    if-ge p1, p2, :cond_14

    .line 1442
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1443
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1444
    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->measureChild(Landroid/view/View;)V

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 6

    .line 1975
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto/16 :goto_6

    .line 1984
    :cond_0
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V

    goto/16 :goto_6

    .line 1987
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationTiltEnabled:Z

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 1990
    :cond_2
    check-cast p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    .line 1991
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-eq v0, v1, :cond_3

    goto/16 :goto_6

    .line 1995
    :cond_3
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    const v3, 0x3d4ccccd    # 0.05f

    const/4 v4, 0x0

    if-le v0, v2, :cond_5

    .line 1996
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 1997
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, v3

    :goto_1
    move v0, p1

    move p1, v4

    goto :goto_4

    .line 1999
    :cond_4
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    :goto_2
    int-to-float v0, v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, v3

    :goto_3
    move v0, v4

    goto :goto_4

    .line 2001
    :cond_5
    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    if-nez v0, :cond_7

    .line 2002
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    move p1, v4

    goto :goto_3

    .line 2003
    :cond_6
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapWidth:I

    goto :goto_2

    .line 2005
    :cond_7
    iget v0, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    move p1, v4

    goto :goto_1

    .line 2006
    :cond_8
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    iget v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrapHeight:I

    goto :goto_0

    :goto_4
    cmpl-float v3, p1, v4

    if-nez v3, :cond_9

    cmpl-float v3, v0, v4

    if-eqz v3, :cond_d

    .line 2009
    :cond_9
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    if-eq v3, v1, :cond_a

    .line 2011
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltX:F

    .line 2012
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltY:F

    .line 2013
    iput v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    goto :goto_5

    .line 2015
    :cond_a
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltX:F

    sub-float v1, p1, v1

    .line 2016
    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltY:F

    sub-float v3, v0, v3

    .line 2017
    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v4, v1, v3}, Lcom/google/android/pano/widget/ScrollController;->dragBy(FF)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2018
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    .line 2020
    :cond_b
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltX:F

    .line 2021
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTiltY:F

    :goto_5
    return v2

    .line 1977
    :cond_c
    check-cast p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 1978
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getItemsForFling(Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;)I

    move-result v0

    .line 1979
    iget p1, p1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->handleArrowKey(IIZZ)Z

    move-result p0

    if-eqz p0, :cond_d

    return v2

    :cond_d
    :goto_6
    const/4 p0, 0x0

    return p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 3010
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedExpandedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3012
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 3014
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3016
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 3202
    instance-of v0, p1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;

    if-nez v0, :cond_0

    .line 3203
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3206
    :cond_0
    check-cast p1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;

    .line 3207
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3208
    iget-object p1, p1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 3209
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 3183
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3184
    new-instance v1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3185
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->lastExpandableIndex()I

    .line 3186
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->findViewIndexContainingScrollCenter()I

    move-result v2

    if-gez v2, :cond_0

    return-object v0

    .line 3190
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveVisibleViews()V

    .line 3191
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/ViewsStateBundle;->saveVisibleViews()V

    .line 3192
    iget-object v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    iput v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    .line 3193
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->getAdapterIndex(I)I

    move-result v3

    iput v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    .line 3194
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    .line 3195
    iget-object v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ViewsStateBundle;->getChildStates()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    .line 3196
    iget-object v0, v1, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ViewsStateBundle;->getChildStates()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 974
    iget-object p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object p3, p3, Lcom/google/android/pano/widget/ScrollController;->horizontal:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p3, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSize(I)V

    .line 975
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    iget-object p1, p1, Lcom/google/android/pano/widget/ScrollController;->vertical:Lcom/google/android/pano/widget/ScrollController$Axis;

    invoke-virtual {p1, p2}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSize(I)V

    .line 976
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1125
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1126
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz v0, :cond_1

    .line 1127
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollController;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1129
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    :cond_1
    return-void
.end method

.method public scrollAndFocusTo(Landroid/view/View;IZIZ)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2442
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    return-void

    .line 2445
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollCenter(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    sub-int v4, v1, v2

    .line 2446
    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemsOnOffAxis:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v5, v0

    goto :goto_0

    .line 2447
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getCenterInOffAxis(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController;->secondAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/pano/widget/ScrollController$Axis;->getScrollCenter()I

    move-result v2

    sub-int/2addr v1, v2

    move v5, v1

    :goto_0
    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2455
    :cond_2
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    .line 2449
    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollerState:I

    .line 2450
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/pano/widget/ScrollController;->startScrollByMain(IIZIZ)V

    .line 2458
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->transferFocusTo(Landroid/view/View;I)V

    .line 2460
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->scheduleScrollTask()V

    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    if-eqz v0, :cond_0

    .line 893
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 895
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapter;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    .line 896
    invoke-interface {v0}, Lcom/google/android/pano/widget/ScrollAdapter;->getExpandAdapter()Lcom/google/android/pano/widget/ScrollAdapterBase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    .line 897
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapter;

    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 898
    instance-of v0, p1, Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 899
    move-object v0, p1

    check-cast v0, Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomSize:Lcom/google/android/pano/widget/ScrollAdapterCustomSize;

    .line 900
    instance-of v0, p1, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    if-eqz v0, :cond_2

    .line 901
    check-cast p1, Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mAdapterCustomAlign:Lcom/google/android/pano/widget/ScrollAdapterCustomAlign;

    const/4 p1, -0x1

    .line 902
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mMeasuredSpec:I

    .line 903
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mLoadingState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 904
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mPendingSelection:I

    .line 905
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandableChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandableChildStates;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ViewsStateBundle;->clear()V

    .line 906
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedChildStates:Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ViewsStateBundle;->clear()V

    .line 907
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mCurScroll:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 908
    iget-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollBeforeReset:Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;

    invoke-virtual {p1}, Lcom/google/android/pano/widget/ScrollAdapterView$ScrollInfo;->clear()V

    .line 909
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->fireDataSetChanged()V

    return-void
.end method

.method public setDragMode(I)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController;->setDragMode(I)V

    return-void
.end method

.method public setFlingMode(I)V
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController;->setFlingMode(I)V

    return-void
.end method

.method public setGridSetting(I)V
    .locals 0

    .line 1253
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mGridSetting:I

    .line 1254
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public setHighItemTransform(Landroid/animation/Animator;)V
    .locals 0

    .line 2503
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->ensureSimpleItemTransform()V

    .line 2504
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    check-cast p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->setHighItemTransform(Landroid/animation/Animator;)V

    return-void
.end method

.method public setLowItemTransform(Landroid/animation/Animator;)V
    .locals 0

    .line 2498
    invoke-direct {p0}, Lcom/google/android/pano/widget/ScrollAdapterView;->ensureSimpleItemTransform()V

    .line 2499
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mItemTransform:Lcom/google/android/pano/widget/ScrollAdapterTransform;

    check-cast p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->setLowItemTransform(Landroid/animation/Animator;)V

    return-void
.end method

.method public setNavigateInAnimationAllowed(Z)V
    .locals 0

    return-void
.end method

.method public setNavigateOutAllowed(Z)V
    .locals 0

    .line 3331
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutAllowed:Z

    return-void
.end method

.method public setNavigateOutOfOffAxisAllowed(Z)V
    .locals 0

    .line 3324
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mNavigateOutOfOffAxisAllowed:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 611
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mOrientation:I

    .line 612
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController;->setOrientation(I)V

    return-void
.end method

.method public setScrollCenterDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScrollCenterDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setScrollCenterOffset(I)V
    .locals 0

    .line 2476
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollCenterOffset(I)V

    return-void
.end method

.method public setScrollCenterOffsetPercent(I)V
    .locals 0

    .line 2480
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollCenterOffsetPercent(I)V

    return-void
.end method

.method public setScrollCenterStrategy(I)V
    .locals 0

    .line 2468
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setScrollCenterStrategy(I)V

    return-void
.end method

.method public setSelectedSize(I)V
    .locals 0

    .line 3361
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSelectedSize:I

    return-void
.end method

.method public setSelectedTakesMoreSpace(Z)V
    .locals 0

    .line 3370
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mScroll:Lcom/google/android/pano/widget/ScrollController;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollController;->mainAxis()Lcom/google/android/pano/widget/ScrollController$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/ScrollController$Axis;->setSelectedTakesMoreSpace(Z)V

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 811
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->setSelectionInternal(IFZ)V

    return-void
.end method

.method public setSpace(I)V
    .locals 1

    .line 3348
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpace:I

    .line 3350
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceLow:I

    sub-int/2addr p1, v0

    .line 3351
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mSpaceHigh:I

    return-void
.end method

.method public setTrackpadNavigationEnabled(Z)V
    .locals 0

    .line 646
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationEnabled:Z

    return-void
.end method

.method public setTrackpadNavigationTiltEnabled(Z)V
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView;->mTrackpadNavigationTiltEnabled:Z

    return-void
.end method
