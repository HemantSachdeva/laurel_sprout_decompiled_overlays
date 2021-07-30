.class public Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/statusbar/notification/stack/SwipeableView;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;,
        Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;",
        ">;",
        "Lcom/android/systemui/statusbar/notification/stack/SwipeableView;",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;"
    }
.end annotation


# static fields
.field private static final RECENTLY_ALERTED_THRESHOLD_MS:J

.field private static final TRANSLATE_CONTENT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAboveShelf:Z

.field private mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

.field private mAppName:Ljava/lang/String;

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mChildAfterViewWhenDismissed:Landroid/view/View;

.field private mChildIsExpanding:Z

.field private mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

.field private mChildrenContainerStub:Landroid/view/ViewStub;

.field private mChildrenExpanded:Z

.field private mEnableNonGroupedNotificationExpand:Z

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mExpandAnimationRunning:Z

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedWhenPinned:Z

.field private mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

.field private final mExpireRecentlyAlertedFlag:Ljava/lang/Runnable;

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mForceUnlocked:Z

.field private mGroupExpansionChanging:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGroupParentWhenDismissed:Landroid/view/View;

.field private mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mGutsStub:Landroid/view/ViewStub;

.field private mHasUserChangedExpansion:Z

.field private mHeaderVisibleAmount:F

.field private mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsupDisappearRunning:Z

.field private mHideSensitiveForIntrinsicHeight:Z

.field private mIconAnimationRunning:Z

.field private mIconTransformContentShift:I

.field private mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

.field private mIncreasedPaddingBetweenElements:I

.field private mIsBlockingHelperShowing:Z

.field private mIsColorized:Z

.field private mIsHeadsUp:Z

.field private mIsLowPriority:Z

.field private mIsPinned:Z

.field private mIsSummaryWithChildren:Z

.field private mIsSystemChildExpanded:Z

.field private mIsSystemExpanded:Z

.field private mJustClicked:Z

.field private mKeepInParent:Z

.field private mLastChronometerRunning:Z

.field private mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

.field private mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field private mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

.field private mMaxHeadsUpHeight:I

.field private mMaxHeadsUpHeightBeforeN:I

.field private mMaxHeadsUpHeightBeforeP:I

.field private mMaxHeadsUpHeightIncreased:I

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mMustStayOnScreen:Z

.field private mNeedsRedaction:Z

.field private mNotificationColor:I

.field private mNotificationLaunchHeight:I

.field private mNotificationMaxHeight:I

.field private mNotificationMinHeight:I

.field private mNotificationMinHeightBeforeN:I

.field private mNotificationMinHeightBeforeP:I

.field private mNotificationMinHeightLarge:I

.field private mNotificationMinHeightMedia:I

.field private mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mNotificationTranslationFinished:Z

.field private mOnAppOpsClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDismissRunnable:Ljava/lang/Runnable;

.field private mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

.field private mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

.field private mOnKeyguard:Z

.field private mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field private mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field private mRemoved:Z

.field private mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field private mSecureStateProvider:Ljava/util/function/BooleanSupplier;

.field private mSensitive:Z

.field private mSensitiveHiddenInGeneral:Z

.field private mShelfIconVisible:Z

.field private mShowGroupBackgroundWhenExpanded:Z

.field private mShowNoBackground:Z

.field private mShowingPublic:Z

.field private mShowingPublicInitialized:Z

.field private mStatusbarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;

.field private mTranslateAnim:Landroid/animation/Animator;

.field private mTranslateableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationWhenRemoved:F

.field private mUpdateBackgroundOnUpdate:Z

.field private mUseIncreasedCollapsedHeight:Z

