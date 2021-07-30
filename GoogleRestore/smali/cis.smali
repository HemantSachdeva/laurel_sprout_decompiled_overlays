.class final Lcis;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lciw;


# direct methods
.method public constructor <init>(Lciw;)V
    .locals 0

    iput-object p1, p0, Lcis;->a:Lciw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcis;->a:Lciw;

    iget-object v0, v0, Lciw;->e:Lciv;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lciv;->setVisibility(I)V

    iget-object v0, p0, Lcis;->a:Lciw;

    iget-object v2, v0, Lciw;->e:Lciv;

    iget v2, v2, Lciv;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 11
    invoke-virtual {v0, v2}, Lciw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    .line 12
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 13
    sget-object v6, Lccy;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v6, Lcie;

    invoke-direct {v6, v0}, Lcie;-><init>(Lciw;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v1

    aput-object v5, v4, v3

    .line 16
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    .line 17
    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcib;

    .line 18
    invoke-direct {v1, v0}, Lcib;-><init>(Lciw;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Lciw;->c()I

    move-result v2

    iget-object v5, v0, Lciw;->e:Lciv;

    int-to-float v6, v2

    .line 3
    invoke-virtual {v5, v6}, Lciv;->setTranslationY(F)V

    new-instance v5, Landroid/animation/ValueAnimator;

    .line 4
    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v4, [I

    aput v2, v4, v1

    aput v1, v4, v3

    .line 5
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 6
    sget-object v1, Lccy;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 7
    invoke-virtual {v5, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcif;

    .line 8
    invoke-direct {v1, v0}, Lcif;-><init>(Lciw;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    new-instance v1, Lcig;

    invoke-direct {v1, v0}, Lcig;-><init>(Lciw;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
