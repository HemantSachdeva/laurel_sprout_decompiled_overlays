.class public Lcom/google/android/pano/util/TouchNavSpaceTracker;
.super Ljava/lang/Object;
.source "TouchNavSpaceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;,
        Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;,
        Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    }
.end annotation


# static fields
.field private static final DIRECTIONS:[I

.field private static final DIRECTION_BOUNDARIES:[F


# instance fields
.field private mDampedSensitivity:F

.field private mDampingDuration:F

.field private mFlickMaxDistance:F

.field private mFlickMaxDuration:J

.field private mFlickMaxSquared:F

.field private mFlickMinDistance:F

.field private mFlickMinSquared:F

.field private mHandler:Landroid/os/Handler;

.field protected mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

.field private mLPFCurrX:F

.field private mLPFCurrY:F

.field private mLPFEnabled:Z

.field private mMovementBlockTime:J

.field private mPhysicalHeight:F

.field private mPhysicalPosition:Landroid/graphics/PointF;

.field private mPhysicalWidth:F

.field private mPixelHeight:F

.field protected mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

.field private mPixelWidth:F

.field private mPixelsPerMm:F

.field private mPrevPhysPosition:Landroid/graphics/PointF;

.field private mSensitivity:F

.field private mSensitivityInterpolator:Landroid/animation/TimeInterpolator;

.field protected final mTouchParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/pano/util/TouchNavMotionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mWasBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTION_BOUNDARIES:[F

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 51
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTIONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x3fd01221
        -0x4004ac2f
        -0x4069341c
        -0x4136f025
        0x3ec90fdb
        0x3f96cbe4
        0x3ffb53d1
        0x402feddf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x2
        0x6
        0x4
        0xc
        0x8
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;)V
    .locals 4

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    .line 339
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    .line 351
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivityInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v1, 0x43480000    # 200.0f

    .line 353
    iput v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampingDuration:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 354
    iput v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampedSensitivity:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 355
    iput v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    .line 360
    iput v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinDistance:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v1, v3

    .line 361
    iput v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDistance:F

    mul-float/2addr v2, v2

    .line 362
    iput v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinSquared:F

    mul-float/2addr v1, v1

    .line 363
    iput v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxSquared:F

    const-wide/16 v1, 0xfa

    .line 364
    iput-wide v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDuration:J

    .line 366
    iput-boolean v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    .line 374
    new-instance v0, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker$1;-><init>(Lcom/google/android/pano/util/TouchNavSpaceTracker;)V

    iput-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    .line 394
    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    .line 395
    iput-object p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    .line 397
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mTouchParams:Landroid/util/SparseArray;

    const/high16 p1, 0x42f00000    # 120.0f

    .line 398
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 399
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    const/4 p1, 0x0

    .line 400
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    .line 401
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    .line 402
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    return-void
.end method

.method private calculateSensitivity(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 4

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mMovementBlockTime:J

    cmp-long p1, p1, v2

    const/4 p2, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 844
    iput-boolean p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    move v0, p2

    goto :goto_0

    :cond_0
    long-to-float p1, v0

    .line 845
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampingDuration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 846
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivityInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr p1, v0

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 850
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mDampedSensitivity:F

    iget v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    goto :goto_0

    .line 853
    :cond_1
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mSensitivity:F

    :goto_0
    cmpl-float p1, v0, p2

    if-eqz p1, :cond_2

    .line 855
    iget-boolean p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 857
    iput-boolean p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mWasBlocked:Z

    .line 858
    iget-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    :cond_2
    return v0
.end method

.method private checkForLongClick(ILandroid/view/KeyEvent;)V
    .locals 2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 736
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 737
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    iget-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 739
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private clampPosition()V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 785
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    goto :goto_0

    .line 786
    :cond_0
    iget v3, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 787
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    .line 789
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    .line 790
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    goto :goto_1

    .line 791
    :cond_2
    iget v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 792
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    :cond_3
    :goto_1
    return-void
.end method

.method private getDpadDirection(FF)I
    .locals 2

    neg-float p0, p2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 798
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x0

    .line 800
    :goto_0
    sget-object p2, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTION_BOUNDARIES:[F

    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 801
    aget p2, p2, p1

    cmpg-float p2, p0, p2

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 805
    :cond_1
    :goto_1
    sget-object p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->DIRECTIONS:[I

    aget p0, p0, p1

    return p0
.end method

.method private getPhysicalX(F)F
    .locals 3

    .line 825
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    .line 828
    :cond_0
    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    return p1
.end method

.method private getPhysicalY(F)F
    .locals 3

    .line 832
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    .line 835
    :cond_0
    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    return p1
.end method

.method private getPixelX(F)F
    .locals 1

    .line 817
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    div-float/2addr p1, p0

    return p1
.end method

.method private getPixelY(F)F
    .locals 1

    .line 821
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    div-float/2addr p1, p0

    return p1
.end method

.method private getPrimaryDpadDirection(FF)I
    .locals 1

    .line 809
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p0, p0, v0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    cmpl-float p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    cmpl-float p0, p2, v0

    if-lez p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    :goto_1
    return p0
.end method

.method private getScaledValue(FF)F
    .locals 0

    mul-float/2addr p1, p2

    return p1
.end method

.method private getTrackerForDevice(Landroid/view/InputDevice;)Lcom/google/android/pano/util/TouchNavMotionTracker;
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mTouchParams:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/util/TouchNavMotionTracker;

    if-nez v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    .line 870
    invoke-static {p1, v0}, Lcom/google/android/pano/util/TouchNavMotionTracker;->buildTrackerForDevice(Landroid/view/InputDevice;F)Lcom/google/android/pano/util/TouchNavMotionTracker;

    move-result-object v0

    .line 871
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mTouchParams:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private setPhysicalSizeInternal(FF)V
    .locals 1

    .line 767
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalWidth:F

    .line 768
    iput p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    .line 769
    iget-object p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 770
    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 772
    :cond_0
    iget-object p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalHeight:F

    cmpl-float p2, p2, p0

    if-lez p2, :cond_1

    .line 773
    iput p0, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    return-void
.end method

.method private updatePhysicalSize()V
    .locals 4

    .line 778
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    iget v3, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    div-float/2addr v0, v3

    div-float/2addr v2, v3

    .line 779
    invoke-direct {p0, v0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSizeInternal(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPixelPosition()Landroid/graphics/PointF;
    .locals 3

    .line 763
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    goto/16 :goto_6

    .line 571
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 575
    :cond_1
    invoke-direct {v0, v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getTrackerForDevice(Landroid/view/InputDevice;)Lcom/google/android/pano/util/TouchNavMotionTracker;

    move-result-object v3

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 577
    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    if-eqz v5, :cond_3

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    .line 585
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x0

    move v10, v2

    move v11, v9

    move v12, v11

    :goto_2
    if-ge v10, v8, :cond_5

    if-ne v7, v10, :cond_4

    goto :goto_3

    .line 588
    :cond_4
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v11, v13

    .line 589
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    int-to-float v5, v8

    div-float/2addr v11, v5

    div-float/2addr v12, v5

    .line 594
    new-instance v5, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    .line 595
    invoke-virtual {v3, v11}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v15

    invoke-virtual {v3, v12}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;-><init>(IFFJ)V

    if-eqz v4, :cond_11

    if-eq v4, v6, :cond_e

    const/4 v7, 0x2

    if-eq v4, v7, :cond_8

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    goto/16 :goto_6

    .line 706
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->clear()V

    goto/16 :goto_6

    .line 615
    :cond_8
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v4

    if-nez v4, :cond_9

    .line 616
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setDownEvent(Landroid/view/MotionEvent;)V

    .line 617
    iget-boolean v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    if-eqz v4, :cond_9

    .line 619
    iput v11, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 620
    iput v12, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 623
    :cond_9
    iget-boolean v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    if-eqz v4, :cond_a

    .line 624
    iget v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v4, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v11, v8

    add-float/2addr v11, v4

    iput v11, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 625
    iget v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    mul-float/2addr v4, v7

    mul-float/2addr v12, v8

    add-float/2addr v12, v4

    iput v12, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 629
    :cond_a
    invoke-virtual {v3, v11, v12}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setNewValues(FF)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 630
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getScrollX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v4

    .line 631
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getScrollY()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v7

    .line 632
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->calculateSensitivity(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v8

    .line 634
    iget-object v10, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, v4, v8}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getScaledValue(FF)F

    move-result v4

    add-float/2addr v11, v4

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 635
    iget-object v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v7, v8}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getScaledValue(FF)F

    move-result v7

    add-float/2addr v10, v7

    iput v10, v4, Landroid/graphics/PointF;->y:F

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->clampPosition()V

    .line 639
    iget-object v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget-object v7, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    invoke-virtual {v4, v7}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 640
    iget-object v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_b

    iget v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_b

    .line 641
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v4

    .line 642
    new-instance v12, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    .line 644
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v8

    .line 645
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v9

    .line 646
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;-><init>(IFFJ)V

    .line 647
    iget-object v1, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v1

    .line 648
    iget-object v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v4

    .line 649
    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    invoke-interface {v6, v12, v5, v1, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onMove(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v1

    or-int/2addr v2, v1

    .line 651
    :cond_b
    iget-object v1, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_4

    :cond_c
    move v2, v6

    .line 656
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->updatePrevValues()V

    goto/16 :goto_6

    :cond_d
    move v2, v6

    goto/16 :goto_6

    .line 664
    :cond_e
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v1, "TouchNavSpaceTracker"

    const-string v3, "Up event without down event"

    .line 666
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    iget-object v3, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, v3}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v3

    iget-object v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 668
    invoke-direct {v0, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v0

    .line 667
    invoke-interface {v1, v5, v3, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v0

    :goto_5
    or-int/2addr v2, v0

    goto/16 :goto_6

    .line 671
    :cond_f
    new-instance v12, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    .line 672
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v8

    .line 673
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v9

    .line 674
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;-><init>(IFFJ)V

    .line 676
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->computeVelocity()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    if-eqz v1, :cond_10

    .line 678
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getXVel()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalX(F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v1

    .line 679
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getYVel()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/pano/util/TouchNavMotionTracker;->getPhysicalY(F)F

    move-result v4

    invoke-direct {v0, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v4

    .line 680
    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    invoke-interface {v6, v12, v5, v1, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onFling(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v1

    or-int/2addr v2, v1

    .line 681
    invoke-virtual {v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v6

    invoke-virtual {v12}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 683
    iget-wide v8, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxDuration:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_10

    .line 685
    invoke-virtual {v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getX()F

    move-result v1

    invoke-virtual {v12}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    .line 686
    invoke-virtual {v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getY()F

    move-result v4

    invoke-virtual {v12}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getY()F

    move-result v6

    sub-float/2addr v4, v6

    mul-float v6, v1, v1

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    .line 688
    iget v7, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMinSquared:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_10

    iget v7, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mFlickMaxSquared:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_10

    .line 689
    iget-object v6, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    invoke-direct {v0, v1, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getDpadDirection(FF)I

    move-result v7

    .line 690
    invoke-direct {v0, v1, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPrimaryDpadDirection(FF)I

    move-result v1

    .line 689
    invoke-interface {v6, v12, v5, v7, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onFlick(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;II)Z

    .line 699
    :cond_10
    iget-object v1, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelX(F)F

    move-result v1

    .line 700
    iget-object v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPixelY(F)F

    move-result v4

    .line 701
    iget-object v0, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    invoke-interface {v0, v5, v1, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z

    move-result v0

    or-int/2addr v2, v0

    .line 702
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->clear()V

    goto :goto_6

    .line 601
    :cond_11
    iget-boolean v4, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFEnabled:Z

    if-eqz v4, :cond_12

    .line 603
    iput v11, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrX:F

    .line 604
    iput v12, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mLPFCurrY:F

    .line 606
    :cond_12
    invoke-virtual {v3, v11, v12}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setNewValues(FF)Z

    .line 607
    invoke-virtual {v3}, Lcom/google/android/pano/util/TouchNavMotionTracker;->updatePrevValues()V

    .line 608
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/pano/util/TouchNavMotionTracker;->setDownEvent(Landroid/view/MotionEvent;)V

    .line 609
    iget-object v0, v0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;

    if-eqz v0, :cond_13

    .line 610
    invoke-interface {v0, v5}, Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;->onDown(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;)Z

    move-result v0

    goto/16 :goto_5

    :cond_13
    :goto_6
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 717
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 718
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 723
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->checkForLongClick(ILandroid/view/KeyEvent;)V

    .line 725
    :cond_1
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    if-eqz p0, :cond_2

    .line 726
    invoke-interface {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 744
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 745
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    :cond_1
    iget-object p0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mKeyEventListener:Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;

    if-eqz p0, :cond_2

    .line 753
    invoke-interface {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public setPhysicalDensity(F)V
    .locals 1

    .line 467
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->updatePhysicalSize()V

    :cond_0
    return-void
.end method

.method public setPhysicalPosition(FF)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPhysicalPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 423
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 424
    iget-object v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPrevPhysPosition:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 425
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 427
    invoke-direct {p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->clampPosition()V

    return-void
.end method

.method public setPhysicalSize(FF)V
    .locals 2

    .line 452
    iget v0, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelsPerMm:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSizeInternal(FF)V

    return-void
.end method

.method public setPixelPosition(FF)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPhysicalX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getPhysicalY(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalPosition(FF)V

    return-void
.end method

.method public setPixelSize(FF)V
    .locals 0

    .line 482
    iput p2, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelHeight:F

    .line 483
    iput p1, p0, Lcom/google/android/pano/util/TouchNavSpaceTracker;->mPixelWidth:F

    .line 484
    invoke-direct {p0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->updatePhysicalSize()V

    return-void
.end method
