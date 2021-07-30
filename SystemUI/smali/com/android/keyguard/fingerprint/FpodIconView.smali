.class public Lcom/android/keyguard/fingerprint/FpodIconView;
.super Landroid/widget/FrameLayout;
.source "FpodIconView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/keyguard/fingerprint/FpodQuickOpenView$DismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;
    }
.end annotation


# static fields
.field private static AOD_DOZE_SUSPEND_DELAY:J = 0x32L

.field private static TYPE_MOVE_DETECT_SENSOR:I = 0x1fa2656


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthFailedSignal:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckLockoutTimeSuccess:Z

.field private mCollectFpodListener:Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;

.field private mDetectMoveRunable:Ljava/lang/Runnable;

.field private mDeviceMoving:Z

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mDozeShowIconTimeout:Z

.field private mDozing:Z

.field private mEnrolling:Z

.field private mFingerprintLockout:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

.field private mFpodIconHeight:I

.field private mFpodIconTransparent:Z

.field private mFpodIconWidth:I

.field private mFpodIconX:I

.field private mFpodIconY:I

.field private mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

.field private mGotoUnlockRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackEnabled:Z

.field private mHasPressureSensor:Z

.field private mHighlightView:Landroid/view/View;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsKeepMoveTimeout:Z

.field private mIsPSensorCovered:Z

.field private mKeepMoveHandle:Landroid/os/Handler;

.field private mKeyguardAuthen:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastStableTime:Ljava/util/Date;

.field private mMoveSensorListener:Landroid/hardware/SensorEventListener;

.field private mNeedVibrator:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPortraitOrientation:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPressureValue:I

.field private mPsensorListener:Landroid/hardware/SensorEventListener;

.field private mResetUnlockRun:Ljava/lang/Runnable;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowed:Z

.field private mTimePeriod:J

.field private mTouchDown:Z

.field private mUnlockLockout:Z

.field private final mVibrationObserver:Landroid/database/ContentObserver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 122
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 123
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 424
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAuthFailedSignal:Z

    .line 74
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodIconView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$1;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    const/4 v1, 0x2

    .line 91
    iput v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayState:I

    .line 92
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCheckLockoutTimeSuccess:Z

    .line 99
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodIconView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$2;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mGotoUnlockRunnable:Ljava/lang/Runnable;

    .line 108
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    .line 112
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodIconView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$3;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHapticFeedbackEnabled:Z

    .line 126
    new-instance v2, Lcom/android/keyguard/fingerprint/FpodIconView$4;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/fingerprint/FpodIconView$4;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mVibrationObserver:Landroid/database/ContentObserver;

    .line 137
    new-instance v2, Lcom/android/keyguard/fingerprint/FpodIconView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$5;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 241
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mNeedVibrator:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    .line 247
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPressureValue:I

    .line 251
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsPSensorCovered:Z

    .line 252
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodIconView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$6;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mMoveSensorListener:Landroid/hardware/SensorEventListener;

    .line 343
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodIconView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$8;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPsensorListener:Landroid/hardware/SensorEventListener;

    .line 360
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeepMoveHandle:Landroid/os/Handler;

    .line 361
    new-instance v1, Lcom/android/keyguard/fingerprint/FpodIconView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodIconView$9;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDetectMoveRunable:Ljava/lang/Runnable;

    .line 385
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    .line 386
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    .line 387
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mUnlockLockout:Z

    .line 389
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 410
    new-instance v0, Lcom/android/keyguard/fingerprint/-$$Lambda$FpodIconView$FLkV1MKgQ4cpOk4FCIa9cXOfN70;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fingerprint/-$$Lambda$FpodIconView$FLkV1MKgQ4cpOk4FCIa9cXOfN70;-><init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mResetUnlockRun:Ljava/lang/Runnable;

    .line 425
    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 426
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateHapticFeedBackEnabled()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAuthFailedSignal:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAuthFailedSignal:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHasPressureSensor:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHapticFeedbackEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/Vibrator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCheckLockoutTimeSuccess:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCheckLockoutTimeSuccess:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleLockoutResetForUser()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsPSensorCovered:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsPSensorCovered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->showFingerprintIcon()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->isSupportNewFodSensor()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsKeepMoveTimeout:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsKeepMoveTimeout:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/fingerprint/FpodIconView;)Ljava/util/Date;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mLastStableTime:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/fingerprint/FpodIconView;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mLastStableTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/fingerprint/FpodIconView;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTimePeriod:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/fingerprint/FpodIconView;J)J
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTimePeriod:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/fingerprint/FpodIconView;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDetectMoveRunable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeepMoveHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleSetIconTransparen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->dismissFingerpirntIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/PowerManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->showBouncer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/fingerprint/FpodIconView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/fingerprint/FpodIconView;)Lcom/android/keyguard/fingerprint/FpodAnimView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    return-object p0
.end method

