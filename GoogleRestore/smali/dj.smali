.class public Ldj;
.super Landroid/app/Activity;
.source "PG"

# interfaces
.implements Ll;
.implements Lfo;


# instance fields
.field private final a:Lj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lto;

    .line 2
    invoke-direct {v0}, Lto;-><init>()V

    new-instance v0, Lj;

    .line 3
    invoke-direct {v0, p0}, Lj;-><init>(Ll;)V

    iput-object v0, p0, Ldj;->a:Lj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public ab()Lj;
    .locals 1

    iget-object v0, p0, Ldj;->a:Lj;

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Ldj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lge;->b()V

    .line 6
    :cond_0
    invoke-static {p0, p1}, Ley;->a(Lfo;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Ldj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lge;->b()V

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-static {p0}, Lwe;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Ldj;->a:Lj;

    .line 12
    sget-object v1, Li;->c:Li;

    .line 13
    invoke-virtual {v0, v1}, Lj;->a(Li;)V

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
