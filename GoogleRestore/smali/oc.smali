.class final Loc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lqz;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Lqg;


# direct methods
.method public constructor <init>(Lqg;Lqz;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Loc;->f:Lqg;

    iput-object p2, p0, Loc;->a:Lqz;

    iput p3, p0, Loc;->b:I

    iput-object p4, p0, Loc;->c:Landroid/view/View;

    iput p5, p0, Loc;->d:I

    iput-object p6, p0, Loc;->e:Landroid/view/ViewPropertyAnimator;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Loc;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Loc;->c:Landroid/view/View;

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Loc;->d:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Loc;->c:Landroid/view/View;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Loc;->e:Landroid/view/ViewPropertyAnimator;

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Loc;->f:Lqg;

    iget-object v0, p0, Loc;->a:Lqz;

    .line 5
    invoke-virtual {p1, v0}, Lqg;->a(Lqz;)V

    iget-object p1, p0, Loc;->f:Lqg;

    .line 6
    iget-object p1, p1, Lqg;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Loc;->a:Lqz;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Loc;->f:Lqg;

    .line 7
    invoke-virtual {p1}, Lqg;->d()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