.method private dismissFingerpirntIcon()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter dismissFingerprintIcon ..."

    .line 1015
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFpodIconTransparent()V

    .line 1017
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unscheduleSetIconTransparen()V

    return-void
.end method

.method private dispatchTouchEventForQuickOpenView(Landroid/view/MotionEvent;)V
    .locals 3

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->onTouchMove(FF)V

    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->onTouchUp(FF)V

    return-void

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconY:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->onTouchDown(FF)V

    return-void
.end method

.method private initFpodIconSize()V
    .locals 4

    .line 529
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 530
    sget v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 531
    sget v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconX:I

    .line 532
    sget v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconY:I

    .line 534
    sget v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconWidth:I

    .line 535
    sget v2, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconHeight:I

    .line 537
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 430
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->fpod_keyguard_icon_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 431
    sget v0, Lcom/android/systemui/R$id;->fpod_highlight:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHighlightView:Landroid/view/View;

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/keyguard/fingerprint/FpodAnimView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    .line 434
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    .line 435
    invoke-virtual {v0, p0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->setDismissListener(Lcom/android/keyguard/fingerprint/FpodQuickOpenView$DismissListener;)V

    .line 436
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPowerManager:Landroid/os/PowerManager;

    .line 439
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mVibrator:Landroid/os/Vibrator;

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->initFpodIconSize()V

    .line 441
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 442
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 443
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 444
    iget v0, v3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mScreenWidth:I

    .line 445
    iget v0, v3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mScreenHeight:I

    const/16 v0, 0x1300

    .line 446
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 447
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 448
    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 450
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 451
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action_set_icon_transparent"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIntentFilter:Landroid/content/IntentFilter;

    .line 452
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 453
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->hasPressureSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHasPressureSensor:Z

    .line 454
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    .line 455
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mVibrationObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 454
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 457
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mVibrationObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private isInValidRegion(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v1, -0x3d880000    # -62.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 811
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconWidth:I

    add-int/lit8 v1, v1, 0x3e

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconHeight:I

    add-int/lit8 p0, p0, 0x3e

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportNewFodSensor()Z
    .locals 1

    .line 1096
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCheckLockoutTimeSuccess:Z

    .line 412
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    :cond_0
    return-void
.end method

.method private onTouchDown()V
    .locals 5

    .line 819
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mLastStableTime:Ljava/util/Date;

    .line 820
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->turnOnAodIfScreenOff()V

    .line 821
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFpodIconOpaque()V

    .line 823
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->setCollecting(Z)V

    .line 825
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mEnrolling:Z

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/HBMFeatureControl;->setHBMMode(Z)V

    .line 826
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mUnlockLockout:Z

    if-eqz v0, :cond_2

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mGotoUnlockRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 829
    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    .line 830
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mNeedVibrator:Z

    .line 831
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 832
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 835
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 836
    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHighlightView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 837
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 838
    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v0, :cond_4

    .line 843
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    sget-wide v2, Lcom/android/keyguard/fingerprint/FpodIconView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fingerprint/FpodManager;->requestDrawWackLock(J)V

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCollectFpodListener:Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    if-nez v2, :cond_5

    .line 846
    invoke-interface {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;->onCollectStateChange(Z)V

    .line 848
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->saveShowTouchesState(Landroid/content/Context;)V

    .line 849
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHasPressureSensor:Z

    if-eqz v0, :cond_6

    .line 850
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 852
    :cond_6
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_7

    .line 853
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startRecognizingAnim()V

    .line 855
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->cleanLongPressTip()V

    return-void
.end method

.method private onTouchUp(Z)V
    .locals 4

    const-string v0, "FpodIconView2"

    const-string v1, "enter onTouchUp ..."

    .line 868
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mGotoUnlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->setCollecting(Z)V

    .line 872
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCollectFpodListener:Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;

    if-eqz v0, :cond_0

    .line 873
    invoke-interface {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;->onCollectStateChange(Z)V

    .line 876
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    const/4 v0, 0x1

    .line 877
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mNeedVibrator:Z

    .line 879
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 880
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->fireFingerprintPressed(Z)V

    .line 882
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 883
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    const v2, 0x3dcccccd    # 0.1f

    .line 886
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 887
    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHighlightView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 888
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v0, :cond_3

    .line 894
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    sget-wide v1, Lcom/android/keyguard/fingerprint/FpodIconView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/fingerprint/FpodManager;->requestDrawWackLock(J)V

    :cond_3
    if-eqz p1, :cond_4

    .line 896
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-eqz p1, :cond_4

    .line 897
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startBackAnim()V

    goto :goto_0

    .line 898
    :cond_4
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->isUnlockByFpod()Z

    move-result p1

    if-nez p1, :cond_6

    .line 899
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->stopAnim()V

    .line 901
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->stopTip()V

    .line 902
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->restoreShowTouchesState(Landroid/content/Context;)V

    .line 903
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private registerMoveSensor()V
    .locals 4

    const-string v0, "FpodIconView2"

    const-string v1, "enter registerMoveSensor ..."

    .line 912
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FpodIconView"

    const-string v2, "registerMoveSensor"

    .line 913
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    const-string p0, "move sensor not supported"

    .line 915
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 919
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMoveSensor && isFpodAodShowEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 921
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Lcom/android/keyguard/fingerprint/FpodIconView;->TYPE_MOVE_DETECT_SENSOR:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 923
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mMoveSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    const-string p0, "no move sensor"

    .line 925
    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerPSensor()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "FpodIconView"

    if-nez v0, :cond_0

    const-string p0, "sensor not supported"

    .line 955
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 959
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPsensorListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    const-string p0, "no Psensor"

    .line 964
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private removeView()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter removeView ..."

    .line 576
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    .line 581
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private requestWindowFocus()V
    .locals 4

    .line 1135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 1139
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    .line 1140
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    .line 1141
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private scheduleLockoutResetForUser()V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mResetUnlockRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleSetIconTransparen()V
    .locals 5

    const-string v0, "FpodIconView"

    const-string v1, "scheduleSetIconTransparen"

    .line 1003
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1005
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 1006
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    return-void
.end method

.method private setFpodIconOpaque()V
    .locals 3

    const-string v0, "FpodIconView2"

    const-string v1, "enter setFpodIconOpaque ..."

    .line 1041
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1042
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateFpodIconAlpha(F)V

    .line 1044
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCollectFpodListener:Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-eqz v2, :cond_0

    .line 1045
    invoke-interface {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;->onIconStateChange(Z)V

    .line 1048
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    return-void
.end method

.method private setFpodIconTransparent()V
    .locals 3

    const-string v0, "FpodIconView2"

    const-string v1, "enter setFpodIconTransparent ..."

    .line 1031
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1032
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateFpodIconAlpha(F)V

    .line 1033
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCollectFpodListener:Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-nez v2, :cond_0

    .line 1034
    invoke-interface {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;->onIconStateChange(Z)V

    .line 1036
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    .line 1037
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateDozeScreenState()V

    return-void
.end method

.method private showBouncer()V
    .locals 1

    .line 1091
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodManager;->showBouncerForFOD(Z)V

    return-void
.end method

.method private showFingerprintIcon()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter showFingerprintIcon ..."

    .line 1021
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v1, :cond_0

    const-string v1, "enter showFingerprintIcon as mDozing is true"

    .line 1023
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFpodIconOpaque()V

    .line 1025
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleSetIconTransparen()V

    .line 1026
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateDozeScreenState()V

    :cond_0
    return-void
.end method

.method private turnOffScreenIfInAod()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter turnOffScreenIfInAod ..."

    .line 1059
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 1061
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_2

    .line 1065
    :cond_1
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/doze/DozeHost;->fireAodState(Z)V

    :cond_2
    return-void
.end method

.method private turnOnAodIfScreenOff()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter turnOnAodIfScreenOff ..."

    .line 1070
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 1072
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    .line 1073
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/doze/DozeHost;->fireAodState(Z)V

    :cond_0
    return-void
.end method

.method private unRegisterBroadCast(Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1254
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FpodIconView"

    const-string p1, "Receiver is not register"

    .line 1256
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterMoveSensor()V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string p0, "FpodIconView"

    const-string v0, "move sensor not supported"

    .line 972
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 974
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mMoveSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method

.method private unregisterPSensor()V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string p0, "FpodIconView"

    const-string v0, "sensor not supported"

    .line 995
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPsensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 998
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsPSensorCovered:Z

    :goto_0
    return-void
.end method

.method private unscheduleSetIconTransparen()V
    .locals 2

    const-string v0, "FpodIconView"

    const-string v1, "unscheduleSetIconTransparen"

    .line 1010
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private updateDozeScreenState()V
    .locals 2

    .line 1193
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isAodEnable(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->turnOffScreenIfInAod()V

    goto :goto_0

    .line 1195
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-nez v0, :cond_1

    .line 1196
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->turnOnAodIfScreenOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFpodIconAlpha(F)V
    .locals 0

    .line 1078
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->setAlpha(F)V

    return-void
.end method

.method private updateHapticFeedBackEnabled()V
    .locals 4

    .line 1265
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method private updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    .line 1227
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    if-eqz v0, :cond_0

    .line 1228
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconX:I

    .line 1229
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconY:I

    .line 1230
    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconWidth:I

    .line 1231
    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconHeight:I

    goto :goto_0

    .line 1233
    :cond_0
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconX:I

    .line 1234
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconY:I

    .line 1235
    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconWidth:I

    .line 1236
    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconHeight:I

    .line 1240
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1241
    iget-boolean v5, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-nez v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 1242
    :cond_1
    iget-boolean v4, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mScreenWidth:I

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mScreenHeight:I

    :goto_1
    sub-int/2addr v4, v0

    sub-int v0, v4, v2

    .line 1243
    iget-boolean v4, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    if-eqz v4, :cond_3

    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mScreenHeight:I

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mScreenWidth:I

    :goto_2
    sub-int/2addr p0, v1

    sub-int v1, p0, v3

    .line 1245
    :cond_4
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1246
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1247
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1248
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updateOrientation(Z)V
    .locals 2

    .line 1210
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    .line 1212
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    .line 1216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 3

    .line 1082
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter dismiss ..."

    .line 541
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v1, :cond_3

    const-string v1, "start dismiss ..."

    .line 545
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFpodIconOpaque()V

    .line 551
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unregisterMoveSensor()V

    .line 553
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unregisterPSensor()V

    .line 554
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unscheduleSetIconTransparen()V

    .line 556
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->isUnlockByFpod()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenUtil;->isQuickOpenEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodManager;->getFpodAuthFingerprintID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->show(I)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->dismiss()V

    :goto_0
    const/4 v0, 0x0

    .line 561
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->onTouchUp(Z)V

    .line 562
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->isShow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->removeView()V

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->dismiss()V

    .line 566
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    .line 567
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    .line 568
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    .line 569
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 571
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mEnrolling:Z

    if-nez p0, :cond_3

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/HBMFeatureControl;->setHBMMode(Z)V

    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "FpodIconView2"

    const-string v1, "enter dispatchKeyEvent ..."

    .line 1100
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent: keycode = "

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action = "

    .line 1104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x162

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dispatchKeyEvent ... return as keycode is 0 "

    .line 1109
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1119
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsPSensorCovered:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodManager;->isFpodIconCanShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "dispatchKeyEvent ... showFingerprintIcon 2 "

    .line 1120
    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->showFingerprintIcon()V

    .line 1126
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz p1, :cond_2

    .line 1127
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->turnOnAodIfScreenOff()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public getUnlockLockout()Z
    .locals 0

    .line 688
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mUnlockLockout:Z

    return p0
.end method

.method public isEnrolling()Z
    .locals 0

    .line 675
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mEnrolling:Z

    return p0
.end method

.method public isShowFingerprintIcon()Z
    .locals 0

    .line 815
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$FpodIconView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->lambda$new$0()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1203
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1206
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateOrientation(Z)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 10

    if-nez p1, :cond_d

    .line 1157
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    .line 1158
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayState:I

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and newState : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FpodIconView"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FpodIconView2"

    invoke-static {v2, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    if-eq p1, v6, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    if-ne v0, v5, :cond_1

    .line 1163
    iget-boolean v7, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    if-eq v0, v6, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    if-ne p1, v5, :cond_3

    .line 1164
    iget-boolean v8, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-nez v8, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    if-ne v0, v3, :cond_4

    if-ne p1, v6, :cond_4

    .line 1168
    iget-boolean v9, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconTransparent:Z

    if-eqz v9, :cond_4

    move v1, v5

    :cond_4
    or-int/2addr v7, v8

    or-int/2addr v1, v7

    if-eqz v1, :cond_5

    .line 1170
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateDozeScreenState()V

    .line 1176
    :cond_5
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v1, :cond_c

    if-ne v0, v3, :cond_6

    if-eq p1, v6, :cond_a

    if-eq p1, v4, :cond_a

    :cond_6
    if-eq v0, v6, :cond_7

    if-ne v0, v4, :cond_8

    :cond_7
    if-eq p1, v3, :cond_9

    :cond_8
    if-eq v0, v5, :cond_9

    if-ne p1, v4, :cond_a

    .line 1177
    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    if-nez v1, :cond_a

    .line 1180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    if-ne v0, v3, :cond_c

    if-ne p1, v6, :cond_c

    :cond_b
    const-string v0, "onDisplayChanged : start showFingerprintIcon"

    .line 1182
    invoke-static {v2, v0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->showFingerprintIcon()V

    .line 1187
    :cond_c
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayState:I

    :cond_d
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 788
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 791
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 800
    invoke-direct {p0, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->onTouchUp(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 795
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 796
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->onTouchDown()V

    :cond_3
    :goto_0
    return v2
.end method

.method public onKeyguardAuthen(Z)V
    .locals 1

    .line 661
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    .line 662
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->onKeyguardAuthen(Z)V

    .line 664
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 667
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateOrientation(Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter onScreenTurnedOn ..."

    .line 645
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FpodIconView"

    const-string v1, "onScreenTurnedOn"

    .line 646
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 649
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/HBMFeatureControl;->setHBMMode(Z)V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    const-string v0, "FpodIconView2"

    const-string v1, "enter onStartedGoingToSleep ..."

    .line 655
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->dismiss()V

    .line 657
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->resetFingerID()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string p1, "FpodIconView2"

    const-string v0, "enter onTouch ..."

    .line 697
    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-direct {p0, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->dispatchTouchEventForQuickOpenView(Landroid/view/MotionEvent;)V

    .line 705
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, " onTouch ... mShowed return "

    .line 706
    invoke-static {p1, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 709
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v0, :cond_2

    .line 710
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleSetIconTransparen()V

    goto :goto_0

    .line 712
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->userActivity()V

    .line 714
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v3, ", mShowed = "

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    goto/16 :goto_1

    :cond_3
    const-string v0, "enter onTouch ...DOWN"

    .line 716
    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch down: mTouchDown = "

    .line 718
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-boolean v5, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget-boolean v5, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    invoke-virtual {v0, v5}, Lcom/android/keyguard/fingerprint/FpodManager;->cannotTouchDown(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 725
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->onTouchDown()V

    goto/16 :goto_1

    :cond_4
    const-string v0, "enter onTouch ...CANCEL"

    .line 730
    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPressureValue:I

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch up or cancel: mTouchDown = "

    .line 733
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-boolean v5, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-boolean v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v0, :cond_5

    .line 739
    invoke-direct {p0, v4}, Lcom/android/keyguard/fingerprint/FpodIconView;->onTouchUp(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "enter onTouch ...MOVE"

    .line 743
    invoke-static {p1, v0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p1

    const/high16 v0, 0x45000000    # 2048.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPressureValue:I

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "press value: , mPressureValue = "

    .line 746
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPressureValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    iget p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPressureValue:I

    const/16 v0, 0x46

    if-le p1, v0, :cond_8

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mNeedVibrator:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHasPressureSensor:Z

    if-eqz p1, :cond_8

    .line 751
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mEnrolling:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHapticFeedbackEnabled:Z

    if-eqz p1, :cond_6

    .line 753
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 755
    :cond_6
    iput-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mNeedVibrator:Z

    .line 756
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-eqz p1, :cond_7

    .line 757
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startRecognizingAnim()V

    .line 759
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/keyguard/fingerprint/FpodIconView;->isInValidRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mTouchDown:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz p1, :cond_9

    .line 762
    invoke-direct {p0, v4}, Lcom/android/keyguard/fingerprint/FpodIconView;->onTouchUp(Z)V

    :cond_9
    :goto_1
    return v4
.end method

.method public refreshIcon()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    invoke-virtual {v0, p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    return-void
.end method

.method public setCollectFpodListener(Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCollectFpodListener:Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;

    return-void
.end method

.method public setEnrolling(Z)V
    .locals 0

    .line 671
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mEnrolling:Z

    .line 672
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->setEnrolling(Z)V

    return-void
.end method

.method public setFingerprintLockout()V
    .locals 1

    const/4 v0, 0x1

    .line 1274
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFingerprintLockout:Z

    const/4 v0, 0x0

    .line 1275
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mCheckLockoutTimeSuccess:Z

    .line 1276
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleLockoutResetForUser()V

    return-void
.end method

.method public setOtherAppAuth(Z)V
    .locals 0

    return-void
.end method

.method public setTransparent()V
    .locals 0

    .line 1053
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFpodIconOpaque()V

    .line 1054
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleSetIconTransparen()V

    return-void
.end method

.method public setUnlockLockout(Z)V
    .locals 0

    .line 683
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mUnlockLockout:Z

    return-void
.end method

.method public show(Z)V
    .locals 9

    const-string v0, "FpodIconView2"

    const-string v1, "enter show ..."

    .line 461
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-nez v1, :cond_6

    .line 464
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mEnrolling:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/android/keyguard/fingerprint/HBMFeatureControl;->setHBMMode(Z)V

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodQuickOpenView:Lcom/android/keyguard/fingerprint/FpodQuickOpenView;

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodQuickOpenView;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "show return as !mShowed"

    .line 469
    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "show ..."

    .line 472
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iput-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    .line 474
    iput-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mNeedVibrator:Z

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->show(Z)V

    .line 476
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 477
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mKeyguardAuthen:Z

    if-nez v0, :cond_2

    move v2, v1

    .line 480
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mPortraitOrientation:Z

    .line 481
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->initFpodIconSize()V

    .line 482
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconWidth:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodIconHeight:I

    const/16 v6, 0x7e5

    const v7, 0x1800608

    const/4 v8, -0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 487
    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x33

    .line 488
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x3dcccccd    # 0.1f

    .line 489
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 490
    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHighlightView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    const-string v2, "gxzw_icon"

    .line 493
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    if-eqz v2, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->registerMoveSensor()V

    .line 501
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->registerPSensor()V

    .line 502
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleSetIconTransparen()V

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    .line 505
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    .line 506
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 508
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 509
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->dismissFingerpirntIcon()V

    .line 513
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 516
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 519
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    .line 520
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    .line 521
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayState:I

    .line 522
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 524
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mResetUnlockRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/fingerprint/FpodManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public startDozing()V
    .locals 3

    const-string v0, "FpodIconView2"

    const-string v1, "enter startDozing ..."

    .line 585
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startDozing()V

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    .line 588
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->registerMoveSensor()V

    .line 594
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->registerPSensor()V

    .line 595
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->scheduleSetIconTransparen()V

    .line 596
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 597
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->requestWindowFocus()V

    .line 600
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->dismissFingerpirntIcon()V

    :cond_1
    const/4 v0, 0x0

    .line 604
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    .line 605
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    return-void
.end method

.method public stopDozing()V
    .locals 5

    const-string v0, "FpodIconView2"

    const-string v1, "enter stopDozing ..."

    .line 609
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mFpodAnimView:Lcom/android/keyguard/fingerprint/FpodAnimView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->stopDozing()V

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozing:Z

    .line 612
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mShowed:Z

    if-eqz v1, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->setFpodIconOpaque()V

    .line 617
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unregisterMoveSensor()V

    .line 619
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unregisterPSensor()V

    .line 620
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->unscheduleSetIconTransparen()V

    .line 621
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->unRegisterBroadCast(Landroid/content/BroadcastReceiver;)V

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    .line 626
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    .line 627
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x21

    .line 628
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 629
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDeviceMoving:Z

    .line 636
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mDozeShowIconTimeout:Z

    .line 637
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView;->mIsKeepMoveTimeout:Z

    return-void
.end method
