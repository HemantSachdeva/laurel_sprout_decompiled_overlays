.class final Ljc;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:Ljg;


# direct methods
.method public constructor <init>(Ljg;)V
    .locals 0

    iput-object p1, p0, Ljc;->a:Ljg;

    invoke-direct {p0}, Lgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Ljc;->a:Ljg;

    iget-boolean v1, v0, Ljg;->k:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Ljg;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Ljc;->a:Ljg;

    iget-object v0, v0, Ljg;->c:Landroid/support/v7/widget/ActionBarContainer;

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Ljc;->a:Ljg;

    iget-object v0, v0, Ljg;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Ljc;->a:Ljg;

    iget-object v0, v0, Ljg;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->a(Z)V

    iget-object v0, p0, Ljc;->a:Ljg;

    const/4 v1, 0x0

    iput-object v1, v0, Ljg;->n:Ljx;

    iget-object v2, v0, Ljg;->i:Ljn;

    if-eqz v2, :cond_1

    iget-object v3, v0, Ljg;->h:Ljo;

    .line 5
    invoke-interface {v2, v3}, Ljn;->a(Ljo;)V

    iput-object v1, v0, Ljg;->h:Ljo;

    iput-object v1, v0, Ljg;->i:Ljn;

    :cond_1
    iget-object v0, p0, Ljc;->a:Ljg;

    iget-object v0, v0, Ljg;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lge;->q(Landroid/view/View;)V

    :cond_2
    return-void
.end method
