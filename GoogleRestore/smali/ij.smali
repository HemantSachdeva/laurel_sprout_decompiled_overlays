.class final Lij;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:Liv;


# direct methods
.method public constructor <init>(Liv;)V
    .locals 0

    iput-object p1, p0, Lij;->a:Liv;

    invoke-direct {p0}, Lgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lij;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lij;->a:Liv;

    iget-object v0, v0, Liv;->q:Lgi;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgi;->a(Lgj;)V

    iget-object v0, p0, Lij;->a:Liv;

    iput-object v1, v0, Liv;->q:Lgi;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lij;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lij;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 4
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lij;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lij;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 6
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lge;->q(Landroid/view/View;)V

    :cond_0
    return-void
.end method
