.class public abstract Lcom/android/systemui/statusbar/phone/PanelViewController;
.super Ljava/lang/Object;
.source "PanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;,
        Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;,
        Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field protected mDownTime:J

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field protected mExpansionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/PanelExpansionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFixedDuration:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field protected mLaunchingNotification:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field private mPerf:Landroid/util/BoostFramework;

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected final mResources:Landroid/content/res/Resources;

.field private mSlopMultiplier:F

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field protected final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field private mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field protected mTouchSlopExceededBeforeDown:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenThresholdReached:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrateOnOpening:Z

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mView:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    .line 87
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 111
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 149
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 802
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1030
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setOnTouchListener(Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;)V

    .line 237
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setOnConfigurationChangedListener(Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 240
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 241
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 243
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const p1, 0x3f19999a    # 0.6f

    .line 244
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 245
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 246
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 248
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const/high16 p4, 0x3f000000    # 0.5f

    .line 249
    invoke-virtual {p8, p4}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 250
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 251
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 253
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 254
    invoke-virtual {p8, p4}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 255
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 256
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setX2(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const p1, 0x3f570a3d    # 0.84f

    .line 257
    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setY2(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    .line 258
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 259
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 260
    new-instance p1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 261
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 262
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 263
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$bool;->config_enableNotificationShadeDrag:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNotificationsDragEnabled:Z

    .line 265
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$bool;->config_vibrateOnIconAnimation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibrateOnOpening:Z

    .line 267
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 269
    new-instance p1, Landroid/util/BoostFramework;

    invoke-direct {p1}, Landroid/util/BoostFramework;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method private abortAnimations()V
    .locals 2

    .line 882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMotionAborted:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMotionAborted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimatingOnDown:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimatingOnDown:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMinExpandHeight:F

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mMinExpandHeight:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchStartedInEmptyArea:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchStartedInEmptyArea:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mViewName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureWaitForTouchSlop:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mGestureWaitForTouchSlop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/util/BoostFramework;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIgnoreXTouchSlop:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIgnoreXTouchSlop:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekTouching:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startOpening(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    return p0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekHeight:F

    return p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getFalsingThreshold()I

    move-result p0

    return p0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpwardsWhenThresholdReached:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDirectionUpwards(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimateAfterExpanding:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNotificationsDragEnabled:Z

    return p0
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 294
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 295
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 993
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 994
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$dSx0idVyG0MoiMqYY5GMAiz4jTg;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private endClosing()V
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 8

    const/4 v0, -0x1

    .line 373
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTrackingPointer:I

    .line 374
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float v0, p3, v0

    .line 375
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 414
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 415
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 416
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-nez p1, :cond_3

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    sub-long/2addr p1, p3

    .line 418
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    const-wide/16 p1, 0x168

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getPeekHeight()F

    move-result p3

    .line 420
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->runPeekAnimation(JFZ)V

    goto/16 :goto_5

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 426
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_b

    .line 427
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onEmptySpaceClick(F)Z

    move-result p1

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    goto/16 :goto_5

    .line 377
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 379
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 380
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    float-to-double v4, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    float-to-double v6, v6

    .line 379
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 382
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 383
    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v2

    .line 386
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_2

    .line 395
    :cond_6
    invoke-virtual {p0, v0, v4, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    goto :goto_3

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    move p1, v3

    goto :goto_3

    .line 392
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    xor-int/2addr p1, v3

    .line 398
    :goto_3
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 399
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v6

    .line 398
    invoke-virtual {p4, p1, v1, v4, v6}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez p1, :cond_9

    if-eqz v5, :cond_9

    .line 402
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p4

    .line 403
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float v1, p3, v1

    div-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    div-float p4, v0, p4

    .line 404
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-int p4, p4

    .line 405
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v5, 0xba

    invoke-virtual {v4, v5, v1, p4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 406
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCK:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 408
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFalseTouch(FF)Z

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZZ)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    if-eqz p1, :cond_a

    .line 410
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelClosedOnDown:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    if-eqz v3, :cond_b

    .line 412
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    .line 431
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 432
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekTouching:Z

    return-void
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 442
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUnlockFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private isDirectionUpwards(FF)Z
    .locals 1

    .line 348
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    sub-float/2addr p1, v0

    .line 349
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    return v0

    .line 353
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isFalseTouch(FF)Z
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0

    .line 529
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchAboveFalsingThreshold:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 532
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpwardsWhenThresholdReached:Z

    if-eqz v0, :cond_3

    return v1

    .line 535
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDirectionUpwards(FF)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private synthetic lambda$createHeightAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 995
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method private synthetic lambda$setExpandedHeightInternal$0()V
    .locals 1

    .line 696
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method private synthetic lambda$startUnlockHintAnimation$1()V
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 904
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintFinished()V

    const/4 v0, 0x0

    .line 905
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    return-void
.end method

.method private synthetic lambda$startUnlockHintAnimationPhase1$2(Landroid/view/View;)V
    .locals 2

    .line 960
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 961
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private runPeekAnimation(JFZ)V
    .locals 3

    .line 183
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekHeight:F

    .line 185
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_1

    .line 189
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/4 p3, 0x1

    new-array v0, p3, [F

    const/4 v1, 0x0

    .line 191
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekHeight:F

    aput v2, v0, v1

    const-string v1, "expandedHeight"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 193
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/PanelViewController$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 213
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 967
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 968
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    :cond_0
    return-void
.end method

.method private startOpening(Landroid/view/MotionEvent;)V
    .locals 5

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOpeningHeight()F

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->runPeekAnimation(JFZ)V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeVibrateOnOpening()V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getRotation()I

    move-result v2

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float/2addr v4, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x530

    .line 329
    invoke-virtual {v3, v0, v4, p1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->writeAtFractionalPosition(IIII)V

    .line 331
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object p1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 928
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 930
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 931
    new-instance v3, Lcom/android/systemui/statusbar/phone/PanelViewController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 950
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/view/View;

    .line 952
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 953
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 954
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    :goto_0
    if-ge v4, p1, :cond_1

    .line 955
    aget-object v3, v0, v4

    if-nez v3, :cond_0

    goto :goto_1

    .line 959
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    neg-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$2WGoBUvxneCReDApmWjMb2yffws;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/View;)V

    .line 960
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 961
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3

    .line 977
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 978
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 979
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 980
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelViewController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 988
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 989
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V
    .locals 0

    .line 1013
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract canCollapsePanelOnTouch()Z
.end method

.method public canPanelBeCollapsed()Z
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    return-void
.end method

.method public cancelPeek()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 814
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method public collapse(ZF)V
    .locals 2

    .line 783
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 785
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    const/4 v0, 0x1

    .line 788
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz p1, :cond_0

    .line 790
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 791
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 793
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public collapseWithDuration(I)V
    .locals 1

    .line 1078
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1079
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    const/4 p1, -0x1

    .line 1080
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    return-void
.end method

.method public abstract createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
.end method

.method protected abstract createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
.end method

.method protected abstract createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    .line 1045
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 1046
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    const-string v0, "T"

    const-string v1, "f"

    if-eqz p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    const/4 v2, 0x3

    aput-object p3, p1, v2

    const/4 p3, 0x4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    aput-object v2, p1, p3

    const/4 p3, 0x5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mJustPeeked:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    aput-object v2, p1, p3

    const/4 p3, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, p1, p3

    const/4 p3, 0x7

    const-string v3, " (started)"

    const-string v4, ""

    if-eqz v2, :cond_3

    .line 1047
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    aput-object v2, p1, p3

    const/16 p3, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, p1, p3

    const/16 p3, 0x9

    if-eqz v2, :cond_4

    .line 1049
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    aput-object v3, p1, p3

    const/16 p3, 0xa

    .line 1050
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    aput-object v0, p1, p3

    const-string p0, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    .line 1042
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public expand(Z)V
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    .line 830
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAnimateAfterExpanding:Z

    const/4 p1, 0x0

    .line 831
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 834
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_1

    .line 835
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 837
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz p1, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    .line 844
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelViewController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 866
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected fling(FZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    return-void
.end method

.method protected fling(FZFZ)V
    .locals 7

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    if-eqz p2, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .line 553
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fling(FZZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 543
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZFZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 0

    .line 499
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p3}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    return p4

    .line 506
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    return p4
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getClearAllHeightWithPadding()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandToTopOfClearAll(F)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getClearAllHeightWithPadding()I

    move-result v3

    sub-int/2addr p3, v3

    int-to-float p3, p3

    :cond_1
    move v6, p3

    .line 566
    iget p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float p3, v6, p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result p3

    const/4 v9, 0x0

    cmpl-float p3, p3, v9

    if-lez p3, :cond_2

    if-eqz p2, :cond_2

    goto/16 :goto_4

    .line 570
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result p3

    cmpl-float p3, p3, v9

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpandedBeforeFling:Z

    .line 571
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object p3

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    if-eqz p5, :cond_4

    cmpg-float p2, p1, v9

    if-gez p2, :cond_4

    move p1, v9

    .line 576
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    move-object v4, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    cmpl-float p1, p1, v9

    if-nez p1, :cond_9

    const-wide/16 p1, 0x15e

    .line 578
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3

    .line 581
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldUseDismissingAnimation()Z

    move-result p2

    if-eqz p2, :cond_7

    cmpl-float p2, p1, v9

    if-nez p2, :cond_6

    .line 583
    sget-object p2, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 p2, 0x43480000    # 200.0f

    .line 584
    iget p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p5, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p5, v1

    add-float/2addr p5, p2

    float-to-long v3, p5

    .line 585
    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 587
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 588
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    move-object v4, p3

    move v7, p1

    .line 587
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_2

    .line 591
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 592
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    move-object v4, p3

    move v7, p1

    .line 591
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_2
    cmpl-float p1, p1, v9

    if-nez p1, :cond_8

    .line 597
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    long-to-float p1, p1

    div-float/2addr p1, p4

    float-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    :cond_8
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFixedDuration:I

    if-eq p1, v0, :cond_9

    int-to-long p1, p1

    .line 600
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 603
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    if-eqz p1, :cond_a

    .line 604
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 605
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPerf:Landroid/util/BoostFramework;

    const/16 p4, 0x1080

    const/4 p5, 0x3

    invoke-virtual {p2, p4, p1, v0, p5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 607
    :cond_a
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelViewController$3;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 633
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 634
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 567
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    return-void
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeightWithPadding()I
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 437
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public getExpandedFraction()F
    .locals 0

    .line 758
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    return p0
.end method

.method public getExpandedHeight()F
    .locals 0

    .line 754
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    return p0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOpeningHeight()F
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected getTouchSlop(Landroid/view/MotionEvent;)F
    .locals 1

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 284
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mSlopMultiplier:F

    mul-float/2addr p1, p0

    goto :goto_0

    .line 285
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    int-to-float p1, p0

    :goto_0
    return p1
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    .line 1085
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    return-object p0
.end method

.method public instantCollapse()V
    .locals 1

    .line 870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->abortAnimations()V

    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 872
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 875
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    .line 877
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    :cond_1
    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLaunchingNotification:Z

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

.method public isEnabled()Z
    .locals 0

    .line 1089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isFullyCollapsed()Z
    .locals 1

    .line 766
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyExpanded()Z
    .locals 1

    .line 762
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method public isTracking()Z
    .locals 0

    .line 774
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    return p0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method public isUnlockHintRunning()Z
    .locals 0

    .line 920
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    return p0
.end method

.method public synthetic lambda$createHeightAnimator$3$PanelViewController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$createHeightAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$setExpandedHeightInternal$0$PanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$setExpandedHeightInternal$0()V

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimation$1$PanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimation$1()V

    return-void
.end method

.method public synthetic lambda$startUnlockHintAnimationPhase1$2$PanelViewController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->lambda$startUnlockHintAnimationPhase1$2(Landroid/view/View;)V

    return-void
.end method

.method protected loadDimens()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    .line 275
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mSlopMultiplier:F

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->hint_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintDistance:F

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->unlock_falsing_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected maybeVibrateOnOpening()V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibrateOnOpening:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    :cond_0
    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 4

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1001
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInstantExpanding:Z

    if-nez v3, :cond_1

    .line 1004
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1001
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1007
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onPanelExpansionChanged(FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected final notifyExpandingFinished()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method protected notifyExpandingStarted()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpanding:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    :cond_0
    return-void
.end method

.method protected onClosingFinished()V
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 0

    .line 1024
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onMiddleClicked()Z

    move-result p0

    return p0
.end method

.method protected onExpandingFinished()V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method protected onTrackingStarted()V
    .locals 1

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->endClosing()V

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 0

    .line 912
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 0

    .line 916
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    .line 664
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 670
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    return-void

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPeekTouching:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 678
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelUpdateWhenAnimatorEnds:Z

    return-void

    .line 687
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public abstract resetViews(Z)V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 4

    .line 691
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v1, "ExpandedHeight set to NaN"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_1

    .line 695
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$3-TJ0A2OT3Q4yelawe6rfaI8nnw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$3-TJ0A2OT3Q4yelawe6rfaI8nnw;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 697
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v3

    sub-float/2addr v0, v3

    .line 700
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_3

    sub-float v1, p1, v0

    .line 701
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 703
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansion(FZ)V

    .line 705
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getOverExpansionAmount()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    goto :goto_0

    .line 707
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 708
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_4

    sub-float/2addr p1, v0

    .line 709
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansion(FZ)V

    .line 715
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v1

    if-gez v3, :cond_5

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mClosing:Z

    if-eqz p1, :cond_5

    .line 716
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 717
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    .line 718
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_5
    cmpl-float p1, v0, v2

    if-nez p1, :cond_6

    goto :goto_1

    .line 722
    :cond_6
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    div-float v2, p1, v0

    .line 721
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedFraction:F

    .line 723
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onHeightUpdated(F)V

    .line 724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method public setLaunchingNotification(Z)V
    .locals 0

    .line 1074
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLaunchingNotification:Z

    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchDisabled:Z

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 302
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_1
    return-void
.end method

.method protected shouldExpandToTopOfClearAll(F)Z
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fullyExpandedClearAllVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isClearAllVisible()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldGestureWaitForTouchSlop()Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandLatencyTracking:Z

    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 0

    .line 362
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialOffsetOnTouch:F

    .line 363
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchY:F

    .line 364
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mInitialTouchX:F

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceeded:Z

    .line 367
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeight(F)V

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    :cond_0
    return-void
.end method

.method protected startExpandingFromPeek()V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    .line 902
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$GuYBMkURoVUrgoMW3L5UanjAhbw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelViewController$GuYBMkURoVUrgoMW3L5UanjAhbw;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintStarted()V

    const/4 v0, 0x1

    .line 908
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    :cond_1
    :goto_0
    return-void
.end method
