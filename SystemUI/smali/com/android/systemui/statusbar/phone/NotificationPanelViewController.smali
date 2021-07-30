.class public Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.super Lcom/android/systemui/statusbar/phone/PanelViewController;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private final KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAffordanceHasPreview:Z

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mAffordanceLaunchListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowExpandForSmallExpansion:Z

.field private mAmbientIndicationBottomPadding:I

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextPositionUpdate:Z

.field private mAnimatingQS:Z

.field private mBarState:I

.field private mBigClockContainer:Landroid/view/ViewGroup;

.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mBlockTouches:Z

.field private mBlockingExpansionForCurrentTouch:Z

.field private mBottomAreaShadeAlpha:F

.field private final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

.field private mConflictingQsExpansionGesture:Z

.field private final mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field private mDarkIconSize:I

.field private mDelayShowingKeyguardStatusBar:Z

.field private mDisplayId:I

.field private mDownX:F

.field private mDownY:F

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field private mExpandOffset:F

.field private mExpandingFromHeadsUp:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

.field private mExpectingSynthesizedDown:Z

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFirstBypassAttempt:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingAnimationUtilsBuilder:Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHasWindowFocus:Z

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpInset:I

.field private mHeadsUpPinnedMode:Z

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private final mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

.field private mHideIconsDuringNotificationLaunch:Z

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mInterpolatedDarkAmount:F

.field private mIsExpanding:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsPanelCollapseOnQQS:Z

.field private final mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardHeadsUpShowingAmount:F

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardOccluded:Z

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

.field private mKeyguardStatusViewAnimating:Z

.field final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastEventSynthesizedDown:Z

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private mLinearDarkAmount:F

.field private mListenForHeadsUp:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavigationBarBottomHeight:I

.field private mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private final mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

.field private final mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

.field private final mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

.field private final mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

.field private mOnReinflationListener:Ljava/lang/Runnable;

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelAlpha:I

.field private final mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private final mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private mPanelExpanded:Z

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mPulsing:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mQsFullyExpanded:Z

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsNotificationTopPadding:I

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShelfHeight:I

.field private mShowEmptyShadeView:Z

.field private mShowIconsWhenExpanded:Z

.field private mShowingKeyguardHeadsUp:Z

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMinHeight:I

.field private final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

.field private mThemeResId:I

.field private mTrackingHeadsUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mZenModeControllerCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 13

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p4

    .line 513
    move-object/from16 v5, p12

    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p13

    move-object/from16 v4, p11

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p26

    move-object/from16 v9, p27

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/PanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    .line 167
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    .line 208
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$OZSOwGan-FM_WhbUvj9snkcbnX8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$OZSOwGan-FM_WhbUvj9snkcbnX8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$zLH5b8RJBtRSCf103Z1grf2LCf0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$zLH5b8RJBtRSCf103Z1grf2LCf0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    sget v5, Lcom/android/systemui/R$id;->keyguard_hun_animator_tag:I

    sget v6, Lcom/android/systemui/R$id;->keyguard_hun_animator_end_tag:I

    sget v7, Lcom/android/systemui/R$id;->keyguard_hun_animator_start_tag:I

    const-string v2, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    .line 315
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 318
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 342
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 346
    iput v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    const/4 v2, -0x1

    .line 353
    iput v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    const-string v2, "lockscreen_affordance"

    .line 359
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 363
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$rvgAK3TYgwqivfcZ2YHWM7JuvzA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$rvgAK3TYgwqivfcZ2YHWM7JuvzA;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 394
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 398
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    .line 410
    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;

    sget-object v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;

    sget v6, Lcom/android/systemui/R$id;->panel_alpha_animator_tag:I

    sget v7, Lcom/android/systemui/R$id;->panel_alpha_animator_start_tag:I

    sget v8, Lcom/android/systemui/R$id;->panel_alpha_animator_end_tag:I

    const-string v3, "panelAlpha"

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v2

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 415
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v3, 0x96

    .line 416
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 417
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 416
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 418
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v3, 0xc8

    .line 419
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$HnNg1uN3kkP2Byw0u02uaOtm-nk;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$HnNg1uN3kkP2Byw0u02uaOtm-nk;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 424
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 423
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/4 v2, 0x0

    .line 446
    iput v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 470
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 1647
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1655
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 1663
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1670
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1703
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1723
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2938
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 516
    iput-object v11, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 517
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    move-object/from16 v2, p22

    .line 518
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v2, p23

    .line 519
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v2, p24

    .line 520
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v2, p25

    .line 521
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v2, p26

    .line 522
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    move-object/from16 v2, p29

    .line 523
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    move-object/from16 v2, p31

    .line 524
    iput-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 525
    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object v0, p2

    .line 526
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    move-object/from16 v0, p7

    .line 527
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v0, p18

    .line 528
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p3

    .line 529
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v0, p19

    .line 530
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 531
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0xff

    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelAlpha(IZ)V

    move-object/from16 v0, p15

    .line 533
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v0, p20

    .line 534
    iput v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    .line 535
    iput-object v12, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v0, p14

    .line 536
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v0, p30

    .line 537
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 538
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$iN7P4plRLlpAkFmRApdB8IRWjNM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$iN7P4plRLlpAkFmRApdB8IRWjNM;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulseExpandAbortListener(Ljava/lang/Runnable;)V

    .line 543
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    iput v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    move-object/from16 v0, p6

    .line 544
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v3, p21

    .line 545
    iput-object v3, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 546
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    .line 548
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 558
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 560
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    move-object/from16 v3, p5

    .line 562
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 564
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 565
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$LinMYB2Oj2N48himJfZkXl5Ac08;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$LinMYB2Oj2N48himJfZkXl5Ac08;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 569
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xa0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 570
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p8

    .line 571
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v0, p9

    .line 572
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v0, p10

    .line 573
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v0, p28

    .line 574
    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 576
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 577
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    .line 578
    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 579
    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 583
    :cond_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onFinishInflate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->maybeAnimateBottomAreaAlpha()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    return-void
