.class final Lob;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lqz;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Lqg;


# direct methods
.method public constructor <init>(Lqg;Lqz;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lob;->d:Lqg;

    iput-object p2, p0, Lob;->a:Lqz;

    iput-object p3, p0, Lob;->b:Landroid/view/View;

    iput-object p4, p0, Lob;->c:Landroid/view/ViewPropertyAnimator;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lob;->b:Landroid/view/View;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lob;->c:Landroid/view/ViewPropertyAnimator;

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lob;->d:Lqg;

    iget-object v0, p0, Lob;->a:Lqz;

    .line 4
    invoke-virtual {p1, v0}, Lqg;->a(Lqz;)V

    iget-object p1, p0, Lob;->d:Lqg;

    .line 5
    iget-object p1, p1, Lqg;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lob;->a:Lqz;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lob;->d:Lqg;

    .line 6
    invoke-virtual {p1}, Lqg;->d()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
