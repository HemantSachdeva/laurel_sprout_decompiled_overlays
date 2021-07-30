.class public Lix;
.super Landroid/app/Dialog;
.source "PG"

# interfaces
.implements Lic;


# instance fields
.field private a:Lid;

.field private final b:Lfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lix;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Liw;

    .line 2
    invoke-direct {v0, p0}, Liw;-><init>(Lix;)V

    iput-object v0, p0, Lix;->b:Lfo;

    .line 3
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    .line 4
    invoke-static {p1, p2}, Lix;->a(Landroid/content/Context;I)I

    move-result p1

    .line 3
    move-object p2, v0

    check-cast p2, Liv;

    iput p1, p2, Liv;->E:I

    .line 5
    invoke-virtual {v0}, Lid;->f()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    .line 13
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040101

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final a()Lid;
    .locals 1

    iget-object v0, p0, Lix;->a:Lid;

    if-nez v0, :cond_0

    .line 12
    invoke-static {p0, p0}, Lid;->a(Landroid/app/Dialog;Lic;)Lid;

    move-result-object v0

    iput-object v0, p0, Lix;->a:Lid;

    :cond_0
    iget-object v0, p0, Lix;->a:Lid;

    return-object v0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lid;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 7
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->d()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lix;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Lix;->b:Lfo;

    .line 10
    invoke-static {v0, p1}, Ley;->a(Lfo;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->c()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->e()V

    .line 18
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object p1

    invoke-virtual {p1}, Lid;->f()V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    .line 20
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 21
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0}, Lid;->b()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->b(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->a(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lid;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 26
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {p0}, Lix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lid;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lix;->a()Lid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lid;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