.end method

.method static synthetic access$10402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmptyDragAmount:F

    return p1
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ZenModeControllerCallback;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setIsFullWidth(Z)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;II)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startQsSizeChangeAnimation(II)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxHeadsUpTranslation()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$11502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$12002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$12102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSPulseExpansion()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusView;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$3800()Landroid/graphics/Rect;
    .locals 1

    .line 135
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initDownStates(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    return p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    return p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    return p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    return p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p0
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    return p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p0
.end method

.method static synthetic access$6402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p1
.end method

.method static synthetic access$6502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$7002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p0
.end method

.method static synthetic access$7102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p1
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p0
.end method

.method static synthetic access$7302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p0
.end method

.method static synthetic access$7502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p1
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p0
.end method

.method static synthetic access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p1
.end method

.method static synthetic access$7702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$7802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p1
.end method

.method static synthetic access$8202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method static synthetic access$8602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p0
.end method

.method static synthetic access$8902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p1
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    return p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateShowEmptyShadeView()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p0
.end method

.method static synthetic access$9402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p1
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateViews()V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZZ)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardStatusViewVisibility(IZZ)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$9802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarOut()V

    return-void
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 2

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1716
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1717
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1718
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1719
    sget-object p0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1720
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1680
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1681
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1682
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1682
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1687
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x168

    .line 1691
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1693
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1694
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1700
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateGestureExclusionRect()Landroid/graphics/Rect;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 783
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_1
    return-object p0
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 4

    .line 2201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2202
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2203
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2204
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2209
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2212
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    .line 2214
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    .line 2215
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2219
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 2220
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2223
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2222
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2225
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v0

    add-float/2addr v2, v0

    .line 2226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 2228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2229
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 2230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    float-to-int p0, v2

    return p0
.end method

