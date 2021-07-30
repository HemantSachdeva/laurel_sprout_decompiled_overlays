.class public Lcom/google/android/systemui/OpaLayout;
.super Landroid/widget/FrameLayout;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# static fields
.field static final INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private final HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private final mAnimatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationState:I

.field private mBlue:Landroid/view/View;

.field private mBottom:Landroid/view/View;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayTouchFeedback:Z

.field private final mDiamondAnimation:Ljava/lang/Runnable;

.field private mDiamondAnimationDelayed:Z

.field private final mDiamondInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mGreen:Landroid/view/View;

.field private mHalo:Landroid/widget/ImageView;

.field private mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mHomeDiameter:I

.field private final mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mIsPressed:Z

.field private mIsVertical:Z

.field private mLeft:Landroid/view/View;

.field private mOpaEnabled:Z

.field private mOpaEnabledNeedsUpdate:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRed:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRetract:Ljava/lang/Runnable;

.field private final mRetractInterpolator:Landroid/view/animation/Interpolator;

.field private mRight:Landroid/view/View;

.field private mStartTime:J

.field private mTop:Landroid/view/View;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mWhite:Landroid/widget/ImageView;

.field private mWhiteCutout:Landroid/widget/ImageView;

.field private mWindowVisible:Z

.field private mYellow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 144
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 146
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f266666    # 0.65f

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 136
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p1, v0, p3, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 138
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v0, p3, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, p3, v0, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 142
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, p2, p3, p4, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 153
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 190
    new-instance p1, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 208
    new-instance p1, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 236
    new-instance p1, Lcom/google/android/systemui/OpaLayout$3;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/OpaLayout$3;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance p1, Lcom/google/android/systemui/-$$Lambda$OpaLayout$4_BG8NBMX8f4CM36AHgbLewodcE;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/-$$Lambda$OpaLayout$4_BG8NBMX8f4CM36AHgbLewodcE;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startRetractAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startLineAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method private allowAnimations()Z
    .locals 1

    .line 598
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/OpaLayout;->mWindowVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cancelCurrentAnimation()V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 977
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 978
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 979
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 982
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    :cond_1
    return-void
.end method

