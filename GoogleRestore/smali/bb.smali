.class final Lbb;
.super Lbn;
.source "PG"

# interfaces
.implements Lak;
.implements Lsm;


# instance fields
.field final synthetic a:Lbc;


# direct methods
.method public constructor <init>(Lbc;)V
    .locals 1

    iput-object p1, p0, Lbb;->a:Lbc;

    new-instance v0, Landroid/os/Handler;

    .line 1
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p1, v0}, Lbn;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbb;->a:Lbc;

    .line 3
    invoke-virtual {v0, p1}, Lbc;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lbb;->a:Lbc;

    .line 4
    invoke-virtual {v0}, Lbc;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ab()Lj;
    .locals 1

    iget-object v0, p0, Lbb;->a:Lbc;

    iget-object v0, v0, Lbc;->h:Lj;

    return-object v0
.end method

.method public final ac()Laj;
    .locals 1

    iget-object v0, p0, Lbb;->a:Lbc;

    .line 2
    invoke-virtual {v0}, Lsi;->ac()Laj;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lbb;->a:Lbc;

    .line 6
    invoke-virtual {v0}, Lbc;->Z()V

    return-void
.end method
