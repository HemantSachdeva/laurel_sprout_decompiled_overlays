.class public Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeTriggers$DockEventListener;,
        Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;,
        Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

.field private static sWakeDisplaySensorState:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationPulseTime:J

.field private final mProxCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

.field private mPulsePending:Z

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    .line 70
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    const/4 v0, 0x1

    .line 76
    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;ZLcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 14

    move-object v0, p0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 92
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    .line 100
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 580
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    move-object v1, p1

    .line 164
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    .line 165
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    move-object/from16 v2, p3

    .line 166
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v7, p5

    .line 167
    iput-object v7, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v6, p6

    .line 168
    iput-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v2, p7

    .line 169
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-object/from16 v8, p8

    .line 170
    iput-object v8, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move/from16 v2, p9

    .line 171
    iput-boolean v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 172
    new-instance v13, Lcom/android/systemui/doze/DozeSensors;

    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    new-instance v9, Lcom/android/systemui/doze/-$$Lambda$XuSeOmLZ56lHJGoIP26_sIwbcBM;

    invoke-direct {v9, p0}, Lcom/android/systemui/doze/-$$Lambda$XuSeOmLZ56lHJGoIP26_sIwbcBM;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    new-instance v10, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;

    invoke-direct {v10, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v11, p13

    move-object/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;)V

    iput-object v13, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 174
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    move-object/from16 v1, p10

    .line 175
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v1, p12

    .line 176
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    move-object/from16 v1, p13

    .line 177
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object/from16 v1, p14

    .line 178
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onNotification(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeHost;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method private canPulse()Z
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 495
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

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

.method private checkTriggersAtInit()V
    .locals 4

    .line 429
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const/4 v1, 0x3

    const-string v2, "DozeTriggers"

    if-eqz v0, :cond_1

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ui mode type is car : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is power save activite : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is blocking doze : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is provision : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 439
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->isFpodIconCanShow()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 440
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 441
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_5

    .line 443
    :cond_3
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "request state to finish in checkTriggersAtInit"

    .line 444
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_5
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 2

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    return-void

    .line 502
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 503
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 502
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    return-void
.end method

.method private gentleWakeUp(I)V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0xdf

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x6

    .line 292
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 293
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 294
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/doze/DozeTriggers;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 295
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$vBVHjIDgps_phZpQ4QNJ6P1upak;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/-$$Lambda$vBVHjIDgps_phZpQ4QNJ6P1upak;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 296
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->wakeUp()V

    return-void
.end method

.method private synthetic lambda$onSensor$1(ZZFFIZLjava/lang/Boolean;)V
    .locals 0

    if-eqz p7, :cond_0

    .line 263
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    .line 273
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    goto :goto_1

    .line 275
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, p5}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p2, p3, p1

    if-eqz p2, :cond_4

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_4

    .line 269
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1, p3, p4}, Lcom/android/systemui/doze/DozeHost;->onSlpiTap(FF)V

    .line 271
    :cond_4
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onWakeScreen$2(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 354
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 358
    :cond_0
    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, p2, :cond_1

    .line 359
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 361
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x1

    .line 362
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x7

    .line 363
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$proximityCheckThenCall$0(JILjava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 4

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 230
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-nez p5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_0
    sub-long/2addr v0, p1

    .line 230
    invoke-virtual {v2, v3, v0, v1, p3}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(ZJI)V

    .line 234
    invoke-interface {p4, p5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 235
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string p1, "DozeTriggers"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestPulse$3(Ljava/lang/Runnable;ILjava/lang/Boolean;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 475
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 477
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p3, "inPocket"

    invoke-virtual {p2, p3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 478
    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 479
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$ulqUMEXi8OgK7771oZ9BOr21BBk(Lcom/android/systemui/doze/DozeTriggers;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onProximityFar(Z)V

    return-void
.end method

.method private onNotification(Ljava/lang/Runnable;)V
    .locals 2

    .line 187
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string v0, "requestNotificationPulse"

    .line 188
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez v0, :cond_1

    const-string v0, "Wake display false. Pulse denied."

    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p1, "wakeDisplaySensor"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 197
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p1, "pulseOnNotificationsDisabled"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isDozeSuppressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 204
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p1, "dozeSuppressed"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    .line 209
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse()V

    return-void
.end method

.method private onProximityFar(Z)V
    .locals 8

    .line 309
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string p0, "onProximityFar called during transition. Ignoring sensor response."

    .line 310
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 315
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    .line 316
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 317
    :goto_0
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    .line 318
    :goto_1
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v7, :cond_3

    move v4, v5

    .line 320
    :cond_3
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v5, :cond_4

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v5, :cond_6

    .line 323
    :cond_4
    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prox changed, ignore touch = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeHost;->onIgnoreTouchWhilePulsing(Z)V

    :cond_6
    if-eqz p1, :cond_9

    if-nez v3, :cond_7

    if-eqz v6, :cond_9

    .line 330
    :cond_7
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "Prox FAR, unpausing AOD"

    .line 331
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 335
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_a

    const-string p1, "Prox NEAR, pausing AOD"

    .line 336
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->traceWakeDisplay(Z)V

    .line 350
    sput-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 353
    new-instance p1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$HZx5UzHarvs5L6-DXQmh-vvZFRQ;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    goto :goto_2

    .line 367
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 368
    :goto_0
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 370
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 372
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x2

    .line 373
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 374
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZI)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->isProximityCurrentlyNear()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 223
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 228
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    const-wide/16 v6, 0x1f4

    new-instance v8, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;

    move-object v0, v8

    move-object v1, p0

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7dHaL16-QO2EYQ_3R1TKZzEi3lA;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V

    invoke-virtual {p2, v6, v7, v8}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->check(JLjava/util/function/Consumer;)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string p1, "DozeTriggers"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestPulse(IZLjava/lang/Runnable;)V
    .locals 2

    .line 453
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 460
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    .line 464
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 474
    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$7efrn9gY-OB_Pbk9skV2oR0-AOE;-><init>(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;I)V

    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 484
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 474
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    .line 487
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    const/16 p3, 0xdf

    invoke-direct {p2, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p3, 0x6

    .line 488
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 487
    invoke-virtual {p0, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 489
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeTriggers;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/doze/-$$Lambda$vBVHjIDgps_phZpQ4QNJ6P1upak;

    invoke-direct {p2, p1}, Lcom/android/systemui/doze/-$$Lambda$vBVHjIDgps_phZpQ4QNJ6P1upak;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 465
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz p1, :cond_5

    .line 466
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 467
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 466
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    .line 469
    :cond_5
    invoke-static {p3}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runIfNotNull(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 214
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->destroy()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, " notificationPulseTime="

    .line 511
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pulsePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DozeSensors:"

    .line 515
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$onSensor$1$DozeTriggers(ZZFFIZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onSensor$1(ZZFFIZLjava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$onWakeScreen$2$DozeTriggers(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onWakeScreen$2(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$proximityCheckThenCall$0$DozeTriggers(JILjava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/doze/DozeTriggers;->lambda$proximityCheckThenCall$0(JILjava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$requestPulse$3$DozeTriggers(Ljava/lang/Runnable;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeTriggers;->lambda$requestPulse$3(Ljava/lang/Runnable;ILjava/lang/Boolean;)V

    return-void
.end method

.method onSensor(IFF[F)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    const/4 v4, 0x7

    if-ne p1, v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    const/16 v7, 0x8

    if-ne p1, v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v0

    :goto_5
    if-eqz p4, :cond_6

    .line 249
    array-length v8, p4

    if-lez v8, :cond_6

    aget p4, p4, v0

    const/4 v8, 0x0

    cmpl-float p4, p4, v8

    if-eqz p4, :cond_6

    move p4, v1

    goto :goto_6

    :cond_6
    move p4, v0

    :goto_6
    const/4 v8, 0x0

    if-eqz v4, :cond_8

    .line 252
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v8

    :goto_7
    invoke-direct {p0, p4, v8}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_8

    :cond_8
    if-eqz v3, :cond_9

    .line 254
    invoke-direct {p0, p1, v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_8

    :cond_9
    if-eqz v7, :cond_a

    if-eqz p4, :cond_b

    .line 258
    invoke-direct {p0, p1, v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_8

    .line 262
    :cond_a
    new-instance p4, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;

    move-object v3, p4

    move-object v4, p0

    move v7, p2

    move v8, p3

    move v9, p1

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$_9uGVeOllRSk5IFkZMhDAbIz6Gw;-><init>(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZ)V

    invoke-direct {p0, p4, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    :cond_b
    :goto_8
    if-eqz v2, :cond_d

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long/2addr p1, p3

    .line 283
    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 284
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_c

    move v0, v1

    .line 285
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeLog;->tracePickupWakeUp(Z)V

    :cond_d
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    .line 381
    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 417
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->unregister(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 418
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 419
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 420
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 421
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    goto :goto_1

    .line 411
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 414
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    goto :goto_1

    .line 406
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setTouchscreenSensorsListening(Z)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 408
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    goto :goto_1

    .line 400
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 401
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    goto :goto_1

    .line 391
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 392
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 393
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    .line 394
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez p1, :cond_1

    .line 395
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_1

    .line 383
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->register(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 384
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 385
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 386
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->checkTriggersAtInit()V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
