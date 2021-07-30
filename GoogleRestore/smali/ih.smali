.class final Lih;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:Lii;


# direct methods
.method public constructor <init>(Lii;)V
    .locals 0

    iput-object p1, p0, Lih;->a:Lii;

    invoke-direct {p0}, Lgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lih;->a:Lii;

    iget-object v0, v0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lih;->a:Lii;

    iget-object v0, v0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->q:Lgi;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgi;->a(Lgj;)V

    iget-object v0, p0, Lih;->a:Lii;

    iget-object v0, v0, Lii;->a:Liv;

    iput-object v1, v0, Liv;->q:Lgi;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lih;->a:Lii;

    iget-object v0, v0, Lii;->a:Liv;

    iget-object v0, v0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
