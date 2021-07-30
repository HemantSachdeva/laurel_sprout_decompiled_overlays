.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCanShowFpod:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreen:I

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTargetedView:Landroid/view/View;

.field private mTouchSlop:I

.field private mTouchSlopExeeded:Z

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 8

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCanShowFpod:Z

    .line 78
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 105
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private endMotion(ZFF)V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(ZFF)V

    goto :goto_0

    .line 234
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 238
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private fling(FZZ)V
    .locals 5

    if-eqz p3, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 362
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 363
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v3, v1, v4, v0, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 364
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p2, :cond_2

    const/high16 v0, 0x3ec00000    # 0.375f

    mul-float/2addr v0, p1

    .line 372
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v0, p3, v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    goto :goto_1

    .line 375
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 377
    :goto_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 378
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_3

    .line 380
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    :cond_3
    return-void
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .locals 6

    .line 332
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity(FF)F

    move-result p2

    .line 336
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->needsAntiFalsing()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 337
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-nez p3, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p3, v0

    .line 342
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v2, p2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    .line 343
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    or-int/2addr p3, v4

    xor-int/2addr v2, p3

    if-eqz v2, :cond_5

    move p2, v3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move p1, v1

    goto :goto_6

    :cond_7
    :goto_5
    move p1, v0

    .line 345
    :goto_6
    iget p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float p3, p3, v3

    if-gez p3, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    return-void
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 4

    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float p2, p2

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 312
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private getCurrentVelocity(FF)F
    .locals 6

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 527
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr p1, v2

    .line 528
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr p2, v2

    float-to-double v2, p1

    float-to-double v4, p2

    .line 529
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 532
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, p0, :cond_1

    neg-float v0, v0

    :cond_1
    return v0
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMinTranslationAmount()I
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 354
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2

    .line 468
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    .line 471
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .locals 0

    .line 502
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result p0

    div-float/2addr p1, p0

    const p0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p0

    const p0, 0x3f4ccccd    # 0.8f

    add-float/2addr p1, p0

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 504
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getScreenWidth()F
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method

.method private getTranslationFromRadius(F)F
    .locals 2

    .line 462
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 464
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float p0, p0

    add-float v0, p1, p0

    :cond_0
    return v0
.end method

.method private initDimens()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_min_swipe_amount:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_min_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_touch_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->hint_grow_amount_sideways:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-void
.end method

