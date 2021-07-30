.class public Lcom/android/keyguard/fingerprint/FpodOverlayView;
.super Landroid/widget/FrameLayout;
.source "FpodOverlayView.java"

# interfaces
.implements Lcom/android/keyguard/fingerprint/FpodIconView$CollectFpodListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fingerprint/FpodOverlayView$BrightnessFileObserver;
    }
.end annotation


# instance fields
.field private mAdded:Z

.field private mAppAuth:Z

.field private mBrightnessFileObserver:Lcom/android/keyguard/fingerprint/FpodOverlayView$BrightnessFileObserver;

.field private final mBrightnessFilePath:Ljava/lang/String;

.field private mCollecting:Z

.field private mDelayRemoveOverlayView:Ljava/lang/Runnable;

.field private volatile mDozing:Z

.field private mEnrolling:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mHasEnterFindSensor:Z

.field private mHbmOverlay:Landroid/view/View;

.field private volatile mInvertColors:Z

.field private mKeyguardAuthen:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMaxBrightness:I

.field private mOverlayAlpha:F

.field mPerfBoost:Landroid/util/BoostFramework;

.field private mPreAlpha:F

.field private mScreenEffectNone:Z

.field private volatile mShowed:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mAdded:Z

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->getBrightnessFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    .line 40
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mCollecting:Z

    .line 41
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mInvertColors:Z

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 50
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mOverlayAlpha:F

    .line 51
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPreAlpha:F

    .line 52
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mScreenEffectNone:Z

    .line 53
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    .line 67
    new-instance p1, Lcom/android/keyguard/fingerprint/FpodOverlayView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView$1;-><init>(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V

    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDelayRemoveOverlayView:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPerfBoost:Landroid/util/BoostFramework;

    .line 110
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->removeOverlayView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->updateBrightnessFileWatchState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/fingerprint/FpodOverlayView;)F
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->calculateOverlayAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/fingerprint/FpodOverlayView;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mOverlayAlpha:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/fingerprint/FpodOverlayView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mKeyguardAuthen:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->addOverlayView()V

    return-void
.end method

