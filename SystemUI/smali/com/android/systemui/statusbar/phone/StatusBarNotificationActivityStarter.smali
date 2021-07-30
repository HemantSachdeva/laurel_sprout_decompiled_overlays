.class public Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;
    }
.end annotation


# instance fields
.field private final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private final mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIsCollapsingToShowActivityOverLockscreen:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/bubbles/BubbleController;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Landroid/app/KeyguardManager;",
            "Landroid/service/dreams/IDreamManager;",
            "Lcom/android/systemui/bubbles/BubbleController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            "Lcom/android/systemui/ActivityIntentHelper;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/NotificationPresenter;",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
            "Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 170
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 171
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p3

    .line 172
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    move-object v1, p4

    .line 173
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBackgroundHandler:Landroid/os/Handler;

    move-object v1, p5

    .line 174
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p6

    .line 175
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object v1, p7

    .line 176
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-object v1, p8

    .line 177
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-object v1, p9

    .line 178
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v1, p10

    .line 179
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p11

    .line 180
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    move-object v1, p12

    .line 181
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p13

    .line 182
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p14

    .line 183
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v1, p15

    .line 184
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v1, p16

    .line 185
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v1, p17

    .line 186
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p18

    .line 187
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p19

    .line 188
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v1, p20

    .line 189
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p21

    .line 190
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v1, p22

    .line 191
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p23

    .line 192
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    move-object/from16 v1, p24

    .line 193
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v1, p25

    .line 194
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    move-object/from16 v1, p26

    .line 195
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v1, p27

    .line 197
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object/from16 v2, p28

    .line 198
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v2, p29

    .line 199
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    move-object/from16 v2, p30

    .line 202
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v2, p31

    .line 203
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    move-object/from16 v2, p32

    .line 204
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-object/from16 v2, p33

    .line 205
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 207
    invoke-virtual/range {p27 .. p27}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/bubbles/BubbleController;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;)V
    .locals 0

    .line 92
    invoke-direct/range {p0 .. p33}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/bubbles/BubbleController;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method private collapseOnMainThread()V
    .locals 2

    .line 554
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$XDmf1V0qHGBRkx-V63RRNIpOXuQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$XDmf1V0qHGBRkx-V63RRNIpOXuQ;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private createRemoveRunnable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-object v0

    .line 626
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-object v0
.end method

