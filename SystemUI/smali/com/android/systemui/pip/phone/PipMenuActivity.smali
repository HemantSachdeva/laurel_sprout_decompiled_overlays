.class public Lcom/android/systemui/pip/phone/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mDismissButton:Landroid/view/View;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mResize:Z

.field private mResizeHandle:Landroid/view/View;

.field private mSettingsButton:Landroid/view/View;

.field private mToControllerMessenger:Landroid/os/Messenger;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResize:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 145
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    .line 201
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$on3_yLRCya18yWlE7CavD_fHImk;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$on3_yLRCya18yWlE7CavD_fHImk;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;ZZZZ)V
    .locals 0

    .line 88
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/phone/PipMenuActivity;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/phone/PipMenuActivity;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateDismissFraction(F)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/view/MotionEvent;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dispatchPointerEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->fadeOutMenu()V

    return-void
.end method

.method private cancelDelayedFinish()V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissPip()V
    .locals 4

    .line 652
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 655
    :goto_0
    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$guHLrBiStjvmB9r01MbFqRGaK3c;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$guHLrBiStjvmB9r01MbFqRGaK3c;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private dispatchPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

.method private expandPip()V
    .locals 3

    .line 642
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$gxeJOYpgn30UbyKen9nD4GpRdFQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$gxeJOYpgn30UbyKen9nD4GpRdFQ;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private fadeOutMenu()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResizeHandle:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private hideMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;ZZZ)V
    .locals 10

    .line 456
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 459
    iget-boolean p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResize:Z

    const/4 v1, -0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(IZI)V

    .line 461
    :cond_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 462
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 463
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 462
    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 464
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    .line 466
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v5, v6, v4

    .line 465
    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 467
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    .line 468
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v0

    aput v5, v7, v4

    .line 467
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 469
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResizeHandle:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    .line 470
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v8, v0

    aput v5, v8, v4

    .line 469
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 471
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object p2, v7, v0

    aput-object v1, v7, v4

    aput-object v3, v7, v2

    const/4 p2, 0x3

    aput-object v5, v7, p2

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 472
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x7d

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 474
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance p4, Lcom/android/systemui/pip/phone/PipMenuActivity$5;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMenuActivity$5;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;Z)V

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 491
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    :goto_1
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$3;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private synthetic lambda$dismissPip$8()V
    .locals 2

    const/16 v0, 0x67

    const-string v1, "Could not notify controller to dismiss PIP"

    .line 656
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$expandPip$7()V
    .locals 2

    const/16 v0, 0x65

    const-string v1, "Could not notify controller to expand PIP"

    .line 643
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$on3_yLRCya18yWlE7CavD_fHImk(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showSettings()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dismissPip()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateActionViews$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$updateActionViews$4(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 565
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 566
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$updateActionViews$5(Landroid/app/RemoteAction;)V
    .locals 2

    .line 573
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipMenuActivity"

    const-string v1, "Failed to send action"

    .line 575
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateActionViews$6(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;

    invoke-direct {p2, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$KxDwr2Rt3pvR-EKt-FVSgFixejo;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyActivityCallback(Landroid/os/Messenger;)V
    .locals 2

    .line 675
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x68

    .line 676
    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 678
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResize:Z

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-string p1, "Could not notify controller of activity finished"

    .line 679
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private notifyMenuStateChange(IZI)V
    .locals 2

    .line 622
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    .line 623
    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResize:Z

    .line 624
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 625
    iput v1, v0, Landroid/os/Message;->what:I

    .line 626
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 627
    iput p2, v0, Landroid/os/Message;->arg2:I

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 631
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 632
    new-instance p1, Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(I)V

    const-string p2, "message_callback_what"

    .line 633
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    const-string p1, "Could not notify controller of PIP menu visibility"

    .line 636
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private repostDelayedFinish(I)V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    .line 706
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendEmptyMessage(ILjava/lang/String;)V
    .locals 1

    .line 683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 684
    iput p1, v0, Landroid/os/Message;->what:I

    .line 685
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez p0, :cond_0

    return-void

    .line 693
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipMenuActivity"

    .line 695
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    return-void
.end method

.method private showMenu(ILandroid/graphics/Rect;ZZZZ)V
    .locals 8

    .line 375
    iput-boolean p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 376
    iget p6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq p6, p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p4, :cond_1

    if-eq p6, v2, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    move p6, v1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    xor-int/2addr p6, v1

    .line 381
    iput-boolean p6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 383
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 384
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_2

    .line 385
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 387
    :cond_2
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 388
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object p6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    .line 389
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    .line 388
    invoke-static {p2, p6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 390
    iget-object p6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 391
    iget-object p6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    .line 392
    invoke-virtual {p6}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v0

    aput v4, v5, v1

    .line 391
    invoke-static {p6, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    .line 393
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    .line 394
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v4, v6, v1

    .line 393
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 395
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResizeHandle:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    .line 396
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    const/4 v7, 0x0

    aput v7, v6, v1

    .line 395
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-ne p1, v2, :cond_3

    .line 400
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p2, v6, v0

    aput-object p6, v6, v1

    aput-object v3, v6, v2

    const/4 p2, 0x3

    aput-object v4, v6, p2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 403
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array p6, v2, [Landroid/animation/Animator;

    aput-object v3, p6, v0

    aput-object v4, p6, v1

    invoke-virtual {p2, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 405
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object p6, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-ne p1, v1, :cond_4

    const-wide/16 v0, 0x7d

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0xaf

    :goto_2
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_5

    .line 410
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/android/systemui/pip/phone/PipMenuActivity$4;

    invoke-direct {p3, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$4;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    if-eqz p5, :cond_6

    const/16 p2, 0x8

    .line 419
    invoke-direct {p0, p1, p4, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(IZI)V

    goto :goto_3

    :cond_6
    const/4 p2, -0x1

    .line 421
    invoke-direct {p0, p1, p4, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(IZI)V

    .line 422
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    const/16 p1, 0x7d0

    .line 428
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private showSettings()V
    .locals 5

    .line 663
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPipActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 664
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 666
    new-instance v2, Landroid/content/Intent;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 667
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.user_handle"

    .line 668
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 669
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .locals 8

    .line 529
    sget v0, Lcom/android/systemui/R$id;->expand_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 530
    sget v1, Lcom/android/systemui/R$id;->actions_container:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 531
    sget-object v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$BXxmOnLU-s8BTsc_oWau4TVb1pE;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 539
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 542
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 543
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 544
    sget v4, Lcom/android/systemui/R$layout;->pip_menu_action:I

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 546
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 550
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 551
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 558
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le v1, p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    move p1, v2

    .line 559
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 560
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 561
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 564
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$FgVNA6rqcnXmAeLQlbztL7Zw7mU;

    invoke-direct {v6, v4}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$FgVNA6rqcnXmAeLQlbztL7Zw7mU;-><init>(Landroid/widget/ImageButton;)V

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p0, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 568
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 570
    new-instance v5, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/app/RemoteAction;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    :cond_5
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 581
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const v1, 0x3f0a3d71    # 0.54f

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 585
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_7

    if-lez p1, :cond_7

    .line 586
    iget v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    goto :goto_6

    :cond_7
    move v4, v2

    :goto_6
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 593
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 594
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->pip_action_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 596
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->pip_expand_container_edge_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 598
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_8

    :cond_9
    :goto_7
    const/4 p0, 0x4

    .line 537
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method private updateDismissFraction(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 605
    iget v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/high16 v2, 0x437f0000    # 255.0f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 607
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 608
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    mul-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    mul-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 618
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private updateFromIntent(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "messenger"

    .line 496
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p1, "PipMenuActivity"

    const-string v0, "Controller messenger is null. Stopping."

    .line 498
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    const-string v0, "actions"

    .line 504
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    if-eqz v0, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v0, "menu_state"

    const/4 v1, 0x0

    .line 510
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "stack_bounds"

    .line 512
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    const/4 v0, 0x1

    const-string v2, "allow_timeout"

    .line 513
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "resize_menu_on_show"

    .line 514
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "show_menu_with_delay"

    .line 515
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "show_resize_handle"

    .line 516
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move-object v2, p0

    .line 517
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;ZZZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 365
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$dismissPip$8$PipMenuActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$dismissPip$8()V

    return-void
.end method

.method public synthetic lambda$expandPip$7$PipMenuActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$expandPip$7()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$PipMenuActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$PipMenuActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$PipMenuActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateActionViews$6$PipMenuActivity(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$6(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    sget p1, Lcom/android/systemui/R$layout;->pip_menu_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 212
    const-class p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 213
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 215
    sget p1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    sget p1, Lcom/android/systemui/R$id;->menu_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 219
    sget p1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4MVIZwVdJN3lkWpqrFrI53Q9bPQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$4MVIZwVdJN3lkWpqrFrI53Q9bPQ;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    sget p1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$lkNLpysIkUfrlXCWX9bvozrYe1U;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$lkNLpysIkUfrlXCWX9bvozrYe1U;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget p1, Lcom/android/systemui/R$id;->expand_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$70yHDyzrwE1GNEVEQrmSEL7H6fY;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$70yHDyzrwE1GNEVEQrmSEL7H6fY;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    sget p1, Lcom/android/systemui/R$id;->resize_handle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mResizeHandle:Landroid/view/View;

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 236
    sget p1, Lcom/android/systemui/R$id;->actions_group:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->pip_between_action_padding_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 241
    sget p1, Lcom/android/systemui/R$string;->pip_menu_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 242
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setDisablePreviewScreenshots(Z)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->initAccessibility()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    const/4 p0, 0x1

    return p0

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    if-nez p1, :cond_0

    .line 305
    iget p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(I)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method