.method private calculatePanelHeightShade()I
    .locals 3

    .line 2183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 2184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 2185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2187
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 2190
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 2191
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 2193
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private calculateQsTopPadding()F
    .locals 4

    .line 1867
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 1875
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    .line 1876
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 1877
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1879
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1880
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    .line 1879
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0

    .line 1881
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1883
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1884
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result p0

    .line 1882
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 1885
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 1888
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1890
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result p0

    .line 1888
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 1892
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private canPanelCollapseOnQQS(FF)Z
    .locals 3

    .line 1199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 1203
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    cmpg-float p0, p1, v2

    if-gtz p0, :cond_2

    .line 1204
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method private canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 4

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 948
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 953
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 956
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    .line 925
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 928
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 929
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 931
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private cancelQsAnimation()V
    .locals 0

    .line 1955
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 1956
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 2

    .line 1853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings_edit:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1855
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 1858
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1859
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1860
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_lock_screen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1862
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_shade:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private flingExpandsQs(F)Z
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFalseTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 1233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 2

    .line 1209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 1210
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingExpandsQs(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->logQsSwipeDown(F)V

    :cond_0
    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1214
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .line 1947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 1950
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1951
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private getFadeoutAlpha()F
    .locals 4

    .line 2250
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2253
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 2254
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2255
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1488
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 4

    .line 2313
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    goto :goto_0

    .line 2324
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    div-float/2addr v0, p0

    .line 2326
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2327
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getKeyguardHeadsUpShowingAmount()F
    .locals 0

    .line 2709
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    return p0
.end method

.method private getKeyguardNotificationStaticPadding()I
    .locals 2

    .line 1901
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1905
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    .line 1907
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    .line 1908
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1911
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1912
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1913
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result p0

    .line 1912
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxPanelHeightBypass()I
    .locals 3

    .line 2108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 2109
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 2110
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 2112
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method private getMaxPanelHeightNonBypass()I
    .locals 3

    .line 2083
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 2084
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2085
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2086
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOverExpansionAmount()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2087
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2090
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2094
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v1

    goto :goto_1

    .line 2092
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    .line 2096
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_4

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPanelHeight is 0. getOverExpansionAmount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOverExpansionAmount()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", calculatePanelHeightQsExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", calculatePanelHeightShade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStatusBarMinHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mQsMinExpansionHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NotificationPanelViewCt"

    .line 2098
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private getQsExpansionFraction()F
    .locals 3

    .line 1250
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getUnlockedStackScrollerPadding()I
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 1347
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onQsDown()V

    const/4 v0, 0x1

    .line 1350
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1352
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_0

    .line 1281
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1282
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1284
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1291
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v2, :cond_2

    .line 1292
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1293
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 1298
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    :cond_4
    if-nez v0, :cond_5

    .line 1300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_5

    .line 1301
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    .line 1303
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    .line 1305
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v0, "panel_open_qs"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1306
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1307
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1312
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    :cond_6
    return v3
.end method

.method private initBottomArea()V
    .locals 4

    .line 758
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 759
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 760
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1168
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    .line 1169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 1170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    .line 1171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    .line 1172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    .line 1173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 1174
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canPanelCollapseOnQQS(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 1175
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 1176
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 1177
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_1

    .line 1179
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1182
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1186
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    :goto_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1943
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isFalseTouch()Z
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0

    .line 1246
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    .line 2919
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 2920
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method private isInQsArea(FF)Z
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1319
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1320
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnKeyguard()Z
    .locals 1

    .line 2827
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    .line 1325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    if-ne p0, v1, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_2

    const/16 v4, 0x20

    .line 1333
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x40

    .line 1334
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v0, :cond_4

    .line 1339
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1340
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    if-nez p0, :cond_6

    if-nez v4, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_3
    return v2
.end method

.method private synthetic lambda$flingSettings$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2015
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V
    .locals 0

    .line 210
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardHeadsUpShowingAmount(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardHeadsUpShowingAmount()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpAnimatingAway(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/util/Property;)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 421
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    .line 540
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 566
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$6(I)V
    .locals 1

    .line 640
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 642
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 4

    .line 1218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 1221
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc2

    .line 1223
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1224
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 1223
    invoke-virtual {v2, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    return-void
.end method

.method private maybeAnimateBottomAreaAlpha()V
    .locals 2

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1640
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1641
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1643
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    :goto_0
    return-void
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    const/4 v0, 0x0

    .line 2439
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 2441
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishInflate()V
    .locals 4

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->loadDimens()V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 598
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->big_clock_container:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 599
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setBigClockContainer(Landroid/view/ViewGroup;)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 603
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$hB_2bxao9PtuBwZm92el8Nt3UKY;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$hB_2bxao9PtuBwZm92el8Nt3UKY;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->qs_navbar_scrim:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNavbarScrim:Landroid/view/View;

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    .line 612
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$UjVwGXo83aLB3W0dUJndREhKfQk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$UjVwGXo83aLB3W0dUJndREhKfQk;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setRtlChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 1498
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1080
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1083
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 1085
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1086
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/4 v5, 0x3

    if-eq v3, v4, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_6

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    goto/16 :goto_1

    .line 1109
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1110
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_a

    .line 1112
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    move v4, v1

    .line 1113
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1114
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1115
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    goto/16 :goto_1

    .line 1120
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v0, v3

    .line 1121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1122
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v5, :cond_4

    .line 1127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    return v4

    .line 1131
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float p1, p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz p1, :cond_a

    .line 1132
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_a

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1133
    invoke-direct {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1135
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 1138
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1139
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1140
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1141
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    return v4

    .line 1148
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1149
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v2, :cond_a

    .line 1151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    .line 1150
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingQsWithCurrentVelocity(FZ)V

    .line 1152
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    goto :goto_1

    .line 1090
    :cond_8
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1091
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1092
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 1093
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1094
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    const/4 v2, 0x0

    .line 1095
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1099
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1101
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    .line 1102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1103
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1104
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_a
    :goto_1
    return v1
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1426
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1429
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 1431
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1432
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1433
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 1435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    const/4 v0, 0x3

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    goto/16 :goto_1

    .line 1447
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1448
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_a

    .line 1450
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1451
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1452
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1453
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1454
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1455
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1456
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    goto :goto_1

    .line 1461
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    .line 1463
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 1465
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1470
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    const/4 v3, -0x1

    .line 1471
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1472
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    .line 1474
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_8

    .line 1476
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_7

    move v1, v5

    .line 1475
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingQsWithCurrentVelocity(FZ)V

    .line 1478
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_a

    .line 1479
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1480
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 1437
    :cond_9
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1438
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1439
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1441
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 1443
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private positionClockAndNotifications()V
    .locals 20

    move-object/from16 v0, p0

    .line 822
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 823
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 825
    :goto_1
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v5, v3, :cond_2

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v4

    goto/16 :goto_3

    .line 828
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    .line 829
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 830
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6, v11}, Lcom/android/keyguard/KeyguardStatusView;->getClockPreferredY(I)I

    move-result v13

    .line 831
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 833
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 834
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v6

    if-eqz v6, :cond_3

    move v15, v3

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 835
    :goto_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v6, v15}, Lcom/android/keyguard/KeyguardStatusView;->setHasVisibleNotifications(Z)V

    .line 836
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    sub-int v8, v11, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 837
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v10

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 838
    invoke-virtual {v5}, Landroid/widget/GridLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    int-to-float v12, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    sub-float/2addr v5, v12

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    int-to-float v12, v12

    div-float/2addr v12, v14

    sub-float/2addr v5, v12

    float-to-int v12, v5

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasCustomClock()Z

    move-result v14

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmptyDragAmount:F

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v19

    move/from16 v16, v5

    move/from16 v17, v2

    .line 836
    invoke-virtual/range {v6 .. v19}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIIZZFFZI)V

    .line 842
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 843
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v2, v5, v6, v7, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 845
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v6, v6

    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v2, v5, v6, v7, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateClock()V

    .line 849
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 851
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 852
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAntiBurnInOffsetX(I)V

    .line 854
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 855
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    const/4 v1, 0x0

    .line 856
    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 857
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method private reInflateViews()V
    .locals 6

    .line 717
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateShowEmptyShadeView()V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 722
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 723
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 722
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->keyguard_status_view:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v4, 0x0

    .line 723
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 725
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 730
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setBigClockContainer(Landroid/view/ViewGroup;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 735
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 736
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 737
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 736
    invoke-virtual {v2, v3}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->keyguard_bottom_area:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 737
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 739
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initFrom(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 740
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 741
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 744
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getInterpolatedDozeAmount()F

    move-result v2

    .line 743
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 750
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, v0, v4, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardStatusViewVisibility(IZZ)V

    .line 751
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    .line 752
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnReinflationListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 753
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private resetHorizontalPanelPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 2777
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 0

    .line 2746
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 2747
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    .line 2924
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 0

    .line 787
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    .line 788
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 2

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    .line 1733
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1734
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    .line 1733
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1735
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v0

    .line 1734
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1735
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1736
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1737
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 1743
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1740
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1741
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private setKeyguardHeadsUpShowingAmount(F)V
    .locals 0

    .line 2704
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 2705
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 7

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1750
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewAnimating:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 1751
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v5, v4, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1753
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewAnimating:Z

    .line 1754
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1755
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_6

    .line 1758
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1759
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p2

    .line 1758
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1760
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide p2

    .line 1759
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1760
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1762
    :cond_2
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne p3, v5, :cond_3

    if-ne p1, v4, :cond_3

    .line 1764
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1765
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewAnimating:Z

    .line 1766
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 1767
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1768
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_5

    if-eqz p2, :cond_4

    .line 1772
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewAnimating:Z

    .line 1773
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1774
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const p3, 0x3d4ccccd    # 0.05f

    mul-float/2addr p2, p3

    .line 1773
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 1774
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d

    .line 1775
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1776
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1778
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1779
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v6}, Landroid/widget/GridLayout;->setAlpha(F)V

    goto :goto_0

    .line 1782
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 1783
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v6}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1

    .line 2879
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    .line 2880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 2881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 2883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setLaunchingAffordance(Z)V

    .line 2884
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 2885
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setListening(Z)V
    .locals 1

    .line 2446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2447
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 2448
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 0

    .line 1492
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    .line 1493
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 1494
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 1

    .line 1519
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1521
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    .line 1522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    .line 1523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->setQsExpanded(Z)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setQsExpanded(Z)V

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setQSExpanded(Z)V

    .line 1531
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1532
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFpodState()V

    :cond_1
    return-void
.end method

.method private setQsExpansion(F)V
    .locals 10

    .line 1805
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1806
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    .line 1807
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v0, :cond_1

    .line 1809
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    goto :goto_1

    .line 1810
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_2

    .line 1811
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    .line 1813
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 1814
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    .line 1815
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 1817
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_4

    .line 1818
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 1819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 1821
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eqz p1, :cond_5

    .line 1823
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1826
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1827
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 1830
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 1831
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1832
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1835
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_9

    .line 1836
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    .line 1837
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 1836
    :goto_3
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onQsExpansionChanged(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 687
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 5

    .line 2046
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2047
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2050
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 2052
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 2053
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    .line 2054
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 2055
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    .line 2056
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInQsArea(FF)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 796
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 797
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 798
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 799
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 808
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1936
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateBigClockAlpha()V
    .locals 4

    .line 2378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2379
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2377
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2381
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updateClock()V
    .locals 1

    .line 963
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, p0}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2

    .line 2605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2606
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x168

    .line 2607
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    :cond_0
    return-void
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .line 2623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    return-void
.end method

.method private updateGestureExclusionRect()V
    .locals 2

    .line 771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 772
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 772
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 2278
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 2281
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    .line 2332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 2335
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v0, v2

    .line 2338
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 2339
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2341
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2342
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2344
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    .line 2345
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez p0, :cond_4

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 2344
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    return-void
.end method

.method private updateHeadsUpVisibility()V
    .locals 2

    .line 2719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setHeadsUpVisible(Z)V

    return-void
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 4

    .line 2356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2357
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2355
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2359
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    mul-float/2addr v0, v2

    .line 2360
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    .line 2361
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2364
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2366
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateKeyguardStatusBarForHeadsUp()V
    .locals 4

    .line 2689
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2690
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2691
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    if-eq v2, v0, :cond_3

    .line 2692
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    .line 2693
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2694
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2695
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2694
    invoke-static {v2, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    .line 2698
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, p0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->applyImmediately(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 2

    .line 2507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 3

    .line 2237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2238
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2241
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2242
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    mul-float/2addr v0, v1

    .line 2245
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    .line 2173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2174
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    if-eq v1, v0, :cond_2

    .line 2175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 2176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setPanelExpanded(Z)V

    .line 2177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 2178
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    :cond_2
    return-void
.end method

.method private updateQSPulseExpansion()V
    .locals 2

    .line 1928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 1929
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1930
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1931
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1929
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setShowCollapsedOnKeyguard(Z)V

    :cond_1
    return-void
.end method

.method private updateQsState()V
    .locals 4

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateEmptyShadeView()V

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNavbarScrim:Landroid/view/View;

    .line 1796
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    .line 1794
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    .line 1798
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_4

    return-void

    .line 1801
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateShowEmptyShadeView()V
    .locals 2

    .line 3133
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 3134
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->hasActiveNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3135
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->showEmptyShadeView(Z)V

    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    .line 2814
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2815
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOpeningHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2817
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2820
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_3

    .line 2821
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 2822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 3897
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 3212
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3078
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3086
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCloseQs(Z)V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1031
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    return-void

    .line 1034
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 1035
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1036
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1038
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 970
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 971
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3063
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandOffset:F

    .line 3064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0xe

    const-wide/16 v3, 0x64

    .line 3066
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result p1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3068
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    if-eq p1, v1, :cond_2

    .line 3069
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    if-nez p1, :cond_2

    .line 3071
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_2
    return-void
.end method

.method public blockExpansionForCurrentTouch()V
    .locals 1

    .line 3112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public canCameraGestureBeLaunched()Z
    .locals 3

    .line 2900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2907
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2908
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 2909
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 2910
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected canCollapsePanelOnTouch()Z
    .locals 2

    .line 2064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2065
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2066
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public cancelAnimation()V
    .locals 0

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 2835
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    return-void
.end method

.method public closeQs()V
    .locals 1

    .line 1014
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 1015
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 0

    .line 2589
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    return-void
.end method

.method public collapse(ZF)V
    .locals 2

    .line 1002
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1006
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1007
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1010
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    return-void
.end method

.method public computeMaxKeyguardNotifications(I)I
    .locals 10

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v0

    .line 874
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    .line 875
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 874
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 876
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v3

    .line 879
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    move v3, v5

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 882
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 883
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 885
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getLogoutButtonHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    move v7, v6

    .line 888
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 889
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 890
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 893
    :cond_1
    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v4, v9

    if-nez v7, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    int-to-float v9, v1

    :goto_2
    sub-float/2addr v4, v9

    .line 895
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v9, v0, v8, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v0

    sub-float/2addr v4, v0

    cmpl-float v0, v4, v5

    if-ltz v0, :cond_3

    if-ge v7, p1, :cond_3

    add-int/lit8 v7, v7, 0x1

    move-object v0, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    neg-float p1, v3

    cmpl-float p1, v4, p1

    if-lez p1, :cond_6

    add-int/2addr v6, v2

    .line 902
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v6, p1, :cond_5

    .line 903
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 904
    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_4

    return v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v7, v2

    :cond_6
    return v7
.end method

.method public createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;
    .locals 2

    .line 3237
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public bridge synthetic createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method protected createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
    .locals 2

    .line 3335
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 0

    .line 3139
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p0

    return-object p0
.end method

.method protected createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    .locals 1

    .line 3246
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-object v0
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 3036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    .line 3037
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3038
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 3117
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    gestureExclusionRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 3120
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3122
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    if-eqz p0, :cond_1

    .line 3123
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardStatusView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public expand(Z)V
    .locals 0

    .line 2453
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    const/4 p1, 0x1

    .line 2454
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .line 1042
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1043
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1049
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    :goto_0
    return-void
.end method

.method public expandWithoutQs()V
    .locals 2

    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    :goto_0
    return-void
.end method

.method public fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 3202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3203
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public fling(FZ)V
    .locals 4

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const-string v2, "open"

    goto :goto_0

    :cond_0
    const-string v2, "closed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 0

    .line 1402
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    .line 1405
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public flingSettings(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1964
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FILjava/lang/Runnable;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    move v2, v0

    goto :goto_1

    .line 1984
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 1981
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v2, v2

    .line 1990
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_2

    .line 1992
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    cmpl-float v4, p1, v0

    if-lez v4, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    cmpg-float v4, p1, v0

    if-gez v4, :cond_7

    if-eqz p2, :cond_7

    :cond_6
    move p1, v0

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 2004
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    aput v5, v4, v3

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz p4, :cond_8

    .line 2006
    sget-object p1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x170

    .line 2007
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_4

    .line 2009
    :cond_8
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    invoke-virtual {p4, v3, v4, v2, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :goto_4
    if-eqz v0, :cond_9

    const-wide/16 v4, 0x15e

    .line 2012
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2014
    :cond_9
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$PxDf76v5kbscyhBqkVxRT_vLxqI;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewController$PxDf76v5kbscyhBqkVxRT_vLxqI;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2017
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2036
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    .line 2037
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2038
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2039
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    if-nez p2, :cond_0

    .line 1074
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    .line 1075
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .line 2561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2562
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 3159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method protected getClearAllHeightWithPadding()I
    .locals 0

    .line 2572
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFooterViewHeightWithPadding()I

    move-result p0

    return p0
.end method

.method protected getHeaderTranslation()F
    .locals 4

    .line 2285
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2286
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v0

    .line 2289
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    neg-float v1, v1

    .line 2290
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2291
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 2293
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->getLeavingLockscreen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 2298
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result v0

    .line 2300
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2302
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandOffset:F

    add-float/2addr v0, p0

    .line 2304
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 3224
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method protected getMaxPanelHeight()I
    .locals 2

    .line 2075
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightBypass()I

    move-result p0

    return p0

    .line 2078
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p0

    return p0
.end method

.method public getOnHeadsUpChangedListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;
    .locals 0

    .line 3220
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    return-object p0
.end method

.method protected getOpeningHeight()F
    .locals 0

    .line 1271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .line 2261
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p0

    .line 2262
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationPanelViewCt"

    const-string v1, "OverExpansionAmount is NaN!"

    .line 2263
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method protected getOverExpansionPixels()F
    .locals 1

    .line 2271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result p0

    return p0
.end method

.method protected getPeekHeight()F
    .locals 1

    .line 2534
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2535
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 2537
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    goto :goto_0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 3155
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result p0

    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 2

    .line 2928
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLaunchingNotification:Z

    if-eqz v0, :cond_0

    .line 2929
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    return p0

    .line 2931
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2932
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2935
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 1

    .line 3178
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 3180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 3182
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 3184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 3185
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 3186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateShowEmptyShadeView()V

    return-void
.end method

.method protected isClearAllVisible()Z
    .locals 0

    .line 2567
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewContentVisible()Z

    move-result p0

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 2613
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method public isExpanding()Z
    .locals 0

    .line 2122
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method public isFullWidth()Z
    .locals 0

    .line 2808
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 1162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInSettings()Z
    .locals 0

    .line 2118
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 0

    .line 2593
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 0

    .line 2597
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public isLaunchingAffordanceWithPreview()Z
    .locals 1

    .line 2893
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHasPreview:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .line 2840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQsDetailShowing()Z
    .locals 0

    .line 2585
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method public isQsExpanded()Z
    .locals 0

    .line 2581
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 2577
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$flingSettings$7$NotificationPanelViewController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$flingSettings$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic lambda$new$1$NotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$2$NotificationPanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$2()V

    return-void
.end method

.method public synthetic lambda$new$3$NotificationPanelViewController(Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$3(Landroid/util/Property;)V

    return-void
.end method

.method public synthetic lambda$new$4$NotificationPanelViewController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$4()V

    return-void
.end method

.method public synthetic lambda$new$5$NotificationPanelViewController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$6$NotificationPanelViewController(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$onFinishInflate$6(I)V

    return-void
.end method

.method public launchCamera(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "power_double_tap"

    .line 2846
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "wiggle_gesture"

    .line 2848
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "lift_to_launch_ml"

    .line 2850
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, "lockscreen_affordance"

    .line 2854
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 2860
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 2861
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    goto :goto_1

    :cond_3
    move p1, v1

    .line 2865
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHasPreview:Z

    .line 2866
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2867
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    .line 2866
    :goto_3
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->launchAffordance(ZZ)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 653
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->loadDimens()V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    const v1, 0x3ecccccd    # 0.4f

    .line 655
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->build()Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050248

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_peek_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->header_notifications_collide_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_falsing_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_min_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 673
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 2871
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 3

    .line 3103
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardStatusViewVisibility(IZZ)V

    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .line 2740
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    .line 2741
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    const/4 v0, 0x0

    .line 2742
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 3

    .line 2404
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    .line 2405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 2406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    .line 2407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V

    const/4 v0, 0x0

    .line 2408
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 2409
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 2410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2411
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2421
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2428
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    .line 2430
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 2431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 2432
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    const/4 v1, 0x0

    .line 2433
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2434
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    const/4 v0, 0x0

    .line 2435
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 3

    .line 2386
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    .line 2387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    const/4 v0, 0x1

    .line 2388
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 2389
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    .line 2390
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 2393
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_1

    .line 2394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2398
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_2

    return-void

    .line 2399
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 4

    .line 2127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 2132
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 2135
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 2138
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-nez v0, :cond_5

    .line 2141
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 2144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_1

    .line 2149
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2150
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2151
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 2152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    sub-float/2addr v1, v0

    div-float v0, v2, v1

    .line 2158
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 2160
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 2162
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 2163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    .line 2164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 2165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    .line 2166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .line 2644
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 2659
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 2660
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :cond_1
    return v2

    .line 2646
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    if-nez v0, :cond_4

    .line 2647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2648
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    goto :goto_0

    .line 2650
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbc

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 2653
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 2654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startUnlockHintAnimation()V

    :cond_4
    :goto_0
    return v2

    .line 2667
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method protected onQsExpansionStarted(I)V
    .locals 1

    .line 1502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 1503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1506
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 1507
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1509
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    .line 1514
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 2639
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 3232
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    return-void
.end method

.method protected onTrackingStarted()V
    .locals 3

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStarted(Z)V

    .line 2478
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 2479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 2480
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 2481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 2483
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2484
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 2486
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    .line 2491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onTrackingStopped()V

    .line 2492
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2494
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2497
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    if-eqz p1, :cond_2

    .line 2498
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2500
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez p1, :cond_2

    .line 2501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    :cond_2
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    .line 2522
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintFinished()V

    .line 2523
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    .line 2528
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintStarted()V

    .line 2529
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 3151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUpdateRowStates()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1549
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHasWindowFocus:Z

    .line 1550
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "fpod"

    const-string v0, "onWindowFocusChanged updatefpodstate "

    .line 1551
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFpodState()V

    :cond_0
    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 3216
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3082
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3090
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 2

    .line 1919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateQsTopPadding()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateTopPadding(FZ)V

    .line 1920
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1922
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    :cond_0
    return-void
.end method

.method public resetViewGroupFade()V
    .locals 0

    .line 3208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public resetViews(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 982
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 983
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    .line 984
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    const-string v0, "lockscreen_affordance"

    .line 986
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 991
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQs()V

    .line 995
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 997
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 3167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 3163
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 3198
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 1

    .line 2992
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2993
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(Z)V

    .line 2994
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    .line 2995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 2996
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    if-eqz p1, :cond_1

    .line 2999
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3002
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 3003
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 3007
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setDozeAmount(FZ)V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 0

    .line 3241
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 2713
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 2714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 2715
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 3095
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2

    .line 2724
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 2725
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2726
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method protected setHorizontalPanelTranslation(F)V
    .locals 2

    .line 2781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2783
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2785
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 767
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    .line 2635
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public setLaunchAffordanceListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 2601
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnReinflationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3194
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnReinflationListener:Ljava/lang/Runnable;

    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 3

    .line 2459
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2462
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2465
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    goto :goto_0

    .line 2468
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2471
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPanelAlpha(IZ)V
    .locals 4

    .line 2675
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    .line 2676
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    .line 2677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v2, p1

    const/16 v3, 0xff

    if-ne p1, v3, :cond_0

    .line 2678
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2677
    :goto_0
    invoke-static {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_1
    return-void
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 2684
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 0

    .line 2831
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 3

    .line 3011
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    .line 3013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 3014
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3016
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 3020
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_2

    .line 3021
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 3023
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulsing(ZZ)V

    .line 3024
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setPulsing(Z)V

    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 0

    .line 975
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    .line 976
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 977
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 1

    .line 2627
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2628
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eqz v0, :cond_1

    .line 2630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    :cond_1
    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 3043
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 2

    .line 2977
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setTouchAndAnimationDisabled(Z)V

    if-eqz p1, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_0

    .line 2979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 2981
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2732
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x1

    .line 2733
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    :cond_0
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 3058
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    .line 3059
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method protected shouldExpandToTopOfClearAll(F)Z
    .locals 2

    .line 2543
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandToTopOfClearAll(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2549
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 7

    .line 1257
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1260
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long p0, v3, v5

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 0

    .line 1422
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldGestureWaitForTouchSlop()Z
    .locals 2

    .line 1413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1414
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    return v1

    .line 1417
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 1

    .line 2555
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showBouncerForFOD(Z)V
    .locals 0

    .line 3891
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerForFailedBiometricUnlock(Z)V

    :cond_0
    return-void
.end method

.method public showEmptyShadeView(Z)V
    .locals 0

    .line 2617
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowEmptyShadeView:Z

    .line 2618
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateEmptyShadeView()V

    return-void
.end method

.method public showTransientIndication(I)V
    .locals 0

    .line 3190
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 2512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUnlockHintStarted()V

    .line 2514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUnlockHintFinished()V

    return-void

    .line 2517
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimation()V

    return-void
.end method

.method public startWaitingForOpenPanelGesture()V
    .locals 1

    .line 1365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1368
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStarted()V

    .line 1370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    return-void
.end method

.method public stopWaitingForOpenPanelGesture(ZF)V
    .locals 2

    .line 1388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1389
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 1391
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->collapse(ZF)V

    goto :goto_1

    .line 1393
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeVibrateOnOpening()V

    cmpl-float p1, p2, v1

    if-lez p1, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p1, 0x1

    .line 1394
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fling(FZ)V

    .line 1396
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_2
    return-void
.end method

.method protected updateExpandedHeight(F)V
    .locals 2

    .line 2790
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    .line 2793
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2795
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p1

    int-to-float p1, p1

    .line 2797
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 2798
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 2799
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 2800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateStatusBarIcons()V

    return-void
.end method

.method public updateFpodState()V
    .locals 10

    const-string v0, "NotifaicationPanelView"

    const-string v1, "enter updateFpodState"

    .line 1557
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1560
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    const-string v2, "NotificationPanelViewCt"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/doze/DozeHost;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1608
    :cond_0
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->isShouldShowFpodIconInKeyguard()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "updateFpodState: dozing"

    .line 1609
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, "updateFpodState start dismissFpodIconView(false)"

    .line 1611
    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/fingerprint/FpodManager;->dismissFpodIconView(Z)V

    goto/16 :goto_3

    .line 1562
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->canShowFpod()Z

    move-result v0

    .line 1564
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodManager;->isBouncer()Z

    move-result v1

    .line 1565
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/fingerprint/FpodManager;->isIgnoreFocusChange()Z

    move-result v4

    .line 1566
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/fingerprint/FpodManager;->isShowFpodInBouncer()Z

    move-result v5

    .line 1568
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQsExpanded : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and mKeyguardOccluded : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardOccluded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  and moveHelperCanShow : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and bouncer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and mHasWindowFocus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHasWindowFocus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and ignoreFocusChange : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and isShouldShowGxzwIconInKeyguard : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/fingerprint/FpodManager;->isShouldShowFpodIconInKeyguard()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and isShowFpodInBouncer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " KeyguardVisible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1573
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fpod"

    .line 1568
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    const-string v8, "canShow = isShowFpodInBouncer && (mHasWindowFocus || ignoreFocusChange);"

    .line 1576
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    .line 1577
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHasWindowFocus:Z

    if-nez v8, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    :goto_1
    move v3, v6

    goto :goto_2

    :cond_4
    const-string v8, "(mQsExpanded || mKeyguardOccluded || !moveHelperCanShow) ?"

    .line 1579
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardOccluded:Z

    if-nez v8, :cond_6

    if-eqz v0, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHasWindowFocus:Z

    if-nez v8, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 1583
    :cond_6
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/fingerprint/FpodManager;->isShouldShowFpodIconInKeyguard()Z

    move-result v7

    if-eq v7, v3, :cond_7

    .line 1586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateFpodState: mQsExpanded = "

    .line 1587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mKeyguardOccluded = "

    .line 1589
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", moveHelperCanShow = "

    .line 1590
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bottomAreaCanShow = "

    .line 1592
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bouncer = "

    .line 1594
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mHasWindowFocus = "

    .line 1596
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHasWindowFocus:Z

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", ignoreFocusChange = "

    .line 1598
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", mLockScreenMagazinePreViewVisible = "

    .line 1600
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isShowFpodInBouncer = "

    .line 1601
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_7
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    xor-int/lit8 v0, v3, 0x1

    .line 1606
    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->dismissFpodIconView(Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public updateFpodState(Z)V
    .locals 2

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFpodState show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelViewCt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1624
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodUtils;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result p0

    .line 1625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFpodState hasEnrolled: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFpodState isEnrolling: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->isEnrolling()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 1627
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->isEnrolling()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1628
    :cond_0
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->showFpodInKeyguardWhenLockout()V

    goto :goto_0

    .line 1632
    :cond_1
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->dismissFpodIconView(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method updateNotificationViews(Ljava/lang/String;)V
    .locals 1

    .line 3143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSectionBoundaries(Ljava/lang/String;)V

    .line 3144
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex()V

    .line 3145
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 3146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateShowEmptyShadeView()V

    .line 3147
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateIconAreaViews()V

    return-void
.end method

.method protected updateQsExpansion()V
    .locals 3

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1846
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    .line 1847
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 1848
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpansion(F)V

    .line 1849
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    return-void
.end method

.method public updateResources()V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 699
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->notification_panel_layout_gravity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 700
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 701
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v3, v1, :cond_1

    .line 702
    :cond_0
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 703
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 708
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 709
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v0, :cond_2

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v3, v1, :cond_3

    .line 710
    :cond_2
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 711
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 712
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method protected updateVerticalPanelPosition(F)V
    .locals 4

    .line 2757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void

    .line 2761
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 2763
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2764
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2765
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2766
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 2767
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 2769
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2772
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2773
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void
.end method