.method private expandBubbleStackOnMainThread(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 402
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$_h_OdrtdsD1DAoz8Z6fGvw_e1JY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$_h_OdrtdsD1DAoz8Z6fGvw_e1JY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private getVisibleNotificationsCount()I
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result p0

    return p0

    .line 594
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    return p0
.end method

.method private handleFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldLaunchFullScreenIntentWhenAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logFullScreenIntentSuppressedByDnD(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logFullScreenIntentNotImportantEnough(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$m-3KhJtChx-E56Qa7kgUUXb_Dvg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$m-3KhJtChx-E56Qa7kgUUXb_Dvg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 522
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendingFullScreenIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const v1, 0x8ca2

    .line 526
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 528
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "note_fullscreen"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private handleNotificationClickAfterKeyguardDismissed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZZ)Z
    .locals 11

    move-object v9, p0

    move-object v2, p1

    .line 285
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logHandleClickAfterKeyguardDismissed(Ljava/lang/String;)V

    move-object v3, p2

    .line 288
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeHUN(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 290
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    .line 297
    new-instance v10, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$7mfSGy2G6exE-3cGRoA3iww8GIU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 v0, 0x1

    if-eqz p7, :cond_1

    .line 302
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1, v10}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 303
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    goto :goto_1

    .line 304
    :cond_1
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 305
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    .line 307
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    goto :goto_1

    .line 309
    :cond_2
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 311
    :goto_1
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private handleNotificationClickAfterPanelCollapsed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p7

    .line 322
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logHandleClickAfterPanelCollapsed(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 330
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p5, :cond_0

    .line 337
    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 338
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 339
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 343
    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 342
    invoke-virtual {v1, v0, v2, v9}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    return-void

    .line 352
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v10

    .line 354
    iget-object v0, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 357
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, p3

    invoke-virtual {p3, v9}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.remoteInputDraft"

    .line 358
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 361
    :goto_1
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 363
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logExpandingBubble(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->expandBubbleStackOnMainThread(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    :cond_3
    move-object v0, p0

    move-object/from16 v1, p4

    move-object v3, v10

    move-object v4, p2

    move/from16 v5, p6

    move/from16 v6, p5

    .line 366
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->startNotificationIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;ZZ)V

    :goto_2
    if-nez p5, :cond_4

    if-eqz v11, :cond_5

    .line 370
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 372
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    .line 376
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->getVisibleNotificationsCount()I

    move-result v0

    .line 377
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v1

    .line 379
    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v2

    const/4 v3, 0x1

    .line 380
    invoke-static {v9, v1, v0, v3, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    .line 382
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    invoke-virtual {v1, v9, v0}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    if-nez v11, :cond_9

    if-eqz v8, :cond_7

    .line 389
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 391
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 392
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    :cond_8
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_9
    const/4 v0, 0x0

    .line 398
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    return-void
.end method

.method private synthetic lambda$expandBubbleStackOnMainThread$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private synthetic lambda$handleFullScreenIntent$11()V
    .locals 0

    .line 514
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 516
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleNotificationClickAfterKeyguardDismissed$1(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 297
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleNotificationClickAfterPanelCollapsed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private synthetic lambda$onNotificationClicked$0(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZZ)Z
    .locals 0

    .line 265
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleNotificationClickAfterKeyguardDismissed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZZ)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$removeNotification$12(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 577
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->createRemoveRunnable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;

    move-result-object p1

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startHistoryIntent$10(Z)Z
    .locals 1

    .line 469
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$NR4zjJ04yK3NpRGWXZJ9rrgLbgs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$NR4zjJ04yK3NpRGWXZJ9rrgLbgs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$startHistoryIntent$8()V
    .locals 2

    .line 481
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private synthetic lambda$startHistoryIntent$9(Z)V
    .locals 4

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    if-eqz p1, :cond_0

    .line 470
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NOTIFICATION_HISTORY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2, v3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    :cond_1
    const/4 p1, 0x0

    .line 478
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 481
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tcd3QqprnX9WDunEJ_kl8_yebBQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$tcd3QqprnX9WDunEJ_kl8_yebBQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$startNotificationGutsIntent$4(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    .line 455
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeHUN(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$startNotificationGutsIntent$5()V
    .locals 2

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private synthetic lambda$startNotificationGutsIntent$6(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, p1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 448
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v1

    .line 447
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 446
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    .line 449
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 446
    invoke-virtual {p1, v0, v1}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result p1

    .line 452
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$ViMRehyVVsXvPyoP1D3vy85ebw0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$ViMRehyVVsXvPyoP1D3vy85ebw0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$hxUPIAWvV2tDwN2I-nnktj57KZU;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$hxUPIAWvV2tDwN2I-nnktj57KZU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$startNotificationGutsIntent$7(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 1

    .line 443
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$xP8kim0YLPcFXI52PtjDJXYHzZo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$startNotificationIntent$3(IZ)V
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    return-void
.end method

.method private removeHUN(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 490
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setIsClickedHeadsUpNotification(Landroid/view/View;Z)V

    .line 499
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method private removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$dfG4musWipZgmv_OJ-pU2CnBV14;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$dfG4musWipZgmv_OJ-pU2CnBV14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 543
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private shouldCollapse()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressFullScreenIntent()Z

    move-result p0

    return p0
.end method

.method private startNotificationIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;ZZ)V
    .locals 8

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0, p4, p5}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p4

    .line 419
    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logStartNotificationIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_0

    .line 422
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p3

    .line 424
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p5

    .line 423
    invoke-interface {p3, p5, p4}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 427
    invoke-static {p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    .line 426
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 428
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$Y8JbBTzeL9ap2ze1W8GE-AmENrw;

    invoke-direct {p3, p0, p1, p6}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$Y8JbBTzeL9ap2ze1W8GE-AmENrw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;IZ)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 434
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logSendingIntentFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isCollapsingToShowActivityOverLockscreen()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    return p0
.end method

.method public synthetic lambda$expandBubbleStackOnMainThread$2$StatusBarNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$expandBubbleStackOnMainThread$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$handleFullScreenIntent$11$StatusBarNotificationActivityStarter()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$handleFullScreenIntent$11()V

    return-void
.end method

.method public synthetic lambda$handleNotificationClickAfterKeyguardDismissed$1$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$handleNotificationClickAfterKeyguardDismissed$1(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZLcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$onNotificationClicked$0$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZZ)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$onNotificationClicked$0(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZZ)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$removeNotification$12$StatusBarNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$removeNotification$12(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$startHistoryIntent$10$StatusBarNotificationActivityStarter(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startHistoryIntent$10(Z)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$startHistoryIntent$8$StatusBarNotificationActivityStarter()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startHistoryIntent$8()V

    return-void
.end method

.method public synthetic lambda$startHistoryIntent$9$StatusBarNotificationActivityStarter(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startHistoryIntent$9(Z)V

    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$4$StatusBarNotificationActivityStarter(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationGutsIntent$4(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$5$StatusBarNotificationActivityStarter()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationGutsIntent$5()V

    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$6$StatusBarNotificationActivityStarter(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationGutsIntent$6(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$7$StatusBarNotificationActivityStarter(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationGutsIntent$7(Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$startNotificationIntent$3$StatusBarNotificationActivityStarter(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->lambda$startNotificationIntent$3(IZ)V

    return-void
.end method

.method public onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 13

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logStartingActivityFromClick(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v5

    .line 235
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 243
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    move-object v6, v1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    move-object v6, v0

    .line 246
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->logNonClickableNotification(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_3

    .line 256
    invoke-virtual {v6}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    move v7, v10

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    if-eqz v7, :cond_4

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 258
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 259
    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 258
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v10

    goto :goto_2

    :cond_4
    move v0, v1

    .line 260
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccluded()Z

    move-result v8

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 262
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 263
    invoke-interface {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    .line 262
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/ActivityIntentHelper;->wouldShowOverLockscreen(Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v11, v10

    goto :goto_3

    :cond_5
    move v11, v1

    .line 264
    :goto_3
    new-instance v12, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$Pyeef5xkti2nTtS5zKZgWAnZicA;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$Pyeef5xkti2nTtS5zKZgWAnZicA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;ZZZ)V

    if-eqz v11, :cond_6

    .line 269
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    .line 270
    invoke-interface {v12}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    goto :goto_4

    .line 272
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, v12, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :goto_4
    return-void
.end method

.method public startHistoryIntent(Z)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$f2bDNit2xXNDRfCYlJXzS9XHpSk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$f2bDNit2xXNDRfCYlJXzS9XHpSk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Z)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$isT7KSHgVoiV5FyhsR-VwbFw5RM;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$isT7KSHgVoiV5FyhsR-VwbFw5RM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method
