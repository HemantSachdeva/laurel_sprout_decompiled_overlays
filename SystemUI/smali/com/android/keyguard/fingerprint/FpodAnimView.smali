.class public Lcom/android/keyguard/fingerprint/FpodAnimView;
.super Landroid/widget/FrameLayout;
.source "FpodAnimView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static AOD_DOZE_SUSPEND_DELAY:J = 0x64L


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCollecting:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mDozing:Z

.field private mDozingIconAnimDone:Z

.field private mFpodAnimHeight:I

.field private mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

.field private mFpodAnimWidth:I

.field private mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

.field private mFpodIconHeight:I

.field private mFpodIconWidth:I

.field private mFpodIconX:I

.field private mFpodIconY:I

.field private mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardAuthen:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLightIcon:Z

.field private mLightWallpaperFpod:Z

.field private mPortraitOrientation:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShouldShowBackAnim:Z

.field private mShowing:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDisplayState:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozingIconAnimDone:Z

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mHandler:Landroid/os/Handler;

    .line 53
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLightIcon:Z

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mCollecting:Z

    .line 73
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->initView()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/android/keyguard/fingerprint/FpodAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/fingerprint/FpodAnimView;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/fingerprint/FpodAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/fingerprint/FpodAnimView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->removeViewFromWindow()V

    return-void
.end method

.method private initView()V
    .locals 9

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->fpod_keyguard_anim_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    sget v0, Lcom/android/systemui/R$id;->fpod_anim_surface:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 82
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/fingerprint/FpodTipView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    .line 83
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconX:I

    .line 84
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconY:I

    .line 85
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconWidth:I

    .line 86
    sget v0, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconHeight:I

    const/16 v0, 0x3f0

    .line 87
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimWidth:I

    .line 88
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimHeight:I

    const/16 v0, 0x1300

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 90
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->setMode(I)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 94
    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 95
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/fingerprint/FpodAnimManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/fingerprint/FpodFrameAnimation;)V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    .line 96
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconX:I

    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconWidth:I

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 97
    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconY:I

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimHeight:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconHeight:I

    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    add-int/lit8 v8, v2, -0xc

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 102
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 103
    iget v1, v2, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mScreenWidth:I

    .line 104
    iget v1, v2, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mScreenHeight:I

    .line 107
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1000618

    const/4 v7, -0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 112
    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodKeyguardHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    iput v8, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "gxzw_anim"

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private removeViewFromWindow()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->stopAnimation()V

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->clean()V

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    .line 177
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private startFadeAniamtion()V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 395
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodAnimView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodAnimView$2;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/fingerprint/FpodAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fingerprint/FpodAnimView$3;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateLongPressColor()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    .line 476
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLightWallpaperFpod:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 477
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->setLongPressColor(Z)V

    return-void
.end method

.method private updateLpByOrientation()V
    .locals 7

    .line 450
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 451
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconX:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimWidth:I

    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconWidth:I

    sub-int v3, v2, v3

    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    .line 452
    iget v3, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconY:I

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimHeight:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconHeight:I

    sub-int v5, v4, v5

    div-int/2addr v5, v1

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0xc

    goto :goto_0

    .line 456
    :cond_0
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconX:I

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconWidth:I

    sub-int v2, v4, v2

    div-int/2addr v2, v1

    sub-int v3, v0, v2

    .line 457
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconY:I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimHeight:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconHeight:I

    sub-int v5, v2, v5

    div-int/2addr v5, v1

    sub-int/2addr v0, v5

    .line 463
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 464
    iget-boolean v6, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-nez v6, :cond_4

    if-eq v5, v1, :cond_1

    const/4 v1, 0x3

    if-ne v5, v1, :cond_4

    .line 465
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mScreenWidth:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mScreenHeight:I

    :goto_1
    sub-int/2addr v1, v0

    sub-int v0, v1, v2

    .line 466
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mScreenHeight:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mScreenWidth:I

    :goto_2
    sub-int/2addr v1, v3

    sub-int v3, v1, v4

    .line 468
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 469
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 470
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 471
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updateOrientation(Z)V
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->updateLpByOrientation()V

    .line 441
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanLongPressTip()V
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->cleanLongPressTip()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodTipView;->dismiss()V

    .line 162
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodManager;->getFpodUnlockMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startFadeAniamtion()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->removeViewFromWindow()V

    .line 167
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->cleanLongPressTip()V

    :cond_1
    return-void
.end method