.method private addOverlayView()V
    .locals 4

    .line 246
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 247
    invoke-direct {p0, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->raiseCPU(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mOverlayAlpha:F

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 249
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fingerprint/FpodManager;->requestDrawWackLock(J)V

    .line 252
    :cond_0
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->supportLowBrightnessFod()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mAppAuth:Z

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "hbm_auth_overlay"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mEnrolling:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHasEnterFindSensor:Z

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "enroll_overlay1"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHasEnterFindSensor:Z

    goto :goto_1

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mEnrolling:Z

    if-eqz v2, :cond_3

    const-string v2, "enroll_overlay"

    goto :goto_0

    :cond_3
    const-string v2, "hbm_overlay"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add overlay view: mLayoutParams.alpha = "

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FpodOverlayView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    if-eqz v0, :cond_6

    .line 272
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mAdded:Z

    :cond_6
    return-void
.end method

.method private addViewAndUpdateAlpha()V
    .locals 2

    .line 301
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;-><init>(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 312
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private brightnessToAlpha(I)F
    .locals 11

    if-nez p1, :cond_0

    const-wide p0, 0x3feec85d2b226f4bL    # 0.9619584887

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x8

    if-gt p1, v0, :cond_2

    .line 397
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "equuleus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "ursa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    int-to-double p0, p1

    const-wide v3, 0x3f6a36e2eb1c432dL    # 0.0032

    mul-double/2addr p0, v3

    const-wide v3, 0x3fb2eb1c432ca57aL    # 0.0739

    add-double/2addr p0, v3

    goto :goto_0

    .line 399
    :cond_2
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->supportLowBrightnessFod()Z

    move-result v0

    const-wide v3, 0x4082c00000000000L    # 600.0

    const-wide v5, 0x407ae00000000000L    # 430.0

    if-nez v0, :cond_3

    int-to-double v7, p1

    mul-double/2addr v7, v1

    .line 400
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    int-to-double p0, p0

    div-double/2addr v7, p0

    mul-double/2addr v7, v5

    div-double/2addr v7, v3

    const-wide p0, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v7, v8, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    :goto_0
    sub-double p0, v1, p0

    goto :goto_1

    :cond_3
    const/16 p0, 0x1f4

    const-wide v7, 0x3fdd1eb851eb851fL    # 0.455

    if-le p1, p0, :cond_4

    int-to-double p0, p1

    mul-double/2addr p0, v1

    const-wide v9, 0x409ffc0000000000L    # 2047.0

    div-double/2addr p0, v9

    mul-double/2addr p0, v5

    div-double/2addr p0, v3

    .line 402
    invoke-static {p0, p1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_4
    int-to-double p0, p1

    mul-double/2addr p0, v1

    const-wide v3, 0x409a400000000000L    # 1680.0

    div-double/2addr p0, v3

    .line 404
    invoke-static {p0, p1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :goto_1
    double-to-float p0, p0

    return p0
.end method

.method private calculateOverlayAlpha()F
    .locals 5

    .line 344
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    if-gtz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->readMaxBrightnessFromFile()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mInvertColors:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 348
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->convertBrightnessFrom1024(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->brightnessToAlpha(I)F

    move-result p0

    return p0

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->readBrightnessFromFile()I

    move-result v0

    const-string v1, "FpodOverlayView"

    const v2, 0x3f283127    # 0.657f

    if-lez v0, :cond_5

    .line 357
    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    if-lez v3, :cond_5

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read brightness from file: "

    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mMaxBrightness = "

    .line 361
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateOverlayAlpha && mdozing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-boolean v3, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    .line 368
    invoke-direct {p0, v3}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->convertBrightnessFrom1024(I)I

    move-result v3

    if-le v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    const v2, 0x3f63d70a    # 0.89f

    goto :goto_0

    .line 373
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->brightnessToAlpha(I)F

    move-result v2

    goto :goto_0

    .line 377
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->brightnessToAlpha(I)F

    move-result v0

    move v2, v0

    .line 379
    :goto_0
    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPreAlpha:F

    goto :goto_1

    .line 380
    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    if-eqz v0, :cond_6

    .line 382
    iput v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPreAlpha:F

    goto :goto_1

    .line 384
    :cond_6
    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPreAlpha:F

    .line 386
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculate overlay alpha: "

    .line 387
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private convertBrightnessFrom1024(I)I
    .locals 1

    .line 410
    iget p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mMaxBrightness:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getBrightnessFile()Ljava/lang/String;
    .locals 0

    const-string p0, "/sys/class/backlight/panel0-backlight/brightness"

    return-object p0
.end method

.method private initView()V
    .locals 7

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->fpod_keyguard_overlay:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    sget v0, Lcom/android/systemui/R$id;->hbm_overlay:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHbmOverlay:Landroid/view/View;

    const/16 v0, 0x1300

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7ea

    const/16 v5, 0x418

    const/4 v6, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 124
    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 127
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-string v1, "hbm_overlay"

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView$BrightnessFileObserver;-><init>(Lcom/android/keyguard/fingerprint/FpodOverlayView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fingerprint/FpodOverlayView$BrightnessFileObserver;

    return-void
.end method

.method private raiseCPU(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    mul-int/lit8 p1, p1, 0x10

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 292
    fill-array-data v0, :array_0

    .line 294
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v1, :cond_1

    .line 295
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPerfBoost:Landroid/util/BoostFramework;

    .line 297
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {p0, p1, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    return-void

    nop

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x1
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40800100    # 4.000122f
        0xfff
    .end array-data
.end method

.method private readBrightnessFromFile()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->readIntFromFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private readIntFromFile(Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    const/4 v0, -0x1

    .line 429
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 433
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 436
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 447
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 440
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    .line 444
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_2
    return v0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 447
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    :cond_2
    :goto_4
    throw p0
.end method

.method private readMaxBrightnessFromFile()I
    .locals 2

    .line 418
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/max_brightness"

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->readIntFromFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private removeOverlayView()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mAdded:Z

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0, v1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->raiseCPU(Z)V

    const-string v0, "FpodOverlayView"

    const-string v2, "remove overlay view"

    .line 279
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fingerprint/FpodManager;->requestDrawWackLock(J)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 285
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mAdded:Z

    return-void
.end method

.method private updateAlpha(F)V
    .locals 2

    .line 316
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mCollecting:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update overlay view alpha: "

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FpodOverlayView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateBrightnessFileWatchState()V
    .locals 0

    .line 455
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodUtils;->supportLowBrightnessFod()Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 153
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    if-eqz v0, :cond_2

    const-string v0, "FpodOverlayView"

    const-string v1, "dismiss"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    .line 156
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mScreenEffectNone:Z

    if-eqz v1, :cond_0

    .line 158
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mScreenEffectNone:Z

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mEnrolling:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDelayRemoveOverlayView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDelayRemoveOverlayView:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->removeOverlayView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCollectStateChange(Z)V
    .locals 1

    .line 222
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mCollecting:Z

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->addOverlayView()V

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 228
    iget p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mOverlayAlpha:F

    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->updateAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->updateAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onIconStateChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->removeOverlayView()V

    :cond_0
    return-void
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mKeyguardAuthen:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "FpodOverlayView"

    const-string v1, "onScreenTurnedOn"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->updateBrightnessFileWatchState()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    const-string v0, "FpodOverlayView"

    const-string v1, "onStartedGoingToSleep"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->removeOverlayView()V

    return-void
.end method

.method public setEnrolling(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mEnrolling:Z

    return-void
.end method

.method public setEnterFindSensor(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHasEnterFindSensor:Z

    return-void
.end method

.method public setOtherAppAuth(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mAppAuth:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    if-nez v0, :cond_1

    const-string v0, "FpodOverlayView"

    const-string v1, "show"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mInvertColors:Z

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mHbmOverlay:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mInvertColors:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mShowed:Z

    .line 143
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->addViewAndUpdateAlpha()V

    .line 144
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->updateBrightnessFileWatchState()V

    .line 145
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mKeyguardAuthen:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mScreenEffectNone:Z

    if-nez v1, :cond_1

    .line 147
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mScreenEffectNone:Z

    :cond_1
    return-void
.end method

.method public startDozing()V
    .locals 2

    const-string v0, "FpodOverlayView"

    const-string v1, "startDozing"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    const v0, 0x3f283127    # 0.657f

    .line 180
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mOverlayAlpha:F

    .line 181
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->updateAlpha(F)V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    const-string v0, "FpodOverlayView"

    const-string v1, "stopDozing"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView;->mDozing:Z

    .line 192
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->removeOverlayView()V

    return-void
.end method
