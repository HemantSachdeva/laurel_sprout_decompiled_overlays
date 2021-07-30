.class public Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;
.super Ljava/lang/Object;
.source "SimpleScrollAdapterTransform.java"

# interfaces
.implements Lcom/google/android/pano/widget/ScrollAdapterTransform;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHighItemTransform:Landroid/animation/Animator;

.field private mLowItemTransform:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V
    .locals 2

    .line 48
    instance-of v0, p2, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 49
    check-cast p2, Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 51
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53
    :cond_0
    instance-of p0, p2, Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 54
    check-cast p2, Landroid/animation/ValueAnimator;

    .line 55
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    int-to-long p0, p1

    cmp-long p3, p0, v0

    if-gez p3, :cond_1

    .line 58
    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initializeTransformationRecursive(Landroid/animation/Animator;J)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v0

    .line 70
    :goto_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    .line 73
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->initializeTransformationRecursive(Landroid/animation/Animator;J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 75
    :cond_1
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 76
    check-cast p1, Landroid/animation/ValueAnimator;

    long-to-float p2, p2

    .line 78
    iget-object p0, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-long p2, p0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method


# virtual methods
.method public setHighItemTransform(Landroid/animation/Animator;)V
    .locals 2

    .line 88
    iput-object p1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    const-wide/16 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->initializeTransformationRecursive(Landroid/animation/Animator;J)V

    return-void
.end method

.method public setLowItemTransform(Landroid/animation/Animator;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    const-wide/16 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->initializeTransformationRecursive(Landroid/animation/Animator;J)V

    return-void
.end method

.method public transform(Landroid/view/View;II)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr v0, p3

    if-gez p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mLowItemTransform:Landroid/animation/Animator;

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->mHighItemTransform:Landroid/animation/Animator;

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/pano/widget/SimpleScrollAdapterTransform;->applyTransformationRecursive(ILandroid/animation/Animator;Landroid/view/View;)V

    :goto_0
    return-void
.end method
