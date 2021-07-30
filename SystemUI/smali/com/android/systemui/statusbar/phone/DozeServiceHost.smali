.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost;
.super Ljava/lang/Object;
.source "DozeServiceHost.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# instance fields
.field private mAmbientIndicationContainer:Landroid/view/View;

.field private mAnimateScreenOff:Z

.field private mAnimateWakeup:Z

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBiometricUnlockControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozingRequested:Z

.field private final mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIgnoreTouchWhilePulsing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

.field private final mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mPendingScreenOffCallback:Ljava/lang/Runnable;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mPulsing:Z

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mSuppressed:Z

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field mWakeLockScreenPerformsAuth:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeLog;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardViewMediator;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/DozeLog;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    const-string v1, "persist.sysui.wake_performs_auth"

    const/4 v2, 0x1

    .line 81
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakeLockScreenPerformsAuth:Z

    move-object v1, p1

    .line 126
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object v1, p2

    .line 127
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    move-object v1, p3

    .line 128
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v1, p4

    .line 129
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p5

    .line 130
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, p6

    .line 131
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v1, p7

    .line 132
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v1, p8

    .line 133
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v1, p9

    .line 134
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object v1, p10

    .line 135
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v1, p11

    .line 136
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAssistManagerLazy:Ldagger/Lazy;

    move-object v1, p12

    .line 137
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v1, p13

    .line 138
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p14

    .line 139
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object/from16 v1, p15

    .line 140
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v1, p16

    .line 141
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-object/from16 v1, p17

    .line 142
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private synthetic lambda$fireNotificationPulse$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setPulseSuppressed(Z)V

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelGentleSleep()V
    .locals 2

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    :cond_0
    return-void
.end method

.method public dozeTimeTick()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->dozeTimeTick()V

    .line 335
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v0, p0, Lcom/android/systemui/doze/DozeReceiver;

    if-eqz v0, :cond_0

    .line 336
    check-cast p0, Lcom/android/systemui/doze/DozeReceiver;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeReceiver;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method executePendingScreenOffCallback()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public extendPulse(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 369
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 372
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->extendHeadsUp()V

    goto :goto_0

    .line 374
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :goto_0
    return-void
.end method

.method public fireAodState(Z)V
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusbar && fireAodState isOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeServiceHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 509
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onFodInAodStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireFingerprintPressed(Z)V
    .locals 1

    .line 515
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 516
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onFingerprintPressed(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method fireNotificationPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DozeServiceHost$Xc4SX99X8IZoMaU0MD3jJJv7A3I;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 182
    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onNotificationAlerted(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method firePowerSaveChanged(Z)V
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 172
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getDozingRequested()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    return p0
.end method

.method getIgnoreTouchWhilePulsing()Z
    .locals 0

    .line 484
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    return p0
.end method

.method hasPendingScreenOffCallback()Z
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/View;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 157
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 158
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 159
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 160
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 161
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    return-void
.end method

.method public isBlockingDoze()Z
    .locals 1

    .line 359
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "StatusBar"

    const-string v0, "Blocking AOD because fingerprint has authenticated"

    .line 360
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDozeSuppressed()Z
    .locals 0

    .line 498
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSuppressed:Z

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 503
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    return p0
.end method

.method public isPowerSaveActive()Z
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isAodPowerSave()Z

    move-result p0

    return p0
.end method

.method public isProvisioned()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 354
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPulsing()Z
    .locals 0

    .line 191
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    return p0
.end method

.method public isPulsingBlocked()Z
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$fireNotificationPulse$0$DozeServiceHost(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->lambda$fireNotificationPulse$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onIgnoreTouchWhilePulsing(Z)V
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    if-eq p1, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseTouchDisabledByProx(Z)V

    .line 326
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 328
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    :cond_1
    return-void
.end method

.method public onSlpiTap(FF)V
    .locals 11

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 405
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 406
    aget v2, v1, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    const/4 v3, 0x1

    .line 407
    aget v1, v1, v3

    int-to-float v1, v1

    sub-float v1, p2, v1

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    move v6, p1

    move v7, p2

    .line 413
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 416
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v5, 0x1

    move-wide v1, v9

    .line 417
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 419
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void
.end method

.method public prepareForGentleSleep(Ljava/lang/Runnable;)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "DozeServiceHost"

    const-string v1, "Overlapping onDisplayOffCallback. Ignoring previous one."

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    .line 443
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 251
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p2, 0x4

    const-string v2, "com.android.systemui:LONG_PRESS"

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    :cond_1
    if-ne p2, v0, :cond_2

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakeLockScreenPerformsAuth:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 266
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;Z)V

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimateScreenOff(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateScreenOff:Z

    return-void
.end method

.method public setAnimateWakeup(Z)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 388
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setAodDimmingScrim(F)V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setAodFrontScrimAlpha(F)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setDozeScreenBrightness(I)V

    return-void
.end method

.method setDozeSuppressed(Z)V
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSuppressed:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 491
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSuppressed:Z

    .line 492
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 493
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onDozeSuppressedChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method shouldAnimateScreenOff()Z
    .locals 0

    .line 480
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateScreenOff:Z

    return p0
.end method

.method shouldAnimateWakeup()Z
    .locals 0

    .line 476
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAnimateWakeup:Z

    return p0
.end method

.method public startDozing()V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 212
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 216
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->isFpodIconCanShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->startDozing()V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFpodState()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    goto :goto_0

    .line 227
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    :goto_0
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Z)V

    .line 311
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 312
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->stopDozing()V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFpodState()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateDozing()V
    .locals 4

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 235
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    .line 236
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 240
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    .line 245
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setIsDozing(Z)Z

    return-void
.end method
