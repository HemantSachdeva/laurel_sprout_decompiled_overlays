.class public final Lcom/google/android/pano/widget/TrackpadNavigation;
.super Ljava/lang/Object;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;,
        Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;,
        Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;,
        Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;,
        Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
    }
.end annotation


# static fields
.field private static sGradientSensitivityEnabled:Z

.field private static final sKeyRepeatDelay:[J

.field private static sTempRect:Landroid/graphics/Rect;

.field private static sVisualIndicator:Z


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mAlwaysInTapRegionWithoutOverShoot:Z

.field private mBlockMovementKeyUpTime:J

.field private mBlockMovementOnKeyDown:Z

.field private mBoxCenterX:F

.field private mBoxCenterXWithoutOvershoot:F

.field private mBoxCenterY:F

.field private mBoxCenterYWithoutOvershoot:F

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDisableDpadNavigate:Z

.field private mDynamicSensitivityX:F

.field private mDynamicSensitivityY:F

.field private mFirstTrackingTs:J

.field private mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

.field private mFlingMinimalDistance:F

.field private mFlingSensitivity:F

.field private mGenerateFling:Z

.field private mInBlockMovementOnKeyDown:Z

.field private mInitialBoxCenterX:F

.field private mInitialBoxCenterY:F

.field private mInverseX:Z

.field private mInverseY:Z

.field private mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

.field private mLastDeviceId:I

.field private mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

.field private mLockAxis:Z

.field private mLockAxisBias:F

.field private mLockedAxis:I

.field private mLockedAxisTime:J

.field private mMotionRangeY:F

.field private mOvershootProtection:F

.field private mRepeatKeyEnabled:Z

.field private mSensitivityX:F

.field private mSensitivityY:F

.field private mThreshold:F

.field private mThresholdSquared:F

.field private mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTotalSwipes:I

.field private mTouchSlop:F

.field private mTouchSlopSquared:F

.field private mTracking:Z

.field private mTrackingPointerId:I

.field private mTranslateDpadCenter:Z

.field private mView:Landroid/view/View;

.field private mVisualFlingDirection:I

.field private mVisualFlingType:I

.field private mVisualPaint:Landroid/graphics/Paint;

.field private mVisualScale:F

.field private mXSwipes:I

.field private mXSwipesLastDirection:I

.field private mYSwipes:I

.field private mYSwipesLastDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 157
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sKeyRepeatDelay:[J

    const/4 v0, 0x0

    .line 258
    sput-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sGradientSensitivityEnabled:Z

    .line 310
    sput-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    return-void

    nop

    :array_0
    .array-data 8
        0x190
        0xc8
        0x64
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    .line 279
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    const/high16 v1, 0x3e000000    # 0.125f

    .line 312
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    .line 314
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    .line 316
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 336
    new-instance v1, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    .line 337
    new-instance v1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    invoke-direct {v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    const/4 v1, 0x1

    .line 341
    iput-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 344
    iput-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 352
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mRepeatKeyEnabled:Z

    .line 354
    new-instance v1, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    invoke-direct {v1, p0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;-><init>(Lcom/google/android/pano/widget/TrackpadNavigation;Lcom/google/android/pano/widget/TrackpadNavigation$1;)V

    iput-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    .line 357
    iput-object p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 359
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 361
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    .line 362
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    .line 363
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingSensitivity:F

    .line 364
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetBiasValues()V

    .line 365
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 368
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    .line 369
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    .line 52
    sget-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sKeyRepeatDelay:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/TrackpadNavigation;JIIII)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    return-void
.end method

.method private calculateDynamicSensitivityValues()V
    .locals 4

    .line 780
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    :goto_0
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    .line 782
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    mul-float/2addr v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    :goto_1
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    .line 783
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sGradientSensitivityEnabled:Z

    if-eqz v0, :cond_2

    .line 784
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f2aaaaa

    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    mul-float/2addr v3, v2

    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMotionRangeY:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    :cond_2
    return-void
.end method

.method private configureDeviceMetrics(Landroid/view/InputDevice;)V
    .locals 2

    .line 489
    invoke-static {p1}, Lcom/google/android/pano/widget/InputDeviceProfile;->getProfile(Landroid/view/InputDevice;)Lcom/google/android/pano/widget/InputDeviceProfile;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getGenerateDpadCenter()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTranslateDpadCenter:Z

    .line 494
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getThreshold()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setThreshold(F)V

    .line 495
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getOvershootProtection()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    .line 496
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getGenerateFling()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mGenerateFling:Z

    .line 497
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InputDeviceProfile;->getBlockMovementOnKeyDown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementOnKeyDown:Z

    .line 498
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 500
    iget-object v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/high16 v1, 0x3e000000    # 0.125f

    .line 501
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    .line 502
    invoke-virtual {p1, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    :cond_0
    const/4 v0, 0x1

    .line 504
    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result p1

    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mMotionRangeY:F

    return-void
.end method

.method private static dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 546
    instance-of v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;

    if-eqz v0, :cond_0

    .line 547
    move-object v0, p0

    check-cast v0, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;

    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation$OnNavigationEventHandler;->onNavigationEvent(Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 551
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 552
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private dispatchKeyEvent(JIIII)V
    .locals 15

    move-object v0, p0

    .line 804
    iget-boolean v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDisableDpadNavigate:Z

    if-eqz v1, :cond_0

    return-void

    .line 808
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-object v2, v1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 811
    iget-object v0, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 814
    invoke-static/range {p3 .. p3}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirection(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->requestAutoFocus(Landroid/view/View;I)V

    .line 816
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-object v2, v1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v14, p5

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 819
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private finish()V
    .locals 1

    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    .line 515
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    .line 516
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    .line 517
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 518
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 519
    iget-object p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->stopSendingRepeatKeys()V

    return-void
.end method

.method private static getAxis(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDirection(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x42

    return p0

    :pswitch_1
    const/16 p0, 0x11

    return p0

    :pswitch_2
    const/16 p0, 0x82

    return p0

    :pswitch_3
    const/16 p0, 0x21

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

.method private static getDirectionText(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "down"

    goto :goto_0

    :cond_1
    const-string p0, "right"

    goto :goto_0

    :cond_2
    const-string p0, "up"

    goto :goto_0

    :cond_3
    const-string p0, "left"

    :goto_0
    return-object p0
.end method

.method private getFlingDirection(FF)I
    .locals 3

    .line 824
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float/2addr v0, v1

    .line 825
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 826
    iget p2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    const/16 v0, 0x11

    const/16 v2, 0x42

    if-lez p2, :cond_1

    .line 827
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_3

    .line 829
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    cmpl-float p1, p1, v1

    if-ltz p1, :cond_5

    .line 832
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    .line 834
    :cond_5
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz p0, :cond_6

    move v0, v2

    :cond_6
    return v0

    .line 837
    :cond_7
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    const/16 v0, 0x21

    const/16 v2, 0x82

    if-lez p1, :cond_9

    .line 838
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    return v0

    :cond_9
    if-gez p1, :cond_b

    .line 840
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz p0, :cond_a

    move v0, v2

    :cond_a
    return v0

    :cond_b
    cmpl-float p1, p2, v1

    if-ltz p1, :cond_d

    .line 843
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz p0, :cond_c

    goto :goto_3

    :cond_c
    move v0, v2

    :goto_3
    return v0

    .line 845
    :cond_d
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz p0, :cond_e

    move v0, v2

    :cond_e
    return v0
.end method

.method private getKey(FF)I
    .locals 2

    .line 942
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_2

    cmpl-float p1, p1, v1

    const/16 p2, 0x16

    const/16 v0, 0x15

    if-lez p1, :cond_1

    .line 944
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz p0, :cond_4

    :cond_0
    :goto_0
    move p2, v0

    goto :goto_1

    .line 946
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseX:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    cmpl-float p1, p2, v1

    const/16 p2, 0x14

    const/16 v0, 0x13

    if-lez p1, :cond_3

    .line 950
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz p0, :cond_4

    goto :goto_0

    .line 952
    :cond_3
    iget-boolean p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInverseY:Z

    if-eqz p0, :cond_0

    :cond_4
    :goto_1
    return p2
.end method

.method public static getVisualIndicator()Z
    .locals 1

    .line 1170
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    return v0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    .line 524
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 525
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 528
    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 529
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    const/4 v1, 0x0

    .line 530
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 531
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 532
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 533
    sget-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 539
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    .line 541
    iget-object p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    new-instance p1, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(IJ)V

    invoke-static {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 8

    .line 631
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 638
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    move-object v2, p0

    move-object v7, p1

    .line 639
    invoke-direct/range {v2 .. v7}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    return-void
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 9

    .line 561
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 565
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 567
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 570
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 573
    iget v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iput v3, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 574
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    .line 575
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 576
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 577
    iput v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 578
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    return-void

    .line 587
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleSingleMove(JFFLandroid/view/MotionEvent;)V

    return-void
.end method

.method private handleSingleMove(JFFLandroid/view/MotionEvent;)V
    .locals 15

    move-object v7, p0

    move-wide/from16 v8, p1

    move/from16 v0, p3

    .line 646
    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    move/from16 v0, p4

    .line 647
    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    .line 648
    iget-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 649
    iget-wide v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sub-long v2, v8, v2

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 651
    iput-boolean v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    .line 653
    :cond_0
    iget-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-eqz v0, :cond_1

    .line 654
    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    .line 655
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    .line 656
    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 657
    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    return-void

    .line 661
    :cond_1
    iget-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    const/4 v10, -0x1

    if-eqz v0, :cond_2

    .line 662
    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    if-eq v0, v10, :cond_2

    .line 663
    iget-wide v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxisTime:J

    sub-long v2, v8, v2

    const-wide/16 v4, 0x320

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->resetBiasValues()V

    .line 665
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 669
    :cond_2
    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    sub-float v2, v0, v2

    iget v3, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    mul-float v11, v2, v3

    .line 670
    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    iget v4, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    sub-float v4, v2, v4

    iget v5, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    mul-float v12, v4, v5

    mul-float v4, v11, v11

    mul-float v6, v12, v12

    add-float v13, v4, v6

    .line 673
    iget v4, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, v3

    .line 674
    iget v3, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    mul-float v3, v0, v0

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 678
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    .line 680
    iget-boolean v4, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    if-eqz v4, :cond_3

    iget v4, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 681
    iput-boolean v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 683
    :cond_3
    iget-boolean v3, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    if-nez v3, :cond_4

    .line 684
    iget-object v3, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    iget v4, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    div-float/2addr v0, v4

    div-float/2addr v2, v4

    invoke-virtual {v3, v8, v9, v0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->set(JFF)V

    .line 686
    iget-object v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    iget-object v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mTiltEvent:Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;

    invoke-static {v0, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 689
    :cond_4
    iget-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-eqz v0, :cond_5

    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    cmpl-float v0, v13, v0

    if-lez v0, :cond_5

    .line 690
    iput-boolean v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 692
    :cond_5
    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mThresholdSquared:F

    cmpl-float v0, v13, v0

    if-lez v0, :cond_f

    .line 694
    invoke-direct {p0, v11, v12}, Lcom/google/android/pano/widget/TrackpadNavigation;->getKey(FF)I

    move-result v14

    .line 695
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v0, :cond_6

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrackpadNavigation"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x1

    packed-switch v14, :pswitch_data_0

    goto :goto_4

    .line 700
    :pswitch_0
    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-ltz v2, :cond_7

    add-int/2addr v2, v0

    .line 701
    iput v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    goto :goto_0

    .line 703
    :cond_7
    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 705
    :goto_0
    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 706
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    goto :goto_4

    .line 709
    :pswitch_1
    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-gtz v2, :cond_8

    sub-int/2addr v2, v0

    .line 710
    iput v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    goto :goto_1

    .line 712
    :cond_8
    iput v10, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 714
    :goto_1
    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 715
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    sub-int/2addr v1, v0

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    goto :goto_4

    .line 718
    :pswitch_2
    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-ltz v2, :cond_9

    add-int/2addr v2, v0

    .line 719
    iput v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    goto :goto_2

    .line 721
    :cond_9
    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 723
    :goto_2
    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 724
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    goto :goto_4

    .line 727
    :pswitch_3
    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-gtz v2, :cond_a

    sub-int/2addr v2, v0

    .line 728
    iput v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    goto :goto_3

    .line 730
    :cond_a
    iput v10, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    .line 732
    :goto_3
    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    .line 733
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    sub-int/2addr v1, v0

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    .line 736
    :goto_4
    iput-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    .line 737
    iput-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegionWithoutOverShoot:Z

    .line 738
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    add-int/2addr v1, v0

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    .line 739
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 740
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    move-object v0, p0

    move-wide/from16 v1, p1

    move v3, v14

    .line 739
    invoke-direct/range {v0 .. v6}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchKeyEvent(JIIII)V

    .line 741
    iget-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mRepeatKeyEnabled:Z

    if-eqz v0, :cond_b

    .line 742
    iget-object v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mKeyRepeatHandler:Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    .line 743
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    .line 742
    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/google/android/pano/widget/TrackpadNavigation$KeyRepeatHandler;->startSendingRepeatKeys(IIII)V

    :cond_b
    float-to-double v0, v13

    .line 746
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 747
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterXWithoutOvershoot:F

    .line 748
    iget v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    iput v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterYWithoutOvershoot:F

    .line 749
    iget v3, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float/2addr v11, v3

    div-float/2addr v11, v0

    iget v4, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    mul-float/2addr v11, v4

    iget v5, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float/2addr v11, v5

    add-float/2addr v1, v11

    iput v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    mul-float/2addr v3, v12

    div-float/2addr v3, v0

    mul-float/2addr v3, v4

    .line 751
    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    .line 753
    iget-boolean v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    if-eqz v0, :cond_f

    .line 754
    invoke-static {v14}, Lcom/google/android/pano/widget/TrackpadNavigation;->getAxis(I)I

    move-result v0

    .line 755
    iget v1, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    if-eq v1, v10, :cond_d

    if-eq v1, v0, :cond_c

    goto :goto_5

    .line 759
    :cond_c
    iget v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    const v1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_e

    .line 761
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 762
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->calculateDynamicSensitivityValues()V

    goto :goto_6

    .line 756
    :cond_d
    :goto_5
    iput v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 757
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    .line 765
    :cond_e
    :goto_6
    iput-wide v8, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxisTime:J

    .line 768
    :cond_f
    sget-boolean v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v0, :cond_10

    .line 769
    iget-object v0, v7, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 21

    move-object/from16 v0, p0

    .line 851
    iget-boolean v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-nez v1, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 855
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    const/4 v2, 0x0

    .line 856
    iput-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    .line 857
    iget-boolean v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTotalSwipes:I

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTranslateDpadCenter:Z

    if-eqz v2, :cond_1

    .line 859
    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    const/4 v7, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x0

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    move-object v2, v1

    move-wide v5, v14

    move-wide/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 862
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 863
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    move-object v2, v1

    move-wide/from16 v3, v17

    move-wide/from16 v5, v17

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 866
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1

    :cond_1
    move-wide/from16 v17, v14

    .line 867
    iget-boolean v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mGenerateFling:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    if-nez v2, :cond_7

    .line 868
    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTrackingPointerId:I

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_2

    return-void

    .line 875
    :cond_2
    iget-wide v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFirstTrackingTs:J

    move-wide/from16 v14, v17

    sub-long v4, v14, v4

    .line 876
    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    .line 877
    iget v6, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v7, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v3, v7

    mul-float/2addr v6, v3

    long-to-float v3, v4

    div-float v7, v6, v3

    div-float v8, v2, v3

    .line 884
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 885
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    :cond_3
    const-wide/16 v2, 0x190

    cmp-long v2, v4, v2

    if-gez v2, :cond_6

    .line 887
    invoke-direct {v0, v8, v7}, Lcom/google/android/pano/widget/TrackpadNavigation;->getFlingDirection(FF)I

    move-result v13

    .line 888
    sget-boolean v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v2, :cond_4

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long swipe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirectionText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrackpadNavigation"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v12, 0x1

    if-eqz v1, :cond_5

    .line 891
    iget v2, v1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    if-ne v13, v2, :cond_5

    .line 892
    iget v1, v1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    add-int/2addr v1, v12

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 893
    :goto_0
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    iget v9, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipes:I

    iget v10, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipes:I

    iget v11, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    iget v6, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    move/from16 v16, v3

    move-wide v3, v14

    move/from16 v17, v5

    move v5, v8

    move/from16 v18, v6

    move v6, v7

    move v7, v9

    move v8, v10

    move v9, v11

    move/from16 v10, v18

    move/from16 v11, v17

    move-wide/from16 v17, v14

    move v15, v12

    move/from16 v12, v16

    move-wide/from16 v19, v17

    move v14, v1

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->set(JFFIIFFIIII)V

    .line 896
    iput v15, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    .line 897
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    iget v2, v1, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    iput v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    .line 898
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 899
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingEvent:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    iput-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    goto :goto_2

    :cond_6
    move-wide/from16 v19, v14

    goto :goto_2

    :cond_7
    :goto_1
    move-wide/from16 v19, v17

    .line 912
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 913
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    new-instance v2, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;

    const/16 v3, 0xa

    move-wide/from16 v4, v19

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(IJ)V

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->dispatchEvent(Landroid/view/View;Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;)Z

    .line 914
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-eqz v1, :cond_8

    .line 915
    iget-object v0, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void
.end method

.method public static requestAutoFocus(Landroid/view/View;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 994
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 996
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1001
    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1002
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1003
    check-cast p0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1005
    sget-object v0, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1008
    :cond_1
    sget-object p0, Lcom/google/android/pano/widget/TrackpadNavigation;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    return-void

    .line 1012
    :cond_2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    :cond_3
    return-void
.end method

.method private resetBiasValues()V
    .locals 1

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    const/4 v0, -0x1

    .line 509
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockedAxis:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 510
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    return-void
.end method

.method private setBiasedValue(F)V
    .locals 0

    .line 774
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    return-void
.end method

.method private setupFlingLimit()V
    .locals 2

    .line 400
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingSensitivity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mFlingMinimalDistance:F

    return-void
.end method


# virtual methods
.method public deliverGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    return-void

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "TrackpadNavigation"

    const-string p1, "cannot handle event without device"

    .line 460
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 464
    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    if-eq v0, v1, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->finish()V

    .line 466
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation;->configureDeviceMetrics(Landroid/view/InputDevice;)V

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 480
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 477
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 483
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 474
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->handleDown(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5

    .line 920
    iget-boolean v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementOnKeyDown:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastDeviceId:I

    if-ne v0, v1, :cond_4

    .line 921
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 922
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x42

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_4

    .line 933
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 926
    :cond_3
    iput-boolean v4, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInBlockMovementOnKeyDown:Z

    const-wide/16 v0, 0x0

    .line 927
    iput-wide v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBlockMovementKeyUpTime:J

    :cond_4
    :goto_0
    return-void
.end method

.method public drawVisualIndicator(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1017
    sget-boolean v1, Lcom/google/android/pano/widget/TrackpadNavigation;->sVisualIndicator:Z

    if-nez v1, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1021
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 1022
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b00000    # 88.0f

    .line 1023
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1025
    :cond_1
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int v8, v1, v2

    .line 1026
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v9, v1, v2

    .line 1027
    iget-boolean v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTracking:Z

    if-eqz v1, :cond_2

    .line 1028
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1029
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getThreshold()F

    move-result v1

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v1, v2

    int-to-float v10, v8

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getBoxMovedX()F

    move-result v2

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float v11, v10, v2

    int-to-float v12, v9

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getBoxMovedY()F

    move-result v2

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v2, v3

    add-float v13, v12, v2

    .line 1033
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v4, v1, v3

    sub-float v4, v11, v4

    iget v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v6, v1, v5

    sub-float v6, v13, v6

    div-float v3, v1, v3

    add-float/2addr v3, v11

    div-float v5, v1, v5

    add-float/2addr v5, v13

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1037
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1038
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1039
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1040
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v5, v1, v4

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    sub-float v5, v11, v5

    iget v14, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v15, v1, v14

    mul-float/2addr v15, v6

    sub-float v15, v13, v15

    div-float v4, v1, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v11

    div-float v14, v1, v14

    mul-float/2addr v14, v6

    add-float/2addr v14, v13

    invoke-virtual {v2, v5, v15, v4, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1044
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1045
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 1047
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v14, v1

    .line 1048
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v2, v14, v1

    sub-float v2, v11, v2

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v4, v14, v3

    sub-float v4, v13, v4

    div-float v1, v14, v1

    add-float v5, v11, v1

    div-float v1, v14, v3

    add-float v6, v13, v1

    iget-object v15, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1052
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityX:F

    div-float v2, v14, v1

    add-float/2addr v2, v11

    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mDynamicSensitivityY:F

    div-float v4, v14, v3

    sub-float v4, v13, v4

    div-float v1, v14, v1

    sub-float v5, v11, v1

    div-float/2addr v14, v3

    add-float v6, v13, v14

    iget-object v11, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getPositionMovedX()F

    move-result v1

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v1, v2

    add-float/2addr v10, v1

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->getPositionMovedY()F

    move-result v1

    iget v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualScale:F

    mul-float/2addr v1, v2

    add-float/2addr v12, v1

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    .line 1056
    invoke-virtual {v7, v10, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1059
    :cond_2
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    const v2, -0x333334

    if-nez v1, :cond_3

    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-eqz v1, :cond_7

    .line 1060
    :cond_3
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1061
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1062
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-eqz v1, :cond_5

    .line 1063
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x8

    .line 1064
    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    if-lez v3, :cond_4

    add-int/2addr v1, v8

    goto :goto_0

    :cond_4
    sub-int v1, v8, v1

    :goto_0
    int-to-float v1, v1

    int-to-float v3, v9

    .line 1066
    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mXSwipesLastDirection:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1069
    :cond_5
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-eqz v1, :cond_7

    .line 1070
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x8

    int-to-float v3, v8

    .line 1072
    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    if-lez v4, :cond_6

    add-int/2addr v1, v9

    goto :goto_1

    :cond_6
    sub-int v1, v9, v1

    :goto_1
    int-to-float v1, v1

    .line 1073
    iget v4, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mYSwipesLastDirection:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1077
    :cond_7
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    if-eqz v1, :cond_a

    .line 1078
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1079
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1080
    iget v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingDirection:I

    invoke-static {v1}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirectionText(I)Ljava/lang/String;

    move-result-object v1

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    iget v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualFlingType:I

    if-nez v3, :cond_8

    const-string v3, "short swipe "

    goto :goto_2

    :cond_8
    const-string v3, "long swipe "

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    iget-object v1, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLastFlingEvt:Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;

    iget v3, v3, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit16 v8, v8, -0xc8

    int-to-float v2, v8

    iget-object v3, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mView:Landroid/view/View;

    .line 1084
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v9, v3

    int-to-float v3, v9

    iget-object v0, v0, Lcom/google/android/pano/widget/TrackpadNavigation;->mVisualPaint:Landroid/graphics/Paint;

    .line 1081
    invoke-virtual {v7, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1086
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBoxMovedX()F
    .locals 1

    .line 599
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterX:F

    iget p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getBoxMovedY()F
    .locals 1

    .line 603
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mBoxCenterY:F

    iget p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getPositionMovedX()F
    .locals 1

    .line 615
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentX:F

    iget p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterX:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getPositionMovedY()F
    .locals 1

    .line 619
    iget v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mCurrentY:F

    iget p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mInitialBoxCenterY:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getThreshold()F
    .locals 0

    .line 423
    iget p0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    return p0
.end method

.method public setLockAxis(Z)V
    .locals 0

    .line 430
    iput-boolean p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxis:Z

    return-void
.end method

.method public setOvershootProtection(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 411
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mOvershootProtection:F

    return-void

    .line 409
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setSensitivityX(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 379
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityX:F

    .line 380
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    return-void

    .line 377
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setSensitivityY(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 390
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mSensitivityY:F

    .line 391
    iget p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mLockAxisBias:F

    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->setBiasedValue(F)V

    return-void

    .line 388
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setThreshold(F)V
    .locals 1

    .line 415
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThreshold:F

    mul-float v0, p1, p1

    .line 416
    iput v0, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mThresholdSquared:F

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    .line 417
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlop:F

    mul-float/2addr p1, p1

    .line 418
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation;->mTouchSlopSquared:F

    .line 419
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation;->setupFlingLimit()V

    return-void
.end method
