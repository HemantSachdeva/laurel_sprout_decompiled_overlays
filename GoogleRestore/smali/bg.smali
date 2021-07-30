.class final Lbg;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lba;

.field final synthetic d:Lue;

.field final synthetic e:Lbr;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lba;Lbr;Lue;)V
    .locals 0

    iput-object p1, p0, Lbg;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lbg;->b:Landroid/view/View;

    iput-object p3, p0, Lbg;->c:Lba;

    iput-object p4, p0, Lbg;->e:Lbr;

    iput-object p5, p0, Lbg;->d:Lue;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lbg;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lbg;->b:Landroid/view/View;

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Lbg;->c:Lba;

    iget-object v0, p1, Lba;->O:Lay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lay;->b:Landroid/animation/Animator;

    .line 2
    :goto_0
    nop

    .line 3
    invoke-virtual {p1, v1}, Lba;->a(Landroid/animation/Animator;)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lbg;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lbg;->b:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lbg;->e:Lbr;

    iget-object v0, p0, Lbg;->c:Lba;

    iget-object v1, p0, Lbg;->d:Lue;

    .line 5
    invoke-virtual {p1, v0, v1}, Lbr;->b(Lba;Lue;)V

    :cond_1
    return-void
.end method