.method public drawFingerprintIcon(Z)V
    .locals 3

    const-string v0, "FpodAnimView"

    const-string v1, "drawFingerprintIcon"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getFingerIconResource(Z)I

    move-result p0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->draw(IZF)V

    if-eqz p1, :cond_0

    .line 316
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    sget-wide v0, Lcom/android/keyguard/fingerprint/FpodAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/fingerprint/FpodManager;->requestDrawWackLock(J)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 431
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 434
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->updateOrientation(Z)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    if-nez p1, :cond_6

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    .line 365
    iget v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDisplayState:I

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged: oldState = "

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newState = "

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FpodAnimView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-ne p1, v2, :cond_0

    .line 373
    iget-boolean v4, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mCollecting:Z

    if-nez v4, :cond_0

    .line 374
    invoke-virtual {p0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startIconAnim(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x3

    if-ne v0, v3, :cond_2

    if-eq p1, v5, :cond_1

    if-ne p1, v4, :cond_2

    .line 376
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozingIconAnimDone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mCollecting:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodAodShowEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    iput-boolean v3, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozingIconAnimDone:Z

    .line 378
    invoke-virtual {p0, v3}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startIconAnim(Z)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_5

    :cond_3
    if-eq v0, v5, :cond_4

    if-ne v0, v4, :cond_5

    :cond_4
    if-ne p1, v2, :cond_5

    .line 380
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mCollecting:Z

    if-nez v0, :cond_5

    .line 381
    iput-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    .line 383
    invoke-virtual {p0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    .line 386
    :cond_5
    :goto_0
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDisplayState:I

    :cond_6
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onKeyguardAuthen(Z)V
    .locals 2

    .line 199
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodTipView;->onKeyguardAuthen(Z)V

    .line 201
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_0

    .line 202
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 208
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->updateOrientation(Z)V

    .line 209
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->onKeyguardAuthen(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 330
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setCollecting(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mCollecting:Z

    return-void
.end method

.method public setEnrolling(Z)V
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 307
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->setEnrolling(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodUtils;->setDefaultDisplay(Landroid/content/Context;)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    if-nez v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    .line 134
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLightIcon:Z

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->setLightIcon(Z)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-nez p1, :cond_2

    move v0, v1

    .line 139
    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mPortraitOrientation:Z

    .line 140
    sget p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_X:I

    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconX:I

    .line 141
    sget p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_Y:I

    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconY:I

    .line 142
    sget p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_WIDTH:I

    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconWidth:I

    .line 143
    sget p1, Lcom/android/keyguard/fingerprint/FpodUtils;->FPOD_ICON_HEIGHT:I

    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodIconHeight:I

    .line 144
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->updateLpByOrientation()V

    .line 145
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 147
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->setAlpha(F)V

    .line 149
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->show()V

    :cond_5
    return-void
.end method

.method public showMorePress()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    .line 300
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLightWallpaperFpod:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->fpod_press_harder:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v2, 0x43820000    # 260.0f

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/keyguard/fingerprint/FpodTipView;->startTipAnim(ZLjava/lang/String;F)V

    return-void
.end method

.method public startAnim(ZLcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;)V
    .locals 7

    .line 256
    iget-object v1, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->res:[I

    if-eqz v1, :cond_2

    .line 257
    array-length v0, v1

    if-lez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget-boolean v2, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->repeat:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->setMode(I)V

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget v2, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->frameInterval:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->setFrameInterval(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 262
    new-instance p1, Lcom/android/keyguard/fingerprint/FpodAnimView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/fingerprint/FpodAnimView$1;-><init>(Lcom/android/keyguard/fingerprint/FpodAnimView;)V

    move-object v5, p1

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    iget v2, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->startPosition:I

    iget v3, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->backgroundRes:I

    iget v4, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->backgroundFrame:I

    iget-object v6, p2, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->customerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->startAnimation([IIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    :cond_2
    return-void
.end method

.method public startBackAnim()V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBackAnim: mShouldShowBackAnim = "

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpodAnimView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 250
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getBackAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startAnim(ZLcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;)V

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    return-void
.end method

.method public startDozing()V
    .locals 1

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->startDozing()V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodTipView;->cleanLongPressTip()V

    .line 184
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->updateLongPressColor()V

    return-void
.end method

.method public startFalseAnim()V
    .locals 4

    const-string v0, "FpodAnimView"

    const-string v1, "startFalseAnim"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 230
    iget-boolean v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    iget-object v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getFalseAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startAnim(ZLcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;)V

    .line 231
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    .line 232
    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mLightWallpaperFpod:Z

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->fpod_try_again:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getFalseTipTranslationY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->startTipAnim(ZLjava/lang/String;F)V

    return-void
.end method

.method public startIconAnim(Z)V
    .locals 2

    const-string v0, "FpodAnimView"

    const-string v1, "startIconAnim"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getIconAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startAnim(ZLcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;)V

    .line 216
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    return-void
.end method

.method public startRecognizingAnim()V
    .locals 2

    const-string v0, "FpodAnimView"

    const-string v1, "startRecognizingAnim"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 222
    iget-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->getRecognizingAnimArgs(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startAnim(ZLcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;)V

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    return-void
.end method

.method public stopAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodFrameAnimation:Lcom/android/keyguard/fingerprint/FpodFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fingerprint/FpodFrameAnimation;->stopAnimation()V

    .line 291
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozingIconAnimDone:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodAnimManager:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->stopDozing()V

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->updateLongPressColor()V

    .line 192
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodTipView;->showLongPressTipIfNeed()V

    .line 193
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    return-void
.end method

.method public stopTip()V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p0, "FpodAnimView"

    const-string p1, "surfaceChanged"

    .line 349
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FpodAnimView"

    const-string v0, "surfaceCreated"

    .line 337
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mKeyguardAuthen:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShowing:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDisplayState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozingIconAnimDone:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 343
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozingIconAnimDone:Z

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->startIconAnim(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 339
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mShouldShowBackAnim:Z

    .line 340
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mFpodTipView:Lcom/android/keyguard/fingerprint/FpodTipView;

    invoke-virtual {p1}, Lcom/android/keyguard/fingerprint/FpodTipView;->stopTipAnim()V

    .line 341
    iget-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimView;->mDozing:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimView;->drawFingerprintIcon(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "FpodAnimView"

    const-string p1, "surfaceDestroyed"

    .line 353
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
