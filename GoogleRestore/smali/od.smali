.class final Lod;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lof;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lqg;


# direct methods
.method public constructor <init>(Lqg;Lof;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lod;->d:Lqg;

    iput-object p2, p0, Lod;->a:Lof;

    iput-object p3, p0, Lod;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lod;->c:Landroid/view/View;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lod;->b:Landroid/view/ViewPropertyAnimator;

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lod;->c:Landroid/view/View;

    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lod;->c:Landroid/view/View;

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lod;->c:Landroid/view/View;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lod;->d:Lqg;

    iget-object v0, p0, Lod;->a:Lof;

    .line 6
    iget-object v0, v0, Lof;->a:Lqz;

    .line 7
    invoke-virtual {p1, v0}, Lqg;->a(Lqz;)V

    iget-object p1, p0, Lod;->d:Lqg;

    .line 8
    iget-object p1, p1, Lqg;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lod;->a:Lof;

    iget-object v0, v0, Lof;->a:Lqz;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lod;->d:Lqg;

    .line 9
    invoke-virtual {p1}, Lqg;->d()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lod;->a:Lof;

    .line 10
    iget-object p1, p1, Lof;->a:Lqz;

    return-void
.end method
