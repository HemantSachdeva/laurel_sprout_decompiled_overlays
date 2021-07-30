.class final Lim;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljn;


# instance fields
.field final synthetic a:Liv;

.field private final b:Ljn;


# direct methods
.method public constructor <init>(Liv;Ljn;)V
    .locals 0

    iput-object p1, p0, Lim;->a:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lim;->b:Ljn;

    return-void
.end method


# virtual methods
.method public final a(Ljo;)V
    .locals 2

    iget-object v0, p0, Lim;->b:Ljn;

    check-cast v0, Ljr;

    iget-object v1, v0, Ljr;->a:Landroid/view/ActionMode$Callback;

    .line 4
    invoke-virtual {v0, p1}, Ljr;->b(Ljo;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lim;->a:Liv;

    iget-object v0, p1, Liv;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Liv;->h:Landroid/view/Window;

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lim;->a:Liv;

    iget-object v0, v0, Liv;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lim;->a:Liv;

    iget-object v0, p1, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Liv;->l()V

    iget-object p1, p0, Lim;->a:Liv;

    iget-object v0, p1, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 7
    invoke-static {v0}, Lge;->l(Landroid/view/View;)Lgi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgi;->a(F)V

    iput-object v0, p1, Liv;->q:Lgi;

    iget-object p1, p0, Lim;->a:Liv;

    iget-object p1, p1, Liv;->q:Lgi;

    new-instance v0, Lil;

    .line 8
    invoke-direct {v0, p0}, Lil;-><init>(Lim;)V

    invoke-virtual {p1, v0}, Lgi;->a(Lgj;)V

    :cond_1
    iget-object p1, p0, Lim;->a:Liv;

    const/4 v0, 0x0

    iput-object v0, p1, Liv;->m:Ljo;

    iget-object p1, p1, Liv;->t:Landroid/view/ViewGroup;

    .line 9
    invoke-static {p1}, Lge;->q(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljo;Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lim;->b:Ljn;

    check-cast v0, Ljr;

    iget-object v1, v0, Ljr;->a:Landroid/view/ActionMode$Callback;

    .line 2
    invoke-virtual {v0, p1}, Ljr;->b(Ljo;)Landroid/view/ActionMode;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p2}, Ljr;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 2
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljo;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lim;->b:Ljn;

    check-cast v0, Ljr;

    iget-object v1, v0, Ljr;->a:Landroid/view/ActionMode$Callback;

    .line 1
    invoke-virtual {v0, p1}, Ljr;->b(Ljo;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v2, Lky;

    iget-object v0, v0, Ljr;->b:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Lky;-><init>(Landroid/content/Context;Leo;)V

    invoke-interface {v1, p1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljo;Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lim;->a:Liv;

    iget-object v0, v0, Liv;->t:Landroid/view/ViewGroup;

    .line 10
    invoke-static {v0}, Lge;->q(Landroid/view/View;)V

    iget-object v0, p0, Lim;->b:Ljn;

    check-cast v0, Ljr;

    iget-object v1, v0, Ljr;->a:Landroid/view/ActionMode$Callback;

    .line 11
    invoke-virtual {v0, p1}, Ljr;->b(Ljo;)Landroid/view/ActionMode;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p2}, Ljr;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 11
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    return-void
.end method