.method private initIcons()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 517
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 2

    .line 349
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 3

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    sub-float/2addr p2, v0

    float-to-double p1, p2

    sub-float/2addr p3, v1

    float-to-double v0, p3

    .line 226
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 227
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private leftSwipePossible()Z
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private rightSwipePossible()Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCanShowFpod(Z)V
    .locals 2

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCanShowFpod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpod"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCanShowFpod:Z

    .line 595
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCanShowFpod isClickEmergencyButton: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getClickEmergencyButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardAffordanceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->getClickEmergencyButton()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 600
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState()V

    const/4 p0, 0x0

    .line 601
    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->setClickEmergencyButton(Z)Z

    goto :goto_0

    .line 603
    :cond_0
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodManager;->updateFpodState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTranslation(FZZ)V
    .locals 19

    move-object/from16 v8, p0

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, p1

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 392
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    move v9, v0

    .line 393
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 394
    iget v2, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v2, v9, v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_e

    :cond_2
    cmpl-float v10, v9, v1

    if-lez v10, :cond_3

    .line 395
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_2

    :cond_3
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_2
    if-lez v10, :cond_4

    .line 396
    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_3

    :cond_4
    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_3
    move-object v11, v3

    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 401
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    move v15, v14

    goto :goto_4

    :cond_5
    move v15, v13

    :goto_4
    if-eqz p2, :cond_6

    if-nez p3, :cond_6

    move/from16 v16, v14

    goto :goto_5

    :cond_6
    move/from16 v16, v13

    .line 405
    :goto_5
    invoke-direct {v8, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getRadiusFromTranslation(F)F

    move-result v4

    if-eqz p2, :cond_7

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v17, v14

    goto :goto_6

    :cond_7
    move/from16 v17, v13

    :goto_6
    if-nez p2, :cond_8

    .line 408
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float/2addr v0, v12

    add-float/2addr v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    .line 411
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v4, v12, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v15

    move/from16 v5, v17

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    :goto_7
    const/4 v2, 0x0

    .line 414
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v3, v12, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move v4, v15

    move/from16 v5, v17

    move/from16 v6, p2

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 418
    iget v0, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    if-nez v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScreenWidth()F

    move-result v0

    neg-float v0, v0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_9

    .line 419
    iput v14, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    .line 420
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 421
    invoke-direct {v8, v14}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCanShowFpod(Z)V

    goto :goto_8

    .line 423
    :cond_9
    iget v0, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    if-ne v0, v14, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScreenWidth()F

    move-result v0

    neg-float v0, v0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    .line 424
    iput v0, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    .line 425
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 426
    invoke-direct {v8, v13}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCanShowFpod(Z)V

    goto :goto_8

    .line 428
    :cond_a
    iget v0, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    if-ne v0, v14, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScreenWidth()F

    move-result v0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_b

    .line 429
    iput v13, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    .line 430
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 431
    invoke-direct {v8, v13}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCanShowFpod(Z)V

    goto :goto_8

    .line 433
    :cond_b
    iget v0, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCurrentScreen:I

    if-ne v0, v14, :cond_c

    if-nez v10, :cond_c

    .line 434
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 435
    invoke-direct {v8, v14}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCanShowFpod(Z)V

    goto :goto_8

    .line 437
    :cond_c
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;->isFpodSensor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 438
    invoke-direct {v8, v13}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setCanShowFpod(Z)V

    .line 443
    :cond_d
    :goto_8
    iput v9, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    :cond_e
    return-void
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 386
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 387
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    return-void
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 262
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 263
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xc8

    .line 283
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 284
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 285
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 286
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-void
.end method

.method private startSwiping(Landroid/view/View;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 205
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-void
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 294
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    .line 304
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 305
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V
    .locals 1

    .line 483
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p6, :cond_0

    return-void

    :cond_0
    if-eqz p7, :cond_1

    .line 487
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 491
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 1

    .line 495
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 496
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 497
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 498
    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    return-void
.end method

.method private updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 4

    .line 448
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    .line 453
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 456
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 458
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 8

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 476
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 477
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    return-void
.end method

.method public canShowFpod()Z
    .locals 0

    .line 612
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCanShowFpod:Z

    return p0
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p0

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

.method public isSwipingInProgress()Z
    .locals 0

    .line 558
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p0
.end method

.method public launchAffordance(ZZ)V
    .locals 10

    .line 562
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    if-eqz p2, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_1
    move-object v3, v1

    .line 568
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 572
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move p1, v2

    :cond_3
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    xor-int/lit8 p1, p2, 0x1

    .line 577
    invoke-direct {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 578
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    goto :goto_3

    .line 580
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    xor-int/lit8 v2, p2, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {p1, v2, v4, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    if-eqz p2, :cond_5

    .line 581
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result p1

    goto :goto_2

    .line 582
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result p1

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 583
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 584
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->instantFinishAnimation()V

    .line 585
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 586
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 138
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    return v2

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    goto/16 :goto_3

    .line 166
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 167
    invoke-direct {p0, v4, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    goto/16 :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    .line 170
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 171
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr v3, p1

    .line 172
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float/2addr v1, p1

    float-to-double v5, v3

    float-to-double v0, v1

    .line 173
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 175
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 177
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_b

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 179
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    sub-float/2addr v0, p1

    .line 180
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 182
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v0, p1

    .line 183
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 185
    :goto_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto :goto_3

    :cond_6
    move v0, v4

    .line 192
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v5, v6, :cond_7

    move v2, v4

    .line 193
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    xor-int/lit8 p1, v0, 0x1

    .line 194
    invoke-direct {p0, p1, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    .line 195
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez p1, :cond_b

    if-eqz v0, :cond_b

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)V

    goto :goto_3

    .line 147
    :cond_8
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 148
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_9

    if-eq v5, v0, :cond_9

    goto :goto_4

    .line 152
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    goto :goto_2

    .line 155
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 157
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 158
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 159
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 160
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 163
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    :cond_b
    :goto_3
    return v4

    .line 149
    :cond_c
    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    return v2
.end method

.method public reset(Z)V
    .locals 2

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 549
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 550
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 551
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    const/4 p1, 0x0

    .line 553
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    :cond_0
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updatePreviews()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method
