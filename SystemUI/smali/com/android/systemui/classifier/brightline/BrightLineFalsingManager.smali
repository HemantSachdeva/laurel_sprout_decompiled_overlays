.class public Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;,
        Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RECENT_INFO_LOG:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENT_SWIPES:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/brightline/FalsingClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mIsFalseTouchCalls:I

.field private mJustUnlockedWithFace:Z

.field private final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPreviousResult:Z

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private mScreenOn:Z

.field private mSensorEventListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

.field private mSessionStarted:Z

.field private mShowingAod:Z

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FalsingManager"

    const/4 v1, 0x3

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->DEBUG:Z

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$DCb2WK5QgVL78Az07qEbZU0x84o;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$DCb2WK5QgVL78Az07qEbZU0x84o;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    .line 81
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mPreviousResult:Z

    .line 95
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$2;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 110
    iput-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 112
    iput-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 113
    iput-object p5, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 114
    iput-object p6, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 115
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mState:I

    .line 119
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    .line 121
    new-instance p1, Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p1, p2, p4}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    .line 123
    new-instance p2, Lcom/android/systemui/classifier/brightline/ProximityClassifier;

    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    .line 125
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p5, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;

    iget-object p6, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p5, p6}, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p5, Lcom/android/systemui/classifier/brightline/TypeClassifier;

    iget-object p6, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p5, p6}, Lcom/android/systemui/classifier/brightline/TypeClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p5, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;

    iget-object p6, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p5, p6, p4}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateSessionActive()V

    return-void
.end method

.method public static synthetic lambda$DCb2WK5QgVL78Az07qEbZU0x84o(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method private synthetic lambda$isFalseTouch$0(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z
    .locals 5

    .line 196
    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isFalseTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getInteractionType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "{classifier=%s, interactionType=%d}"

    .line 198
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 205
    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$isFalseTouch$1(Landroid/view/MotionEvent;)Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;
    .locals 7

    .line 221
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;

    .line 222
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 223
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 224
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int p0, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;-><init>(III)V

    return-object v0
.end method

.method static synthetic lambda$onProximityEvent$3(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .locals 0

    .line 246
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method static synthetic lambda$onTouchEvent$2(Landroid/view/MotionEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .locals 0

    .line 240
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-static {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 458
    sget-boolean v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FalsingManager"

    .line 459
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FalsingManager"

    .line 464
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 466
    :goto_0
    sget-object p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    const/16 v0, 0x28

    if-le p0, v0, :cond_0

    .line 467
    sget-object p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onProximityEvent(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$_d89p1tVOz6Jf4LOgqm74DRgw1s;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$_d89p1tVOz6Jf4LOgqm74DRgw1s;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private registerSensors()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->register(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)Z

    return-void
.end method

.method private sessionEnd()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "Ending Session"

    .line 153
    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->onSessionEnd()V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    sget-object v2, Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 158
    iget v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    if-eqz v1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "falsing_failure_after_attempts"

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 160
    iput v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    :cond_0
    return-void
.end method

.method private sessionStart()V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Starting Session"

    .line 143
    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->registerSensors()V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mState:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mShowingAod:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private unregisterSensors()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregister(Lcom/android/systemui/util/sensors/ProximitySensor$ProximitySensorListener;)V

    return-void
.end method

.method private updateInteractionType(I)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->setInteractionType(I)V

    return-void
.end method

.method private updateSessionActive()V
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionStart()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 413
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "BRIGHTLINE FALSING MANAGER"

    .line 414
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "classifierEnabled="

    .line 415
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->isClassifierEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string p1, "mJustUnlockedWithFace="

    .line 417
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string p1, "isDocked="

    .line 419
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p1}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string p1, "width="

    .line 421
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getWidthPixels()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string p1, "height="

    .line 423
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getHeightPixels()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 425
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 426
    sget-object p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Recent swipes:"

    .line 427
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 429
    sget-object p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;

    .line 430
    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_1

    :cond_1
    const-string p0, "No recent swipes"

    .line 435
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 437
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p0, "Recent falsing info:"

    .line 438
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 440
    sget-object p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 441
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 443
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public isClassifierEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFalseTouch()Z
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-boolean p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mPreviousResult:Z

    return p0

    .line 194
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 195
    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$a2Ll-_HVGMZ_iA7riIG6wQYElYM;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$a2Ll-_HVGMZ_iA7riIG6wQYElYM;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mPreviousResult:Z

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is false touch? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mPreviousResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 215
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_3

    .line 217
    :cond_2
    sget-object v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mPreviousResult:Z

    iget-object v3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 219
    invoke-virtual {v3}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getInteractionType()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 220
    invoke-virtual {v4}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 225
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;-><init>(ZILjava/util/List;)V

    .line 217
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_1
    sget-object v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_3

    .line 227
    sget-object v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;

    goto :goto_1

    .line 232
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mPreviousResult:Z

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$isFalseTouch$0$BrightLineFalsingManager(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$isFalseTouch$0(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z

    move-result p0

    return p0
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 325
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->registerSensors()V

    :cond_0
    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 0

    return-void
.end method

.method public onNotificationStartDismissing()V
    .locals 1

    const/4 v0, 0x1

    .line 392
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificationStopDismissing()V
    .locals 0

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 1

    const/4 v0, 0x2

    .line 270
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 0

    return-void
.end method

.method public onQsDown()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateSessionActive()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateSessionActive()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 1

    const/16 v0, 0x9

    .line 335
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 3

    .line 251
    iget v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "falsing_success_after_attempts"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 0

    .line 239
    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 240
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;

    invoke-direct {p2, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {p0, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 308
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .locals 0

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    goto :goto_0

    .line 296
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-eqz p1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->registerSensors()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mShowingAod:Z

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateSessionActive()V

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