.field private mUseIncreasedHeadsUpHeight:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mWasChildInGroupWhenRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->RECENTLY_ALERTED_THRESHOLD_MS:J

    .line 307
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;

    const-string v1, "translate"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1593
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 130
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationTranslationFinished:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 185
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    const/4 p2, 0x1

    .line 221
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 267
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 337
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;

    .line 1715
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRow$XUb-nXphAmdEb1BUkM4zkhhpdtg;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRow$XUb-nXphAmdEb1BUkM4zkhhpdtg;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpireRecentlyAlertedFlag:Ljava/lang/Runnable;

    .line 1594
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$ImageCache;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 1596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Ljava/util/ArrayList;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationTranslationFinished:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$2301(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 0

    .line 117
    invoke-super/range {p0 .. p9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 0

    .line 117
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    return-object p0
.end method

.method private animateShowingPublic(JJZ)V
    .locals 7

    .line 2547
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Landroid/view/View;

    .line 2548
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    aput-object v3, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v1, [Landroid/view/View;

    .line 2549
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    aput-object v3, v0, v2

    :goto_0
    new-array v1, v1, [Landroid/view/View;

    .line 2550
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    aput-object v3, v1, v2

    if-eqz p5, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p5, :cond_2

    move-object v0, v1

    .line 2553
    :cond_2
    array-length p5, v3

    move v1, v2

    :goto_2
    const/4 v4, 0x0

    if-ge v1, p5, :cond_3

    aget-object v5, v3, v1

    .line 2554
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2555
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2556
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 2557
    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2558
    invoke-virtual {v4, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 2559
    invoke-virtual {v4, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$7;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$7;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    .line 2560
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2567
    :cond_3
    array-length p0, v0

    move p5, v2

    :goto_3
    if-ge p5, p0, :cond_4

    aget-object v1, v0, p5

    .line 2568
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2569
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2570
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2571
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2572
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2573
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2574
    invoke-virtual {v1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private applyAudiblyAlertedRecently(Z)V
    .locals 1

    .line 1718
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setRecentlyAudiblyAlerted(Z)V

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRecentlyAudiblyAlerted(Z)V

    .line 1722
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRecentlyAudiblyAlerted(Z)V

    return-void
.end method

.method private applyChildrenRoundness()V
    .locals 1

    .line 3108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBottomRoundness()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setCurrentBottomRoundness(F)V

    :cond_0
    return-void
.end method

.method private cacheIsSystemNotification()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 500
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private doLongClickCallback()V
    .locals 2

    .line 1793
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(II)V

    return-void
.end method

.method private doLongClickCallback(IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 1

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1808
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    :cond_0
    return-void
.end method

.method private getHeadsUpHeight()I
    .locals 1

    .line 2635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpHeight(Z)I

    move-result p0

    return p0
.end method

.method private getPinnedHeadsUpHeight(Z)I
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 1009
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v0, :cond_1

    .line 1010
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 1012
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1014
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    return p0
.end method

.method private handleIntrinsicHeightReached()V
    .locals 2

    .line 2968
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2971
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private hasNoRounding()Z
    .locals 2

    .line 3122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBottomRoundness()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result p0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initDimens()V
    .locals 2

    .line 1642
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height_legacy:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightBeforeN:I

    .line 1644
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height_before_p:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightBeforeP:I

    .line 1646
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeight:I

    .line 1648
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height_increased:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .line 1650
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_min_height_media:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightMedia:I

    .line 1652
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMaxHeight:I

    .line 1654
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_max_heads_up_height_legacy:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeN:I

    .line 1656
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_max_heads_up_height_before_p:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeP:I

    .line 1658
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_max_heads_up_height:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 1660
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->notification_max_heads_up_height_increased:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .line 1663
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1664
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_height_increased:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    .line 1666
    sget v1, Lcom/android/systemui/R$bool;->config_enableNonGroupedNotificationExpand:I

    .line 1667
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    .line 1668
    sget v1, Lcom/android/systemui/R$bool;->config_showGroupNotificationBgWhenExpanded:I

    .line 1669
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowGroupBackgroundWhenExpanded:Z

    return-void
.end method

.method private isBlockingHelperShowingAndCanTranslate()Z
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationTranslationFinished:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBypassEnabled()Z
    .locals 0

    .line 2344
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

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

.method private isColorized()Z
    .locals 1

    .line 2913
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsColorized:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isConversation()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 540
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDozing()Z
    .locals 0

    .line 2348
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusbarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSystemChildExpanded()Z
    .locals 0

    .line 2434
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    return p0
.end method

.method private static isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 2

    .line 348
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 347
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 353
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x40

    .line 352
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 356
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ExpandableNotifRow"

    const-string p1, "cacheIsSystemNotification: Could not find package info"

    .line 359
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 1715
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyAudiblyAlertedRecently(Z)V

    return-void
.end method

.method private synthetic lambda$setAppOpsOnClickListener$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;Landroid/view/View;)V
    .locals 2

    .line 1731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1736
    :cond_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getAppOpsMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1738
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-interface {p1, p0, v1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;->onClick(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    :cond_1
    return-void
.end method

.method private onAttachedChildrenCountChanged()V
    .locals 4

    .line 2357
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2358
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 2359
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2360
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isConversation()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Z)V

    .line 2362
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 2363
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    .line 2364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 2365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 2366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildrenRoundness()V

    return-void
.end method

.method private onExpansionChanged(ZZ)V
    .locals 2

    .line 2935
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 2936
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 2937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    :cond_1
    if-eq v0, p2, :cond_4

    .line 2940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 2941
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

    if-eqz p2, :cond_2

    .line 2942
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {p2, v1, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 2944
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p1, :cond_3

    .line 2945
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 2947
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

    if-eqz p0, :cond_4

    .line 2948
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;->onExpansionChanged(Z)V

    :cond_4
    return-void
.end method

.method private reInflateViews()V
    .locals 5

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1211
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1212
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1213
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->notification_guts:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 1215
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 1220
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1221
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-interface {v0, p0, v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1226
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 1227
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->initView()V

    .line 1228
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->reInflateViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1230
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->clearPackageContext()V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    const/4 v1, 0x1

    .line 1233
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->setNeedsReinflation(Z)V

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/statusbar/notification/row/BindRequester;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    return-void
.end method

.method private setChildIsExpanding(Z)V
    .locals 0

    .line 2120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 2121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 2122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setChronometerRunning(ZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1050
    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 1051
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 1052
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p2

    .line 1053
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 1054
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 1055
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    :cond_2
    return-void
.end method

.method private setChronometerRunningForChild(ZLandroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x102022b

    .line 1061
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1062
    instance-of p2, p0, Landroid/widget/Chronometer;

    if-eqz p2, :cond_0

    .line 1063
    check-cast p0, Landroid/widget/Chronometer;

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setStarted(Z)V

    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 424
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 425
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 426
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p2

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 428
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x1020006

    .line 435
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 436
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    const v0, 0x1020437

    .line 437
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 439
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p1, :cond_3

    .line 445
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 446
    instance-of p1, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 447
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_0

    .line 449
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 453
    :cond_1
    instance-of p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_3

    .line 454
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_2

    .line 456
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_3
    :goto_0
    return-void
.end method

.method private shouldShowPublic()Z
    .locals 1

    .line 2593
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateChildAccessibilityImportance(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 1895
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private updateChildrenVisibility()V
    .locals 5

    .line 2006
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 2007
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2008
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 2009
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    const/4 v4, 0x4

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 2008
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2010
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_3

    .line 2012
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    .line 2011
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2016
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateLimits()V

    return-void
.end method

.method private updateClickAndFocus()V
    .locals 4

    .line 1110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1111
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    .line 1112
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v2

    if-eq v2, v0, :cond_3

    .line 1113
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1115
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1116
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method private updateContentAccessibilityImportanceForGuts(Z)V
    .locals 4

    .line 1876
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1877
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildAccessibilityImportance(Landroid/view/View;Z)V

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v0, :cond_1

    .line 1880
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1881
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildAccessibilityImportance(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1886
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestAccessibilityFocus()Z

    :cond_2
    return-void
.end method

.method private updateContentShiftHeight()V
    .locals 2

    .line 2470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2472
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    .line 2473
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconTransformContentShift:I

    goto :goto_0

    .line 2475
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mContentShift:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconTransformContentShift:I

    :goto_0
    return-void
.end method

.method private updateIconVisibilities()V
    .locals 5

    .line 1543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShelfIconVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1544
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1545
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setShelfIconVisible(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1547
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p0, :cond_2

    .line 1548
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setShelfIconVisible(Z)V

    :cond_2
    return-void
.end method

.method private updateLimits()V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 646
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateLimitsForView(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 8

    .line 651
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    const v1, 0x10204a7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 654
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 655
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 658
    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    const v7, 0x1020361

    .line 660
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    .line 661
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getShowCompactMediaSeekbar()Z

    move-result v7

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    .line 663
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez v0, :cond_5

    if-eqz v4, :cond_4

    .line 664
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightBeforeN:I

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightBeforeP:I

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 666
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightMedia:I

    goto :goto_4

    .line 667
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-ne p1, v0, :cond_7

    .line 668
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    goto :goto_4

    .line 670
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMinHeight:I

    .line 672
    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 673
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    if-eqz v4, :cond_9

    .line 677
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeN:I

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeP:I

    goto :goto_6

    .line 678
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-ne p1, v1, :cond_b

    .line 679
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    goto :goto_6

    .line 681
    :cond_b
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    :goto_6
    const/4 v2, 0x2

    .line 683
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 686
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getMinLayoutHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 688
    :cond_c
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationMaxHeight:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeights(III)V

    return-void
.end method

.method private updateRippleAllowed()V
    .locals 1

    .line 2299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2300
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2301
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setRippleAllowed(Z)V

    return-void
.end method


# virtual methods
.method public addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->addNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    const/4 p2, 0x1

    .line 800
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public addChildNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;I)V
    .locals 0

    .line 811
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    return-void
.end method

.method public animateTranslateNotification(F)V
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1906
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 1908
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    .line 1910
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    .line 919
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public applyChildrenState()V
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 934
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->applyState()V

    :cond_0
    return-void
.end method

.method protected applyContentTransformation(FF)V
    .locals 4

    .line 1525
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyContentTransformation(FF)V

    .line 1526
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mIsLastChild:Z

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1531
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1532
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_2

    .line 1535
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1536
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 2037
    :cond_0
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x32

    .line 2038
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result v1

    .line 2037
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 2039
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getStartTranslationZ()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 2042
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 2043
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 2044
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    add-float/2addr v1, v2

    .line 2045
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 2046
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTop()I

    move-result v2

    .line 2047
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress()F

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 2048
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getStartClipTopAmount()I

    move-result v5

    .line 2049
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_2

    .line 2050
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    int-to-float v2, v2

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2052
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 2053
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getParentStartClipTopAmount()I

    move-result v0

    if-eqz v5, :cond_1

    int-to-float v6, v0

    sub-int/2addr v0, v5

    int-to-float v0, v0

    .line 2055
    invoke-static {v6, v0, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 2058
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 2061
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2062
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2063
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 2061
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2064
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2066
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setMinimumHeightForClipping(I)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    int-to-float v0, v5

    .line 2068
    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 2069
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    :cond_3
    :goto_0
    int-to-float v0, v2

    .line 2071
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2072
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 2074
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method protected applyRoundness()V
    .locals 0

    .line 3103
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyRoundness()V

    .line 3104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildrenRoundness()V

    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 0

    .line 901
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    return p0
.end method

.method public areGutsExposed()Z
    .locals 0

    .line 2639
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canShowHeadsUp()Z
    .locals 1

    .line 2337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canViewBeDismissed()Z
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 6

    .line 3082
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3083
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 3084
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 3086
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasNoRounding()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3087
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 3088
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBottomRoundness()F

    move-result v5

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_2

    move v4, v1

    .line 3087
    :cond_2
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldClipToRounding(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 3091
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-ne p1, v0, :cond_5

    .line 3092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->isClippingNeeded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasNoRounding()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    return v1

    .line 3095
    :cond_5
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_6

    .line 3096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasNoRounding()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 3098
    :cond_6
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->childNeedsClipping(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public closeRemoteInput()V
    .locals 3

    .line 1274
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1275
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->closeRemoteInput()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 3052
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;)V

    return-object p0
.end method

.method public createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 3

    .line 1176
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1180
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1185
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2918
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2921
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2923
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2924
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    sub-float v4, v0, v4

    invoke-virtual {v2, v4, v1}, Landroid/view/NotificationHeaderView;->isInTouchRect(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 2927
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2928
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->disallowSingleClick(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 2931
    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dismiss(Z)V
    .locals 2

    .line 1340
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->dismiss(Z)V

    const/4 p1, 0x0

    .line 1341
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    .line 1343
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 1344
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDismissed()V

    .line 1345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1346
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1347
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object p1

    .line 1348
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1350
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public doLongClickCallback(II)V
    .locals 2

    .line 1797
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1798
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1801
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1803
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 3248
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", translation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", removed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", expandAnimationRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    .line 3256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", privateShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3258
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "    "

    .line 3259
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "no viewState!!!"

    .line 3263
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3265
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3266
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3267
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_3

    const-string v0, "  ChildrenContainer"

    .line 3268
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", translationY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    .line 3274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  {"

    .line 3275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3277
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p0, "  }"

    .line 3279
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method ensureGutsInflated()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-nez v0, :cond_0

    .line 2001
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected expandNotification()V
    .locals 1

    .line 2370
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 0

    .line 1901
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getAppName()Ljava/lang/String;
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppOpsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1726
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnAppOpsClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getAttachedChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .line 905
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBubbleClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1099
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0
.end method

.method public getChildAfterViewWhenDismissed()Landroid/view/View;
    .locals 0

    .line 1419
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    return-object p0
.end method

.method public getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
    .locals 0

    .line 1389
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    return-object p0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .line 2769
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2770
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result p0

    return p0

    .line 2772
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method protected getContentTransformationShift()F
    .locals 0

    .line 2481
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconTransformContentShift:I

    int-to-float p0, p0

    return p0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .line 2653
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2654
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    return-object p0

    .line 2656
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    return-object p0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 1

    .line 3115
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3116
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 3118
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getExistingSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .locals 0

    .line 3206
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getCurrentSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 0

    .line 2823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .line 2703
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2704
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupParentWhenDismissed()Landroid/view/View;
    .locals 0

    .line 1423
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    return-object p0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p0
.end method

.method public getHeaderVisibleAmount()F
    .locals 0

    .line 769
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    return p0
.end method

.method public getHeadsUpHeightWithoutHeader()I
    .locals 1

    .line 2777
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2780
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2781
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeightWithoutHeader()I

    move-result p0

    return p0

    .line 2783
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpHeight(Z)I

    move-result p0

    return p0

    .line 2778
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p0

    return p0
.end method

.method public getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 1121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;
    .locals 0

    .line 1673
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    return-object p0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .line 2900
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 2901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 2903
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2904
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIncreasedPaddingAmount()F

    move-result p0

    return p0

    .line 2906
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 2306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p0

    return p0

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2310
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 2311
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2312
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result p0

    return p0

    .line 2313
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz v0, :cond_3

    .line 2314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result p0

    return p0

    .line 2315
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_4

    .line 2316
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 2317
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 2320
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 2323
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_7
    :goto_0
    const/4 v0, 0x1

    .line 2319
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result p0

    return p0

    .line 2325
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result p0

    return p0

    .line 2328
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p0

    return p0
.end method

.method public getIsNonblockable()Z
    .locals 5

    .line 510
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 511
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 512
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;->isNonblockable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 521
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v1

    or-int/2addr v0, v1

    .line 525
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 1

    .line 365
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    return-object p0
.end method

.method public getMaxContentHeight()I
    .locals 1

    .line 2744
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2745
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result p0

    return p0

    .line 2747
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    .line 2748
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMaxHeight()I

    move-result p0

    return p0
.end method

.method public getMaxExpandHeight()I
    .locals 0

    .line 2630
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandHeight()I

    move-result p0

    return p0
.end method

.method public getMinHeight(Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 2753
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2754
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 2755
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 2756
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isTrackingHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2757
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result p0

    return p0

    .line 2758
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2759
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight()I

    move-result p0

    return p0

    :cond_2
    if-nez p1, :cond_3

    .line 2760
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz p1, :cond_3

    .line 2761
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result p0

    return p0

    .line 2763
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    .line 2764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public getNotificationColor()I
    .locals 0

    .line 1287
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationColor:I

    return p0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 1069
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object p0

    return-object p0

    .line 1072
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getNumUniqueChannels()I
    .locals 0

    .line 2378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public getOriginalIconColor()I
    .locals 4

    .line 609
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result p0

    return p0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getOriginalIconColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 617
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result p0

    .line 616
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getContrastedColor(Landroid/content/Context;ZI)I

    move-result p0

    return p0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    const/4 v0, 0x1

    .line 997
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result p0

    return p0
.end method

.method public getPositionOfChild(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 1

    .line 2884
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2885
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    return-object p0
.end method

.method public getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    .line 1192
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p0
.end method

.method public getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    return-object p0
.end method

.method public getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 2132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 1

    .line 1484
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object p0

    return-object p0

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;
    .locals 1

    .line 2819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :goto_0
    return-object p0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .locals 0

    .line 1301
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 3

    .line 1965
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1966
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1969
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 1972
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1974
    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$6;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$6;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;F)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1995
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method public getTranslation()F
    .locals 1

    .line 1943
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    if-nez v0, :cond_0

    .line 1944
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    return p0

    .line 1947
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowingAndCanTranslate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1948
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    return p0

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1953
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getTranslationWhenRemoved()F
    .locals 0

    .line 1385
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    return p0
.end method

.method public getUniqueChannels()Landroid/util/ArraySet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 2386
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2388
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2392
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    .line 2393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v1

    .line 2394
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2396
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2397
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    .line 2398
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 2399
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2400
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2401
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 1

    .line 953
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 1080
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    return-object p0
.end method

.method protected handleSlideBack()Z
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 883
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateTranslateNotification(F)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasExpandingChild()Z
    .locals 0

    .line 2127
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    return p0
.end method

.method public hasFinishedInitialization()Z
    .locals 0

    .line 1165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result p0

    return p0
.end method

.method public hasUserChangedExpansion()Z
    .locals 0

    .line 2180
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return p0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V
    .locals 1

    .line 1616
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 1617
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-nez p1, :cond_0

    .line 1618
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p13}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1620
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1621
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 1623
    :cond_1
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$ExpansionLogger;

    .line 1624
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 1625
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1626
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1627
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p1, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1628
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1629
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 1630
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    .line 1631
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 1632
    invoke-virtual {p0, p10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAppOpsOnClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;)V

    .line 1633
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 1634
    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusbarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1635
    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    .line 1636
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object p4, p1, p3

    .line 1637
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setPeopleNotificationIdentifier(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isAboveShelf()Z
    .locals 1

    .line 3057
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelf:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlockingHelperShowing()Z
    .locals 0

    .line 1471
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    return p0
.end method

.method public isBlockingHelperShowingAndTranslationFinished()Z
    .locals 1

    .line 1475
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationTranslationFinished:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChildInGroup()Z
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentExpandable()Z
    .locals 1

    .line 2644
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2647
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    .line 2648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentExpandable()Z

    move-result p0

    return p0
.end method

.method public isDimmable()Z
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isDimmable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 641
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmable()Z

    move-result p0

    return p0
.end method

.method public isExpandAnimationRunning()Z
    .locals 0

    .line 2142
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    return p0
.end method

.method public isExpandable()Z
    .locals 2

    .line 2159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2160
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    xor-int/2addr p0, v1

    return p0

    .line 2162
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExpanded()Z
    .locals 1

    const/4 v0, 0x0

    .line 2424
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p0

    return p0
.end method

.method public isExpanded(Z)Z
    .locals 1

    .line 2428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 2429
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSystemChildExpanded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2430
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserExpanded()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupExpanded()Z
    .locals 1

    .line 2353
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result p0

    return p0

    .line 383
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return p0
.end method

.method public isGroupNotFullyVisible()Z
    .locals 1

    .line 3137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

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

.method public isHeadsUp()Z
    .locals 0

    .line 698
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    return p0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 0

    .line 1415
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    return p0
.end method

.method public isHeadsUpState()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

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

.method public isLowPriority()Z
    .locals 0

    .line 1561
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    return p0
.end method

.method public isMediaRow()Z
    .locals 1

    .line 3127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getExpandedContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getExpandedContentView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020361

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnKeyguard()Z
    .locals 0

    .line 1305
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    return p0
.end method

.method public isOnlyChildInGroup()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public isPinned()Z
    .locals 0

    .line 992
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    return p0
.end method

.method public isPinnedAndExpanded()Z
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p0
.end method

.method public isRemoved()Z
    .locals 0

    .line 1365
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    return p0
.end method

.method public isShowingIcon()Z
    .locals 2

    .line 1494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1497
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSoundEffectsEnabled()Z
    .locals 3

    .line 2151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mStatusbarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2152
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    if-eqz v0, :cond_0

    .line 2154
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 2155
    invoke-super {p0}, Landroid/widget/FrameLayout;->isSoundEffectsEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public isSummaryWithChildren()Z
    .locals 0

    .line 896
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    return p0
.end method

.method public isSystemExpanded()Z
    .locals 0

    .line 2256
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return p0
.end method

.method public isTopLevelChild()Z
    .locals 0

    .line 3133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return p0
.end method

.method public isUserExpanded()Z
    .locals 0

    .line 2184
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    return p0
.end method

.method public isUserLocked()Z
    .locals 1

    .line 2236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mForceUnlocked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keepInParent()Z
    .locals 0

    .line 1356
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParent:Z

    return p0
.end method

.method public synthetic lambda$new$0$ExpandableNotificationRow()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$setAppOpsOnClickListener$1$ExpandableNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->lambda$setAppOpsOnClickListener$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;Landroid/view/View;)V

    return-void
.end method

.method public makeActionsVisibile()V
    .locals 3

    const/4 v0, 0x1

    .line 2597
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 2598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2599
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 2601
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .line 2580
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMustStayOnScreen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyHeightChanged(Z)V
    .locals 1

    .line 2486
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    .line 2487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

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
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->requestSelectLayout(Z)V

    return-void
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 5

    .line 2684
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2688
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 2689
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2690
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2692
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length p1, p0

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_2

    aget-object v4, p0, v3

    .line 2693
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2694
    invoke-virtual {v4, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2697
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_2
    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    .line 1512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateIconVisibilities()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1239
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1240
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onConfigurationChanged()V

    .line 1242
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    if-eqz p0, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->updateMaxImageSizes()V

    :cond_1
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 1197
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onDensityOrFontScaleChanged()V

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->initDimens()V

    .line 1199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->initBackground()V

    .line 1200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reInflateViews()V

    return-void
.end method

.method public onExpandedByGesture(Z)V
    .locals 2

    .line 2892
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19a

    goto :goto_0

    :cond_0
    const/16 v0, 0x199

    .line 2895
    :goto_0
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1745
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 1746
    sget v0, Lcom/android/systemui/R$id;->expandedPublic:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 1747
    sget v0, Lcom/android/systemui/R$id;->expanded:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 1750
    array-length v0, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    .line 1751
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 1752
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1754
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->notification_guts_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 1755
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1764
    sget v0, Lcom/android/systemui/R$id;->child_container_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 1765
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1780
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    if-eqz v0, :cond_2

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 1783
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onFinishedExpansionChange()V
    .locals 1

    const/4 v0, 0x0

    .line 2850
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 2851
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    return-void
.end method

.method onGutsClosed()V
    .locals 1

    const/4 v0, 0x1

    .line 1867
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateContentAccessibilityImportanceForGuts(Z)V

    return-void
.end method

.method onGutsOpened()V
    .locals 1

    .line 1862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    const/4 v0, 0x0

    .line 1863
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateContentAccessibilityImportanceForGuts(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 2977
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2978
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2980
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2982
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2985
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2987
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2988
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    goto :goto_0

    .line 2991
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isContentExpandable()Z

    move-result v0

    .line 2992
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 2997
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 2999
    :cond_4
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3002
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3004
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3006
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_snooze:I

    .line 3007
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->notification_menu_snooze_action:I

    .line 3008
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 3009
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1814
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p0, 0x1

    return p0

    .line 1818
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1834
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1835
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1823
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1825
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1829
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 2451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 2452
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 2453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p1

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2454
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2456
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2457
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onParentHeightUpdate()V

    .line 2459
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateContentShiftHeight()V

    .line 2460
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

    if-eqz p0, :cond_2

    .line 2461
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;->onLayout()V

    :cond_2
    return-void
.end method

.method public onNotificationRankingUpdated()V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 6

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 546
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsColorized:Z

    .line 549
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateNotificationColor()V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 555
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isConversation()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Z)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    .line 559
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconAnimationRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 562
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    if-eqz v0, :cond_4

    .line 563
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 565
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5

    .line 566
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 568
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateLimits()V

    .line 572
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 573
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateRippleAllowed()V

    .line 575
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateBackgroundOnUpdate:Z

    if-eqz v0, :cond_6

    .line 576
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateBackgroundOnUpdate:Z

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    :cond_6
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 117
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V
    .locals 1

    .line 1132
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 1139
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1140
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldUseDefaultMenuItems()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createConversationItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createPartialConversationItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuItems(Ljava/util/ArrayList;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 1150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    :cond_4
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 117
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 3

    .line 1156
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1157
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p1, :cond_1

    .line 1159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    :cond_1
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 2021
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2024
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2025
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2026
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2027
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 874
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onUiModeChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1248
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUpdateBackgroundOnUpdate:Z

    .line 1249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reInflateViews()V

    .line 1250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p0, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1252
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onUiModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    .line 3016
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x20

    if-eq p1, p2, :cond_6

    const/high16 p2, 0x40000

    if-eq p1, p2, :cond_5

    const/high16 p2, 0x80000

    if-eq p1, p2, :cond_5

    const/high16 p2, 0x100000

    if-eq p1, p2, :cond_4

    .line 3031
    sget p2, Lcom/android/systemui/R$id;->action_snooze:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    .line 3032
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3036
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3038
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p2, v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    :cond_2
    return v0

    :cond_3
    return v1

    .line 3021
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismissWithBlockingHelper(Z)Z

    return v0

    .line 3025
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v0

    .line 3028
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback()V

    return v0
.end method

.method public performDismiss(Z)V
    .locals 2

    .line 1447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isOnlyChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1449
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismiss(Z)V

    .line 1456
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->dismiss(Z)V

    .line 1457
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1460
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 1461
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public performDismissWithBlockingHelper(Z)Z
    .locals 4

    .line 1434
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 1435
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 1436
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;->perhapsShowBlockingHelper(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Z

    move-result v0

    .line 1438
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "notification_dismissed"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismiss(Z)V

    return v0
.end method

.method public performOnIntrinsicHeightReached(Ljava/lang/Runnable;)V
    .locals 0

    .line 2963
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    .line 2964
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->handleIntrinsicHeightReached()V

    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 13

    move-object v1, p0

    .line 2663
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2664
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2666
    new-instance v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$8;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$8;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2674
    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    .line 2675
    invoke-virtual {v11}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 2678
    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareExpansionChanged()V
    .locals 1

    .line 940
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 941
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->prepareExpansionChanged()V

    :cond_0
    return-void
.end method

.method public removeAllChildren()V
    .locals 5

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 1310
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    .line 1311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v2, v0

    .line 1312
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1313
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1314
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1317
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 v4, 0x0

    .line 1318
    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1320
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    return-void
.end method

.method public removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 818
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onAttachedChildrenCountChanged()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 819
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p0, 0x0

    .line 820
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    return-void
.end method

.method public removeChildNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V
    .locals 0

    .line 825
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 2446
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1680
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 1681
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->unDismiss()V

    .line 1682
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1683
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    .line 1685
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onHeightReset()V

    .line 1686
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public resetTranslation()V
    .locals 4

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1846
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1847
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 1848
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v2, v0

    .line 1849
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1850
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1852
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 1853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScrollX(I)V

    .line 1856
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p0, :cond_4

    .line 1857
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    :cond_4
    return-void
.end method

.method public resetUserExpansion()V
    .locals 3

    .line 2223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    const/4 v1, 0x0

    .line 2224
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 2225
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    .line 2226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2227
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 2230
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2232
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    return-void
.end method

.method public setAboveShelf(Z)V
    .locals 1

    .line 3141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 3142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelf:Z

    .line 3143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 3144
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 p1, v0, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 4

    .line 2711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2712
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setActualHeight(IZ)V

    if-eqz v0, :cond_1

    .line 2713
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2717
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 2719
    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 2722
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2723
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setActualHeight(I)V

    return-void

    .line 2726
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2727
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2728
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContentHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2730
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p2, :cond_4

    .line 2731
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setActualHeight(I)V

    .line 2733
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p2, :cond_5

    .line 2734
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setActualHeight(I)V

    .line 2736
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2737
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onParentHeightUpdate()V

    .line 2739
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->handleIntrinsicHeightReached()V

    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContentHeightAnimating(Z)V

    :cond_0
    return-void
.end method

.method setAppOpsOnClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;)V
    .locals 1

    .line 1730
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRow$7jXuB4sFjLsVw6Zajpc39FzigT4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableNotificationRow$7jXuB4sFjLsVw6Zajpc39FzigT4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnAppOpsClickListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnAppOpsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setBackgroundTintColor(I)V
    .locals 0

    .line 1266
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1269
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setBackgroundTintColor(I)V

    :cond_0
    return-void
.end method

.method public setBlockingHelperShowing(Z)V
    .locals 0

    .line 1467
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    return-void
.end method

.method protected setChildrenContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3211
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    return-void
.end method

.method public setChildrenExpanded(ZZ)V
    .locals 0

    .line 2605
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 2606
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p2, :cond_0

    .line 2607
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setChildrenExpanded(Z)V

    .line 2609
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateClickAndFocus()V

    return-void
.end method

.method public setChronometerRunning(Z)V
    .locals 2

    .line 1034
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    .line 1037
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 1040
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1041
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1042
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 4

    .line 2799
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 2802
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    if-eq p1, v0, :cond_2

    .line 2803
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipBottomAmount(I)V

    .line 2804
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2805
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipBottomAmount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_2

    .line 2808
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClipBottomAmount(I)V

    .line 2811
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-nez p0, :cond_3

    .line 2814
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setClipBottomAmount(I)V

    :cond_3
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-super {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 2173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipToActualHeight(Z)V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 4

    .line 2788
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 2789
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2790
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setClipTopAmount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2792
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p0, :cond_1

    .line 2793
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClipTopAmount(I)V

    :cond_1
    return-void
.end method

.method public setContentBackground(IZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 1

    .line 1259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 1260
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(IZ)V

    :cond_0
    return-void
.end method

.method public setDismissRtl(Z)V
    .locals 0

    .line 3150
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz p0, :cond_0

    .line 3151
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setDismissRtl(Z)V

    :cond_0
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->cacheIsSystemNotification()V

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 5

    .line 2079
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    goto :goto_0

    .line 2082
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    .line 2084
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2088
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2089
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x43

    .line 2090
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 2091
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    .line 2092
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 2093
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2094
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimations(Landroid/view/View;)V

    .line 2095
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getNotificationLaunchHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 2097
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 2098
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 2099
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 2100
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    if-eqz v0, :cond_4

    .line 2103
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2105
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 2106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5

    .line 2107
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 2108
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setMinimumHeightForClipping(I)V

    .line 2111
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_6

    .line 2112
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChildIsExpanding(Z)V

    .line 2114
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 2115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    .line 2116
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setExpandAnimationRunning(Z)V

    return-void
.end method

.method public setExpandable(Z)V
    .locals 0

    .line 2166
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    .line 2167
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return-void
.end method

.method public setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 1

    .line 1125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setGutsContent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;)V

    :cond_0
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 5

    .line 755
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 756
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 758
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeaderVisibleAmount(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setHeaderVisibleAmount(F)V

    .line 763
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_2
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 3

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    .line 704
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 705
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUp(Z)V

    .line 706
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 711
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 714
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMustStayOnScreen:Z

    .line 715
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p1

    if-eq p1, v0, :cond_3

    .line 717
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 p1, v0, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 4

    .line 1393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 1394
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1395
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1396
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpAnimatingAway(Z)V

    if-eqz v1, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    if-eqz v1, :cond_1

    .line 1398
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1400
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p1

    if-eq p1, v0, :cond_2

    .line 1401
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 p1, v0, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    :cond_2
    return-void
.end method

.method public setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1406
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setHeadsUpIsVisible()V
    .locals 1

    .line 774
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHeadsUpIsVisible()V

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMustStayOnScreen:Z

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 7

    .line 2511
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 2516
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 2517
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    .line 2518
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v3, :cond_2

    if-ne v1, v0, :cond_2

    return-void

    .line 2523
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_6

    .line 2526
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2527
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2528
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    .line 2529
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2530
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2532
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2533
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2534
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenVisibility()V

    goto :goto_2

    .line 2537
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublic:Z

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateShowingPublic(JJZ)V

    .line 2539
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    .line 2540
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBackgroundColor(Z)V

    .line 2541
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtons(Z)V

    .line 2542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 2543
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 2

    .line 2497
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    .line 2498
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2499
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2500
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 2501
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2502
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2503
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHideSensitiveForIntrinsicHeight(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconAnimationRunning(Z)V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 407
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/notification/row/NotificationContentView;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 413
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    .line 414
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 415
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 416
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIconAnimationRunning:Z

    return-void
.end method

.method public setIsChildInGroup(ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 849
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 850
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChildIsExpanding(Z)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setExtraWidthForClipping(F)V

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setMinimumHeightForClipping(I)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 854
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 855
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setIsChildInGroup(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 858
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 859
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 860
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_2

    .line 861
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setDistanceToTopRoundness(F)V

    .line 864
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 866
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 867
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundClipping()V

    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 1

    .line 1553
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setIsLowPriority(Z)V

    .line 1555
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p0, :cond_0

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setIsLowPriority(Z)V

    :cond_0
    return-void
.end method

.method public setJustClicked(Z)V
    .locals 0

    .line 1023
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mJustClicked:Z

    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0

    .line 1360
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mKeepInParent:Z

    return-void
.end method

.method public setLastAudiblyAlertedMs(J)V
    .locals 2

    .line 1699
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->useNewInterruptionModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 1701
    sget-wide p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->RECENTLY_ALERTED_THRESHOLD_MS:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1704
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyAudiblyAlertedRecently(Z)V

    .line 1706
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpireRecentlyAlertedFlag:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    .line 1708
    sget-wide p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->RECENTLY_ALERTED_THRESHOLD_MS:J

    sub-long/2addr p1, v0

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpireRecentlyAlertedFlag:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public setLayoutListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;)V
    .locals 0

    .line 2442
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LayoutListener;

    return-void
.end method

.method public setLegacy(Z)V
    .locals 3

    .line 2827
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2828
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setLegacy(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    return-void
.end method

.method public setNeedsRedaction(Z)V
    .locals 2

    .line 1574
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNeedsRedaction:Z

    if-eq v0, p1, :cond_1

    .line 1575
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNeedsRedaction:Z

    .line 1576
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1579
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->requireContentViews(I)V

    goto :goto_0

    .line 1581
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->markContentViewsFreeable(I)V

    .line 1583
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/BindRequester;->requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;

    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1092
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1094
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateClickAndFocus()V

    return-void
.end method

.method setOnDismissRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1479
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnExpansionChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;)V
    .locals 0

    .line 2954
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpansionChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpansionChangedListener;

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 3

    .line 2280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eq p1, v0, :cond_2

    .line 2281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 2282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    .line 2283
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    const/4 p1, 0x0

    .line 2284
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 2285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2286
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 2287
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 2289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2291
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p1

    if-eq p1, v0, :cond_2

    .line 2292
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    .line 2295
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateRippleAllowed()V

    return-void
.end method

.method public setPinned(Z)V
    .locals 4

    .line 972
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    .line 974
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 976
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 979
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 980
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    goto :goto_0

    .line 981
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz p1, :cond_2

    .line 982
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 984
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLastChronometerRunning:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 985
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result p1

    if-eq p1, v1, :cond_3

    .line 986
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 p1, v1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    :cond_3
    return-void
.end method

.method protected setPrivateLayout(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3216
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    return-void
.end method

.method protected setPublicLayout(Lcom/android/systemui/statusbar/notification/row/NotificationContentView;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3221
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    return-void
.end method

.method public setRemoved()V
    .locals 3

    const/4 v0, 0x1

    .line 1369
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mRemoved:Z

    .line 1370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 1371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    .line 1372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 1375
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1376
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setRemoved()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method public setSensitive(ZZ)V
    .locals 0

    .line 2491
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitive:Z

    .line 2492
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    return-void
.end method

.method public setShelfIconVisible(Z)V
    .locals 1

    .line 1504
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShelfIconVisible:Z

    if-eq p1, v0, :cond_0

    .line 1505
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShelfIconVisible:Z

    .line 1506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateIconVisibilities()V

    :cond_0
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setSingleLineWidthIndention(I)V

    return-void
.end method

.method public setSystemChildExpanded(Z)V
    .locals 0

    .line 2438
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 1

    .line 2265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v0, :cond_0

    .line 2266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 2267
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSystemExpanded:Z

    const/4 p1, 0x0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2269
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 2270
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p1, :cond_0

    .line 2271
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    :cond_0
    return-void
.end method

.method public setTranslation(F)V
    .locals 2

    .line 1916
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowingAndTranslationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1917
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void

    .line 1919
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    if-nez v0, :cond_1

    .line 1920
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 1921
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1923
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1924
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1925
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1928
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 1933
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScrollX(I)V

    .line 1936
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1937
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onParentTranslationUpdate(F)V

    :cond_5
    return-void
.end method

.method public setUntruncatedChildCount(I)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 785
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUntruncatedChildCount(I)V

    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2193
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 3

    .line 2203
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->setNotificationExpanded()V

    .line 2204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2205
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2206
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2208
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2211
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    if-nez p2, :cond_1

    return-void

    .line 2212
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p2

    .line 2213
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 2214
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserExpanded:Z

    .line 2215
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    if-nez p2, :cond_2

    .line 2216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 2218
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_2
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 1

    .line 2240
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 2241
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setUserExpanding(Z)V

    .line 2244
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    .line 2245
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 2246
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2247
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    :cond_1
    return-void
.end method

.method public setUsesIncreasedCollapsedHeight(Z)V
    .locals 0

    .line 1565
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0

    .line 1569
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    return-void
.end method

.method protected shouldClipToActualHeight()Z
    .locals 1

    .line 2137
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .line 891
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

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

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1694
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    return-void
.end method

.method public showingPulsing()Z
    .locals 1

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startChildAnimation(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 1

    .line 947
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 948
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->startAnimationToState(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    :cond_0
    return-void
.end method

.method public topAmountNeedsClipping()Z
    .locals 3

    .line 3064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3067
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3070
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->shouldClipToRounding(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3074
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public updateBackgroundForGroupState()V
    .locals 4

    .line 2858
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2860
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowGroupBackgroundWhenExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2861
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2862
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    .line 2863
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    .line 2864
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 2865
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2867
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getBackgroundColorForExpansionState()I

    move-result v0

    .line 2871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2872
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2873
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    xor-int/lit8 v0, v2, 0x1

    .line 2874
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    goto :goto_2

    .line 2877
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2879
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->updateOutline()V

    .line 2880
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    return-void
.end method

.method protected updateBackgroundTint()V
    .locals 2

    .line 2834
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundTint()V

    .line 2835
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2837
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 2838
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 2839
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2840
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2841
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateBubbleButton()V
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 591
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateBubbleButton(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .line 2410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2411
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    :cond_0
    return-void
.end method

.method public updateChildrenStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 927
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    return-void
.end method

.method protected updateContentTransformation()V
    .locals 1

    .line 1517
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 1520
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateContentTransformation()V

    return-void
.end method

.method public updateNotificationColor()V
    .locals 4

    .line 1291
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1292
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1295
    :goto_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1296
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    .line 1297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v3

    .line 1295
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mNotificationColor:I

    return-void
.end method

.method updateShelfIconColor()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 598
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v2, Lcom/android/systemui/R$id;->icon_is_pre_L:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 600
    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    .line 599
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    move-result v2

    .line 605
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    return-void
.end method

.method public wasChildInGroupWhenRemoved()Z
    .locals 0

    .line 1381
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    return p0
.end method

.method public wasJustClicked()Z
    .locals 0

    .line 1030
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mJustClicked:Z

    return p0
.end method
