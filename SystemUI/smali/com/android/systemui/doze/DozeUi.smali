.class public Lcom/android/systemui/doze/DozeUi;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field private final mCanAnimateTransition:Z

.field private final mContext:Landroid/content/Context;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;

.field private mKeyguardShowing:Z

.field private final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastTimeTickElapsed:J

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeLog;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/doze/DozeUi$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeUi$1;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 71
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 73
    iput-object p4, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 74
    iput-object p5, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 75
    iput-object p6, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    .line 77
    iput-object p7, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 78
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p3, Lcom/android/systemui/doze/-$$Lambda$DozeUi$FO90hbI6xqXYUh2DtwuwM-uzJzs;

    invoke-direct {p3, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeUi$FO90hbI6xqXYUh2DtwuwM-uzJzs;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    const-string p4, "doze_time_tick"

    invoke-direct {p1, p2, p3, p4, p6}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p8, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 80
    iput-object p9, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/doze/DozeUi;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method public static synthetic lambda$FO90hbI6xqXYUh2DtwuwM-uzJzs(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->onTimeTick()V

    return-void
.end method

.method static synthetic lambda$onTimeTick$0()V
    .locals 0

    return-void
.end method

.method private onTimeTick()V
    .locals 3

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v2, Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;->INSTANCE:Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    return-void
.end method

.method private pulseWhileDozing(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeUi$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/DozeUi$2;-><init>(Lcom/android/systemui/doze/DozeUi;I)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private roundToNextMinute(J)J
    .locals 0

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 206
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    .line 207
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 208
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/4 p2, 0x1

    .line 209
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 211
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private scheduleTimeTick()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeUi;->roundToNextMinute(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 180
    iget-object v4, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    add-long/2addr v2, v0

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->traceTimeTickScheduled(JJ)V

    .line 184
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    return-void
.end method

.method private unscheduleTimeTick()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    return-void
.end method

.method private updateAnimateScreenOff()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 90
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateScreenOff(Z)V

    :cond_1
    return-void
.end method

.method private updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 157
    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 168
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    :goto_1
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private verifyLastTimeTick()V
    .locals 4

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeLog;->traceMissedTick(Ljava/lang/String;)V

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missed AOD time tick by "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DozeMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    .line 122
    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getPulseReason()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeUi;->pulseWhileDozing(I)V

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    .line 135
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    goto :goto_0

    .line 125
    :pswitch_5
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;

    invoke-direct {v2, v1}, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 153
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeUi;->updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