.method private endCurrentAnimation()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 992
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 993
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 994
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 998
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1

    .line 583
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 584
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 585
    invoke-virtual {p0, p5}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 586
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    int-to-long p1, p4

    .line 587
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method private getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 575
    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 768
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    const/16 v2, 0x85

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 768
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xc8

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 781
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    const/16 v3, 0x96

    if-eqz v1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_1

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 781
    :goto_1
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 794
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_2

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 794
    :goto_2
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 803
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x21

    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 807
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_3

    .line 808
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_3

    .line 810
    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 807
    :goto_3
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 814
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    const/4 v7, 0x0

    const/16 v8, 0x32

    const/16 v9, 0x21

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    .line 822
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 824
    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5, v4, v3, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    .line 826
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6, v4, v3, v7}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    .line 828
    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v7, v4, v3, v8}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v7

    .line 830
    iget-object v8, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8, v4, v3, v9}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v8

    .line 832
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v9, v4, v3, v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v9, 0x21

    .line 834
    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 835
    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 836
    invoke-virtual {v5, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 837
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 838
    invoke-virtual {v7, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 839
    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 840
    invoke-virtual {v3, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 841
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$6;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 1

    .line 532
    new-instance p0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p3

    const/16 p3, 0x8

    invoke-direct {p0, p3, v0}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 533
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 534
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p4

    .line 535
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    return-object p0
.end method

.method private getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 1

    .line 544
    new-instance p0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p3

    const/16 p3, 0x9

    invoke-direct {p0, p3, v0}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 545
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 546
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p4

    .line 547
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    return-object p0
.end method

.method private getDiamondAnimatorSet()Landroid/util/ArraySet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 609
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 612
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v3, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 613
    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    const/16 v4, 0xc8

    .line 612
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x32

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 623
    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 622
    invoke-direct {p0, v1, v2, v7, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 633
    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    neg-float v7, v7

    .line 632
    invoke-direct {p0, v1, v2, v7, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 643
    invoke-direct {p0, v7}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v7

    .line 642
    invoke-direct {p0, v1, v2, v7, v4}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x3ef3cf3d

    const/16 v4, 0x64

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$4;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLineAnimatorSet()Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 860
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 861
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    const/16 v2, 0x85

    const/16 v3, 0xe1

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 864
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 863
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 866
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 865
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 870
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 869
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 874
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 873
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 876
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 875
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v4, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 880
    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    neg-float v4, v4

    .line 879
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 884
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 883
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 886
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 885
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 889
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 890
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 889
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 894
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    .line 893
    invoke-direct {p0, v1, v4, v5, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 896
    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    .line 895
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    sget v4, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 900
    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    .line 899
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 904
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v4, 0x53

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$7;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$7;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1008
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    if-ltz p0, :cond_1

    .line 1009
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1010
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 1012
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    move-object v2, v3

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPxVal(I)F
    .locals 0

    .line 605
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 684
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 691
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x12c

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    const/16 v8, 0x32

    const/16 v9, 0x32

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 702
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    .line 704
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/systemui/OpaLayout;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getAlphaAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$5;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$5;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1

    .line 508
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 509
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 510
    invoke-virtual {p0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 511
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    return-object p0
.end method

.method private getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1

    .line 520
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 521
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 522
    invoke-virtual {p0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 523
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    return-object p0
.end method

.method private getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 2

    .line 555
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 556
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 557
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 558
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    return-object p0
.end method

.method private getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 2

    .line 566
    new-instance p0, Landroid/view/RenderNodeAnimator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 567
    invoke-virtual {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 568
    invoke-virtual {p0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 569
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    return-object p0
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setOnLongClickListener$0(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private setDotsVisible()V
    .locals 6

    .line 1019
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1022
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1023
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1024
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->halo:I

    if-eq v4, v5, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private skipToStartingValue()V
    .locals 5

    .line 1032
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v2, v0, :cond_0

    .line 1035
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1036
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1037
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    const/4 v3, 0x0

    .line 1038
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1039
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1040
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    const/16 v3, 0x8

    .line 1041
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1045
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1046
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1051
    iput v1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 592
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 593
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    const-string v0, "OpaLayout"

    const-string v1, "startCollapseAnimation ... "

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startCollapseAnimation ...allow "

    .line 492
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 494
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    .line 495
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 496
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const-string v1, "startCollapseAnimation ... not allow"

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startDiamondAnimation()V
    .locals 2

    .line 450
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 452
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->setDotsVisible()V

    .line 453
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x1

    .line 454
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 455
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startLineAnimation()V
    .locals 2

    const-string v0, "OpaLayout"

    const-string v1, "startLineAnimation ... "

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startLineAnimation ... allow"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 480
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getLineAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    .line 481
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 482
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const-string v1, "startLineAnimation ... not allow"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    const-string v0, "OpaLayout"

    const-string v1, "startRetractAnimation ... "

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->allowAnimations()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startRetractAnimation ... allow"

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 466
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x2

    .line 467
    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    .line 468
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const-string v1, "startRetractAnimation ... not allow"

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 2

    const-string v0, "OpaLayout"

    const-string v1, "***Called abortCurrentGesture"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->abortCurrentGesture()V

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 414
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 415
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 417
    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public getOpaEnabled()Z
    .locals 2

    .line 932
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const-string v0, "OpaLayout"

    const-string v1, "mOpaEnabledNeedsUpdate not cleared by AssistManagerGoogle!"

    .line 936
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    return p0
.end method

.method public synthetic lambda$new$1$OpaLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$setOnLongClickListener$0$OpaLayout(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/OpaLayout;->lambda$setOnLongClickListener$0(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 431
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 432
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    .line 437
    new-instance v0, Lcom/google/android/systemui/-$$Lambda$cjq7UMkdxOAxRlgIxKqH11Vsoe8;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/-$$Lambda$cjq7UMkdxOAxRlgIxKqH11Vsoe8;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 438
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    const/4 p0, -0x2

    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 444
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 445
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 446
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 249
    sget v0, Lcom/android/systemui/R$id;->blue:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    .line 250
    sget v0, Lcom/android/systemui/R$id;->red:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    .line 251
    sget v0, Lcom/android/systemui/R$id;->yellow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    .line 252
    sget v0, Lcom/android/systemui/R$id;->green:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    .line 253
    sget v0, Lcom/android/systemui/R$id;->white:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    .line 254
    sget v0, Lcom/android/systemui/R$id;->white_cutout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    .line 255
    sget v0, Lcom/android/systemui/R$id;->halo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    .line 256
    sget v0, Lcom/android/systemui/R$id;->home_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 258
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->DualToneLightTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 259
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$style;->DualToneDarkTheme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 260
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->halo:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->opa_disabled_home_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDiameter:I

    .line 269
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 270
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 271
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 284
    invoke-virtual {p0, v4}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 322
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_3

    .line 362
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v0

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->abortCurrentGesture()V

    goto/16 :goto_3

    .line 372
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    if-eqz p1, :cond_4

    .line 373
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz p1, :cond_6

    .line 374
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 377
    :cond_4
    iget p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne p1, v3, :cond_5

    const-wide/16 v2, 0x64

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 381
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 382
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    return v1

    .line 387
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz p1, :cond_6

    .line 388
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 391
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    goto :goto_3

    .line 329
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownX:I

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mTouchDownY:I

    .line 337
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 338
    iget p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne p1, v2, :cond_8

    .line 339
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->endCurrentAnimation()V

    move p1, v3

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    move p1, v1

    .line 345
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    .line 346
    iput-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    .line 348
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 353
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_2

    .line 357
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 358
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 354
    :cond_b
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 355
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    :cond_c
    :goto_3
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mWindowVisible:Z

    if-nez p1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    goto :goto_1

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    .line 296
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->skipToStartingValue()V

    :goto_1
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 400
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 1081
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1082
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1084
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDelayTouchFeedback(Z)V

    .line 1090
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mDelayTouchFeedback:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    new-instance v1, Lcom/google/android/systemui/-$$Lambda$OpaLayout$o_3Yb82bT_aVEO6XXM_b1dhZ-9o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/-$$Lambda$OpaLayout$o_3Yb82bT_aVEO6XXM_b1dhZ-9o;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 2

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting opa enabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpaLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 945
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 p1, 0x0

    .line 946
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    .line 947
    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method public setVertical(Z)V
    .locals 1

    .line 1056
    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    .line 1057
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVertical(Z)V

    .line 1059
    iget-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mIsVertical:Z

    if-eqz p1, :cond_0

    .line 1060
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 1061
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 1062
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    .line 1063
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    goto :goto_0

    .line 1065
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    .line 1066
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    .line 1067
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    .line 1068
    iget-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public updateOpaLayout()V
    .locals 6

    .line 952
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 953
    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 954
    :goto_0
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 958
    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDiameter:I

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    .line 959
    :goto_3
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 960
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 961
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_4

    .line 964
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :cond_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 965
    :goto_4
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 966
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
