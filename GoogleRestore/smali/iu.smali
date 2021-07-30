.class final Liu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field final synthetic a:Liv;


# direct methods
.method public constructor <init>(Liv;)V
    .locals 0

    iput-object p1, p0, Liu;->a:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkp;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lkp;->j()Lkp;

    move-result-object v0

    iget-object v1, p0, Liu;->a:Liv;

    if-eq v0, p1, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_0
    move-object v2, p1

    .line 2
    :goto_0
    invoke-virtual {v1, v2}, Liv;->a(Landroid/view/Menu;)Lit;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Liu;->a:Liv;

    iget p2, v1, Lit;->a:I

    .line 3
    invoke-virtual {p1, p2, v1, v0}, Liv;->a(ILit;Landroid/view/Menu;)V

    iget-object p1, p0, Liu;->a:Liv;

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, v1, p2}, Liv;->a(Lit;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Liu;->a:Liv;

    .line 5
    invoke-virtual {p1, v1, p2}, Liv;->a(Lit;Z)V

    :cond_2
    return-void
.end method

.method public final a(Lkp;)Z
    .locals 2

    .line 6
    invoke-virtual {p1}, Lkp;->j()Lkp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Liu;->a:Liv;

    iget-boolean v1, v0, Liv;->v:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Liu;->a:Liv;

    iget-boolean v1, v1, Liv;->D:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 8
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
