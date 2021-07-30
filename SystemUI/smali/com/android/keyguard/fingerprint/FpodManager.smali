.class public Lcom/android/keyguard/fingerprint/FpodManager;
.super Landroid/os/Binder;
.source "FpodManager.java"


# static fields
.field private static sService:Lcom/android/keyguard/fingerprint/FpodManager;


# instance fields
.field private isGoingToSleep:Z

.field private mAuthFingerprintId:I

.field private mBouncer:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mEnableFastUnlock:Z

.field private mFingerprintLockout:Z

.field private mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

.field private mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

.field private mFpodUnlockMode:I

.field private mHandler:Landroid/os/Handler;

.field private mHasAuthCancelOnce:Z

.field private mHasEnterFindSensor:Z

.field private mIgnoreFocusChange:Z

.field private mIgnoreFocusRunnable:Ljava/lang/Runnable;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mKeyguardAuthen:Z

.field private mKeyguardShow:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mShouldShowFpodIconInKeyguard:Z

.field public mShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 298
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mAuthFingerprintId:I

    .line 36
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mBouncer:Z

    .line 37
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodManager$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodManager$1;-><init>(Lcom/android/keyguard/fingerprint/FpodManager;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodUnlockMode:I

    .line 74
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHasAuthCancelOnce:Z

    .line 81
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodManager$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodManager$2;-><init>(Lcom/android/keyguard/fingerprint/FpodManager;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    .line 179
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusChange:Z

    .line 180
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodManager$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodManager$3;-><init>(Lcom/android/keyguard/fingerprint/FpodManager;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusRunnable:Ljava/lang/Runnable;

    .line 187
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardAuthen:Z

    .line 189
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodManager$4;-><init>(Lcom/android/keyguard/fingerprint/FpodManager;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v1, 0x1

    .line 279
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    .line 281
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    .line 299
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    .line 300
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v2, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 301
    new-instance v2, Lcom/android/keyguard/fingerprint/FpodOverlayView;

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/fingerprint/FpodOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    .line 302
    new-instance v2, Lcom/android/keyguard/fingerprint/FpodIconView;

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/fingerprint/FpodIconView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    .line 303
    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fingerprint/FpodIconView;->setCollectFpodListener(Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;)V

    .line 304
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v2, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 306
    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 307
    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 308
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 309
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFingerprintLockout:Z

    .line 311
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v3, 0x80

    const-string v4, "fpod"

    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 312
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "cepheus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "grus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mEnableFastUnlock:Z

    goto :goto_2

    .line 313
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v3, "config_displayBlanksAfterDoze"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 314
    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 315
    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mEnableFastUnlock:Z

    .line 320
    :goto_2
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.android.systemui"

    .line 322
    invoke-direct {p0, v1, v0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->dealCallback(IILjava/lang/String;)I

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/fingerprint/FpodManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->dismissFpodView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodIconView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/fingerprint/FpodManager;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->getKeyguardAuthen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/fingerprint/FpodManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHasEnterFindSensor:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHasEnterFindSensor:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusChange:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mBouncer:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/fingerprint/FpodManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->ignoreFocusChangeForWhile()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/fingerprint/FpodManager;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/fingerprint/FpodOverlayView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/fingerprint/FpodManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardShow:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/fingerprint/FpodManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->isGoingToSleep:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->isGoingToSleep:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/fingerprint/FpodManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/fingerprint/FpodManager;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->setKeyguardAuthen(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/fingerprint/FpodManager;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->showFpodView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/fingerprint/FpodManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHasAuthCancelOnce:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/fingerprint/FpodManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHasAuthCancelOnce:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/fingerprint/FpodManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->scheduleResetFlag()V

    return-void
.end method

.method private dealCallback(IILjava/lang/String;)I
    .locals 3

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealCallback, cmd: "

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " param: "

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packagename: "

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/16 p2, 0x65

    if-eq p1, p2, :cond_1

    const/16 p2, 0x66

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3ec

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_1
    const-string p1, "com.android.settings.FingerprintEnrollFindSensor"

    .line 556
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHasEnterFindSensor:Z

    .line 558
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnterFindSensor(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "com.android.settings.FingerprintEnrollEnrolling"

    .line 559
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 562
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3ed

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 552
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3eb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 548
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x3ee

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 545
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/keyguard/fingerprint/FpodManager;->processVendorSucess(I)V

    goto :goto_1

    .line 541
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3ea

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_7
    const-string p1, "com.android.systemui"

    .line 531
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 532
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x3ef

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 535
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x3e9

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return v1
.end method

.method private dismissFpodView()V
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissFpodView: mShowed = "

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->dismiss()V

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->dismiss()V

    const/4 v0, 0x0

    .line 654
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    .line 655
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/keyguard/fingerprint/FpodManager;
    .locals 1

    .line 295
    sget-object v0, Lcom/android/keyguard/fingerprint/FpodManager;->sService:Lcom/android/keyguard/fingerprint/FpodManager;

    return-object v0
.end method

.method private declared-synchronized getKeyguardAuthen()Z
    .locals 1

    monitor-enter p0

    .line 669
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardAuthen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ignoreFocusChangeForWhile()V
    .locals 3

    const/4 v0, 0x1

    .line 673
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusChange:Z

    .line 674
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 287
    :try_start_0
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fingerprint/FpodManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/fingerprint/FpodManager;->sService:Lcom/android/keyguard/fingerprint/FpodManager;

    const-string p0, "android.app.fpod.CallbackService"

    .line 288
    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private processVendorSucess(I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 577
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->getKeyguardAuthen()Z

    move-result v0

    const/16 v1, 0x3ea

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getAuthUserId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 580
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->setFpodUnlockMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 584
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->setFpodUnlockMode(I)V

    .line 586
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->setFpodAuthFingerprintID(I)V

    .line 587
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mEnableFastUnlock:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isDozing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 588
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 593
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private scheduleResetFlag()V
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodManager$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodManager$6;-><init>(Lcom/android/keyguard/fingerprint/FpodManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized setFpodAuthFingerprintID(I)V
    .locals 0

    monitor-enter p0

    .line 404
    :try_start_0
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mAuthFingerprintId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setFpodUnlockMode(I)V
    .locals 0

    monitor-enter p0

    .line 400
    :try_start_0
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodUnlockMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setKeyguardAuthen(Z)V
    .locals 1

    monitor-enter p0

    .line 660
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardAuthen:Z

    .line 661
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardAuthen:Z

    if-eq v0, p1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->onKeyguardAuthen(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->onKeyguardAuthen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private showFpodView(Z)V
    .locals 2

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFpodView: lightIcon = "

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShowed = "

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldShowFpodIconInKeyguard = "

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardAuthen = "

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->getKeyguardAuthen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpod"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-nez v0, :cond_2

    .line 635
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->caculateFpodIconSize()V

    .line 637
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->show()V

    .line 638
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->getKeyguardAuthen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->show(Z)V

    :cond_1
    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    .line 642
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public cannotTouchDown(Z)Z
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dismissFpodIconView()V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->dismiss()V

    return-void
.end method

.method public dismissFpodIconView(Z)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissFpodIconView  dismiss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mShouldShowFpodIconInKeyguard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mKeyguardShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardShow:Z

    if-eqz v0, :cond_1

    .line 376
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->getKeyguardAuthen()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    if-eqz p1, :cond_0

    .line 379
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->dismiss()V

    goto :goto_0

    .line 381
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->show(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized getFpodAuthFingerprintID()I
    .locals 1

    monitor-enter p0

    .line 412
    :try_start_0
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mAuthFingerprintId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFpodUnlockMode()I
    .locals 1

    monitor-enter p0

    .line 408
    :try_start_0
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodUnlockMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eqz p0, :cond_0

    return-object p0

    .line 515
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getUnlockLockout()Z
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->getUnlockLockout()Z

    move-result p0

    return p0
.end method

.method public isBouncer()Z
    .locals 0

    .line 392
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mBouncer:Z

    return p0
.end method

.method public isEnrolling()Z
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->isEnrolling()Z

    move-result p0

    return p0
.end method

.method public isFodFastUnlock()Z
    .locals 2

    .line 424
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mEnableFastUnlock:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->getFpodUnlockMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFpodIconCanShow()Z
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnoreFocusChange()Z
    .locals 0

    .line 463
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mIgnoreFocusChange:Z

    return p0
.end method

.method public isShouldShowFpodIconInKeyguard()Z
    .locals 0

    .line 467
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    return p0
.end method

.method public isShowFingerprintIcon()Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->isShowFingerprintIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowFpodInBouncer()Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFingerprintLockout:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized isUnlockByFpod()Z
    .locals 3

    monitor-enter p0

    .line 417
    :try_start_0
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodUnlockMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodUnlockMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    .line 420
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onKeyguardHide()V
    .locals 2

    const-string v0, "FpodManager"

    const-string v1, "onKeyguardHide"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardShow:Z

    .line 366
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->dismissFpodView()V

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShouldShowFpodIconInKeyguard:Z

    return-void
.end method

.method public onKeyguardShow()V
    .locals 3

    const-string v0, "FpodManager"

    const-string v1, "onKeyguardShow"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardShow:Z

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->setFpodUnlockMode(I)V

    .line 355
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "FpodManager"

    const-string v1, "onTransact ... "

    .line 612
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 614
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "android.app.fpod.CallbackService"

    .line 616
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/android/keyguard/fingerprint/FpodManager;->dealCallback(IILjava/lang/String;)I

    move-result p0

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method public releaseDrawWackLock()V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public requestDrawWackLock()V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public requestDrawWackLock(J)V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public setKeyguardViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 507
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState()V

    return-void
.end method

.method public setTransparent()V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setTransparent()V

    return-void
.end method

.method public setUnlockLockout(Z)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->setUnlockLockout(Z)V

    return-void
.end method

.method public showBouncerForFOD(Z)V
    .locals 0

    .line 701
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showBouncerForFOD(Z)V

    :cond_0
    return-void
.end method

.method public showFpodInKeyguardWhenLockout()V
    .locals 2

    .line 432
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mShowed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mKeyguardShow:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->setEnrolling(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->setEnrolling(Z)V

    const/4 v0, 0x1

    .line 435
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->setKeyguardAuthen(Z)V

    .line 436
    invoke-direct {p0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->showFpodView(Z)V

    :cond_0
    return-void
.end method

.method public startDozing()V
    .locals 2

    const-string v0, "FpodManager"

    const-string v1, "startDozing"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->isGoingToSleep:Z

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->startDozing()V

    .line 339
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->startDozing()V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    const-string v0, "FpodManager"

    const-string v1, "stopDozing"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->isGoingToSleep:Z

    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->ignoreFocusChangeForWhile()V

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodOverlayView:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->stopDozing()V

    .line 348
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mFpodIconView:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->stopDozing()V

    return-void
.end method

.method public updateFpodState()V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFpodState()V

    :cond_0
    return-void
.end method

.method public updateFpodState(Z)V
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_0

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFpodState(Z)V

    :cond_0
    return-void
.end method
