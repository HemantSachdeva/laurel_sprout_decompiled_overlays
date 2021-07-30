.class public Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mBlockUpdates:Z

.field private mBouncerShowingScrimmed:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDocked:Z

.field private final mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardJustShown:Z

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastState:I

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShowingLaunchAffordance:Z

.field private mSimLocked:Z

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeAndUnlockRunning:Z

.field private final mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarState:I

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$YwLkB4yDF5Gwcj5NX5hNSw8eA7E;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$YwLkB4yDF5Gwcj5NX5hNSw8eA7E;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 251
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 284
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$7;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 333
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 334
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 335
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 336
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 337
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 338
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 339
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 340
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 341
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 342
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-nez p11, :cond_0

    .line 343
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p11}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    .line 344
    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 345
    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mResources:Landroid/content/res/Resources;

    .line 346
    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 348
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockIconController(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Ljava/util/Optional;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/dock/DockManager$DockEventListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setDozing(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setPulsing(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setStatusBarState(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/content/res/Resources;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)I
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method private canBlockUpdates()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

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

.method private getState()I
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    const-string v1, "LockscreenLockIconController"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 499
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 500
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 501
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    if-nez v0, :cond_1

    const-string v0, "getState  STATE_LOCK_OPEN"

    .line 502
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState  canDismissLockScreen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState  isShowing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState  isKeyguardGoingAway: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState  isKeyguardFadingAway: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 508
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mTransientBiometricsError:Z

    if-eqz v0, :cond_2

    const-string p0, "getState  STATE_BIOMETRICS_ERROR"

    .line 509
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 512
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "getState  STATE_SCANNING_FACE"

    .line 513
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string p0, "getState  STATE_LOCKED"

    .line 516
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private handleClick(Landroid/view/View;)V
    .locals 1

    .line 468
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    .line 469
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private handleLongClick(Landroid/view/View;)Z
    .locals 2

    .line 454
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 456
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_disabled:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 459
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$LslFmHw3JlLgJluLcqL2mxJusEk(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->handleLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$w6uFCwNQV4Mtc7oy2-mEXXG52_I(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method private setDozing(Z)V
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method private setPulsing(Z)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarState:I

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    return-void
.end method

.method private update()V
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update(Z)V

    return-void
.end method

.method private update(Z)V
    .locals 5

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result v0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockscreenLockIconController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 484
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->canBlockUpdates()Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 487
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 489
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    .line 488
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(IZZZ)V

    .line 491
    :cond_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    .line 492
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateClickability()V

    return-void
.end method

.method private updateClickability()V
    .locals 5

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 579
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 581
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    .line 582
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v4, :cond_5

    .line 583
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 584
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_5
    return-void
.end method

.method private updateIconVisibility()Z
    .locals 5

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 541
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDocked:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 542
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShowingLaunchAffordance:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 544
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result v3

    .line 545
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerShowingScrimmed:Z

    if-nez v4, :cond_5

    .line 546
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 547
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarState:I

    if-ne v3, v2, :cond_8

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 549
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 555
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_3
    move v0, v2

    goto :goto_4

    .line 561
    :cond_6
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    if-ne v3, v2, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 562
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v3

    if-nez v3, :cond_8

    move v0, v1

    .line 567
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-nez p0, :cond_9

    return v1

    :cond_9
    xor-int/2addr v0, v2

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    .line 357
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 359
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$w6uFCwNQV4Mtc7oy2-mEXXG52_I;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$w6uFCwNQV4Mtc7oy2-mEXXG52_I;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$LslFmHw3JlLgJluLcqL2mxJusEk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$LslFmHw3JlLgJluLcqL2mxJusEk;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 361
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 363
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-interface {p1, v0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 367
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setStatusBarState(I)V

    return-void
.end method

.method public onBiometricAuthModeChanged(ZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 402
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->canBlockUpdates()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 404
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public onScrimVisibilityChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 380
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 413
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShowingLaunchAffordance:Z

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public setBouncerShowingScrimmed(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerShowingScrimmed:Z

    .line 420
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    :cond_0
    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .locals 0

    .line 436
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mTransientBiometricsError:Z

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public updateLockIcon()V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(IZZZ)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility(Z)Z

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility(Z)Z

    :cond_0
    return-void
.end method
