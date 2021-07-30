.class final Lil;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:Lim;


# direct methods
.method public constructor <init>(Lim;)V
    .locals 0

    iput-object p1, p0, Lil;->a:Lim;

    invoke-direct {p0}, Lgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lil;->a:Lim;

    iget-object v0, v0, Lim;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lil;->a:Lim;

    iget-object v0, v0, Lim;->a:Liv;

    iget-object v1, v0, Liv;->o:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lil;->a:Lim;

    iget-object v0, v0, Lim;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lge;->q(Landroid/view/View;)V

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lil;->a:Lim;

    iget-object v0, v0, Lim;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    iget-object v0, p0, Lil;->a:Lim;

    iget-object v0, v0, Lim;->a:Liv;

    iget-object v0, v0, Liv;->q:Lgi;

    .line 6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgi;->a(Lgj;)V

    iget-object v0, p0, Lil;->a:Lim;

    iget-object v0, v0, Lim;->a:Liv;

    iput-object v1, v0, Liv;->q:Lgi;

    iget-object v0, v0, Liv;->t:Landroid/view/ViewGroup;

    .line 7
    invoke-static {v0}, Lge;->q(Landroid/view/View;)V

    return-void
.end method
