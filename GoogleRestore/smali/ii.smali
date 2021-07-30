.class final Lii;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Liv;


# direct methods
.method public constructor <init>(Liv;)V
    .locals 0

    iput-object p1, p0, Lii;->a:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lii;->a:Liv;

    iget-object v1, v0, Liv;->o:Landroid/widget/PopupWindow;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 1
    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lii;->a:Liv;

    .line 2
    invoke-virtual {v0}, Liv;->l()V

    iget-object v0, p0, Lii;->a:Liv;

    .line 3
    invoke-virtual {v0}, Liv;->k()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lii;->a:Liv;

    iget-object v2, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 5
    invoke-static {v2}, Lge;->l(Landroid/view/View;)Lgi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgi;->a(F)V

    iput-object v2, v0, Liv;->q:Lgi;

    iget-object v0, p0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->q:Lgi;

    new-instance v1, Lih;

    .line 6
    invoke-direct {v1, p0}, Lih;-><init>(Lii;)V

    invoke-virtual {v0, v1}, Lgi;->a(Lgj;)V

    return-void

    :cond_0
    iget-object v0, p0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 7
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 8
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
