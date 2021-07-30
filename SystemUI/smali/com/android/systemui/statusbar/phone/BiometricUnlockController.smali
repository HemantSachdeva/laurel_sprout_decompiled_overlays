.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;,
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;
    }
.end annotation


# static fields
.field private static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mFadedAwayAfterWakeAndUnlock:Z

.field private mFpiState:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

.field private final mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMode:I

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

.field private mPendingShowBouncer:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeUpDelay:I

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p10

    move-object/from16 v3, p12

    .line 262
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v4, 0x0

    .line 164
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 292
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    .line 678
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 689
    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 263
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 264
    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    move-object v1, p6

    .line 265
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 266
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p13

    .line 267
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 268
    invoke-virtual {p10, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 269
    const-class v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 270
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 271
    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 272
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-object v1, p7

    .line 274
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-object v1, p2

    .line 275
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object v1, p3

    .line 276
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v1, p4

    .line 277
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v1, p5

    .line 278
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v1, p8

    .line 279
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p9

    .line 280
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    const v1, 0x10e00cd

    move-object/from16 v2, p11

    .line 281
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    .line 282
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 283
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    move-object/from16 v1, p14

    .line 284
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 285
    const-class v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p15

    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I
    .locals 1

    .line 527
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForFingerprint(Z)I

    move-result p0

    return p0

    .line 529
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForPassiveAuth(Z)I

    move-result p0

    return p0
.end method

.method private calculateModeForFingerprint(Z)I
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 537
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_4

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p1, :cond_3

    .line 545
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->bouncerIsOrWillBeShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    if-eqz p1, :cond_7

    const/4 p0, 0x5

    return p0

    .line 559
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private calculateModeForPassiveAuth(Z)I
    .locals 6

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 568
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    .line 571
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v2, :cond_7

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :cond_1
    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    return v3

    .line 576
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    move v4, p1

    :cond_4
    return v4

    :cond_5
    if-eqz v1, :cond_6

    return p1

    :cond_6
    return v4

    :cond_7
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    const/4 v4, 0x6

    :cond_8
    return v4

    .line 593
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->bouncerIsOrWillBeShowing()Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-eqz v1, :cond_a

    .line 595
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canPlaySubtleWindowAnimations()Z

    move-result p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    const/16 p0, 0x8

    return p0

    :cond_b
    if-eqz p1, :cond_e

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isFaceUnlockWithSwip()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x5

    return p0

    :cond_c
    if-eqz v1, :cond_d

    move v5, v2

    :cond_d
    return v5

    :cond_e
    if-eqz v1, :cond_f

    goto :goto_1

    :cond_f
    move v3, v5

    :goto_1
    return v3

    :cond_10
    return v5
.end method

.method private cleanup()V
    .locals 0

    .line 648
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method private isFaceUnlockWithSwip()Z
    .locals 2

    .line 613
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "unlock_settings_with_swip"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$onFinishedGoingToSleep$1(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 2

    .line 506
    iget v0, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method

.method private synthetic lambda$startWakeAndUnlock$0(ZZ)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "BiometricUnlockCtrl"

    const-string v0, "bio wakelock: Authenticated, waking up..."

    .line 407
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "android.policy:BIOMETRIC"

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 413
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    :cond_1
    const-string p1, "release wake-and-unlock"

    .line 415
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 417
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private pulsingOrAod()Z
    .locals 1

    .line 340
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    .line 341
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

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

.method private releaseBiometricWakeLock()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "BiometricUnlockCtrl"

    const-string v1, "releasing biometric wakelock"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resetMode()V
    .locals 2

    const/4 v0, 0x0

    .line 670
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 671
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceDozeBrightness(Z)V

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 675
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    return-void
.end method

.method private showBouncer()V
    .locals 4

    .line 485
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v2, 0x1

    const v3, 0x3f8ccccd    # 1.1f

    invoke-interface {v0, v1, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZF)V

    .line 490
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return-void
.end method

.method private toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 1

    .line 744
    sget-object p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, " BiometricUnlockController:"

    .line 703
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   mMode="

    .line 704
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "   mWakeLock="

    .line 705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    return-void
.end method

.method public getMode()I
    .locals 0

    .line 522
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    return p0
.end method

.method public hasPendingAuthentication()Z
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    .line 517
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 518
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBiometricUnlock()Z
    .locals 1

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

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

.method public isWakeAndUnlock()Z
    .locals 2

    .line 712
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$onFinishedGoingToSleep$1$BiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$onFinishedGoingToSleep$1(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    return-void
.end method

.method public synthetic lambda$startWakeAndUnlock$0$BiometricUnlockController(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$startWakeAndUnlock$0(ZZ)V

    return-void
.end method

.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    const-string v0, "BiometricUnlockController#onBiometricAcquired"

    .line 315
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 320
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x6

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "wake-and-unlock:wakelock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "acquiring wake-and-unlock"

    .line 327
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 329
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "BiometricUnlockCtrl"

    const-string v0, "biometric acquired, grabbing biometric wakelock"

    .line 331
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xb

    .line 619
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 618
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 620
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 621
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    .line 623
    sget-object p1, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    const-string v0, "BiometricUnlockController#onBiometricAuthenticated"

    .line 348
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;-><init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 352
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xa

    .line 356
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 359
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 360
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->canSwitchUser(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 363
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->onKeyguardHide()V

    goto :goto_0

    .line 366
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 371
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 372
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 374
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 376
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 377
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_1

    :cond_3
    const-string p0, "BiometricUnlockCtrl"

    const-string p1, "onBiometricAuthenticated aborted by bypass controller"

    .line 379
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 629
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xf

    .line 630
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 631
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6cd

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 629
    invoke-virtual {p2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 632
    sget-object p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 633
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;

    invoke-direct {v0, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    .line 636
    sget-object p2, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    if-eq p2, p3, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 640
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const p2, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 643
    :cond_1
    sget-object p1, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    const-string p1, "BiometricUnlockController#onFinishedGoingToSleep"

    .line 502
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 503
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz p1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 509
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 511
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    const/4 p1, 0x0

    .line 496
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    return-void
.end method

.method public setKeyguardViewController(Lcom/android/keyguard/KeyguardViewController;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWakeAndUnlock(I)V
    .locals 6

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWakeAndUnlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUnlockCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 391
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->pulsingOrAod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceDozeBrightness(Z)V

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v3

    const/4 v4, 0x0

    if-ne p1, v2, :cond_1

    if-eqz v3, :cond_1

    .line 403
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v4

    .line 404
    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZZ)V

    if-nez p1, :cond_2

    .line 420
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v5, :cond_2

    .line 421
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 423
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    const-string p1, "MODE_DISMISS_BOUNCER or MODE_UNLOCK_FADING"

    .line 426
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v4}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 429
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "MODE_UNLOCK"

    .line 433
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarFocusable(Z)V

    .line 438
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 439
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :pswitch_3
    const-string p1, "MODE_UNLOCK_COLLAPSING or MODE_SHOW_BOUNCER"

    .line 443
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 445
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    goto :goto_1

    .line 447
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    .line 449
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :pswitch_4
    if-ne v5, v1, :cond_4

    const-string v0, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 455
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    goto :goto_2

    :cond_4
    if-ne v5, v2, :cond_5

    const-string v0, "MODE_WAKE_AND_UNLOCK"

    .line 459
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 461
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    .line 464
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotificationShadeFocusable(Z)V

    if-eqz p1, :cond_6

    .line 466
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 468
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 470
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 471
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 473
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 479
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    .line 480
    sget-object p1, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFpiState:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    .line 481
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public unlockedByWakeAndUnlock()Z
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

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
