.class final Lin;
.super Ljy;
.source "PG"


# instance fields
.field final synthetic a:Liv;


# direct methods
.method public constructor <init>(Liv;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lin;->a:Liv;

    .line 1
    invoke-direct {p0, p2}, Ljy;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lin;->a:Liv;

    .line 2
    invoke-virtual {v0, p1}, Liv;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Ljy;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 4
    invoke-super {p0, p1}, Ljy;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lin;->a:Liv;

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Liv;->a()Lhs;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v3, Ljg;

    iget-object v3, v3, Ljg;->g:Ljf;

    if-nez v3, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    iget-object v3, v3, Ljf;->a:Lkp;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    goto :goto_0

    .line 10
    :cond_1
    const/4 v5, -0x1

    .line 8
    :goto_0
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    .line 10
    :cond_2
    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-interface {v3, v5}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 10
    invoke-interface {v3, v2, p1, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    :goto_2
    iget-object v2, v0, Liv;->A:Lit;

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Liv;->a(Lit;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, v0, Liv;->A:Lit;

    if-eqz p1, :cond_6

    iput-boolean v1, p1, Lit;->l:Z

    goto :goto_3

    :cond_4
    iget-object v2, v0, Liv;->A:Lit;

    if-nez v2, :cond_5

    .line 12
    invoke-virtual {v0, v4}, Liv;->e(I)Lit;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2, p1}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Liv;->a(Lit;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v4, v2, Lit;->k:Z

    if-nez p1, :cond_6

    :cond_5
    return v4

    .line 11
    :cond_6
    :goto_3
    return v1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 15
    instance-of p1, p2, Lkp;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Ljy;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 17
    invoke-super {p0, p1, p2}, Ljy;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Lin;->a:Liv;

    const/4 v0, 0x1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 18
    invoke-virtual {p2}, Liv;->a()Lhs;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1, v0}, Lhs;->c(Z)V

    :cond_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 20
    invoke-super {p0, p1, p2}, Ljy;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Lin;->a:Liv;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 21
    invoke-virtual {p2}, Liv;->a()Lhs;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Lhs;->c(Z)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 23
    invoke-virtual {p2, v0}, Liv;->e(I)Lit;

    move-result-object p1

    iget-boolean v1, p1, Lit;->m:Z

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p2, p1, v0}, Liv;->a(Lit;Z)V

    return-void

    .line 22
    :cond_1
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 25
    instance-of v0, p3, Lkp;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkp;

    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 26
    :cond_1
    return v1

    .line 25
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v0, Lkp;->i:Z

    .line 26
    :cond_3
    invoke-super {p0, p1, p2, p3}, Ljy;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_4

    iput-boolean v1, v0, Lkp;->i:Z

    :cond_4
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Lin;->a:Liv;

    .line 27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liv;->e(I)Lit;

    move-result-object v0

    iget-object v0, v0, Lit;->h:Lkp;

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1, v0, p3}, Ljy;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    .line 28
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljy;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6

    iget-object v0, p0, Lin;->a:Liv;

    iget-boolean v1, v0, Liv;->r:Z

    if-eqz v1, :cond_7

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p2, Ljr;

    iget-object v0, v0, Liv;->g:Landroid/content/Context;

    .line 31
    invoke-direct {p2, v0, p1}, Ljr;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Lin;->a:Liv;

    iget-object v0, p1, Liv;->m:Ljo;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Ljo;->c()V

    :cond_1
    new-instance v0, Lim;

    .line 33
    invoke-direct {v0, p1, p2}, Lim;-><init>(Liv;Ljn;)V

    .line 34
    invoke-virtual {p1}, Liv;->a()Lhs;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v1, Ljg;

    iget-object v3, v1, Ljg;->g:Ljf;

    if-eqz v3, :cond_2

    .line 35
    invoke-virtual {v3}, Ljf;->c()V

    .line 34
    :cond_2
    iget-object v3, v1, Ljg;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Z)V

    .line 34
    iget-object v3, v1, Ljg;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 37
    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    new-instance v3, Ljf;

    .line 34
    iget-object v4, v1, Ljg;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 38
    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 34
    nop

    .line 38
    invoke-direct {v3, v1, v4, v0}, Ljf;-><init>(Ljg;Landroid/content/Context;Ljn;)V

    iget-object v4, v3, Ljf;->a:Lkp;

    .line 39
    invoke-virtual {v4}, Lkp;->e()V

    :try_start_0
    iget-object v4, v3, Ljf;->b:Ljn;

    iget-object v5, v3, Ljf;->a:Lkp;

    .line 40
    invoke-interface {v4, v3, v5}, Ljn;->a(Ljo;Landroid/view/Menu;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v3, Ljf;->a:Lkp;

    .line 41
    invoke-virtual {v5}, Lkp;->f()V

    if-eqz v4, :cond_3

    .line 34
    iput-object v3, v1, Ljg;->g:Ljf;

    .line 43
    invoke-virtual {v3}, Ljf;->d()V

    .line 34
    iget-object v4, v1, Ljg;->e:Landroid/support/v7/widget/ActionBarContextView;

    .line 44
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ActionBarContextView;->a(Ljo;)V

    .line 34
    const/4 v4, 0x1

    .line 45
    invoke-virtual {v1, v4}, Ljg;->f(Z)V

    .line 34
    iget-object v1, v1, Ljg;->e:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v4, 0x20

    .line 46
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 48
    :cond_3
    move-object v3, v2

    .line 46
    :goto_0
    iput-object v3, p1, Liv;->m:Ljo;

    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    iget-object p2, v3, Ljf;->a:Lkp;

    .line 41
    invoke-virtual {p2}, Lkp;->f()V

    .line 42
    throw p1

    .line 46
    :cond_4
    :goto_1
    iget-object v1, p1, Liv;->m:Ljo;

    if-nez v1, :cond_5

    .line 47
    invoke-virtual {p1, v0}, Liv;->a(Ljn;)Ljo;

    move-result-object v0

    iput-object v0, p1, Liv;->m:Ljo;

    :cond_5
    iget-object p1, p1, Liv;->m:Ljo;

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p2, p1}, Ljr;->b(Ljo;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2

    .line 49
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Ljy;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
