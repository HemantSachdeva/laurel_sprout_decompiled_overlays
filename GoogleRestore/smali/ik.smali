.class final Lik;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field final synthetic a:Liv;


# direct methods
.method public constructor <init>(Liv;)V
    .locals 0

    iput-object p1, p0, Lik;->a:Liv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkp;Z)V
    .locals 0

    iget-object p2, p0, Lik;->a:Liv;

    .line 1
    invoke-virtual {p2, p1}, Liv;->a(Lkp;)V

    return-void
.end method

.method public final a(Lkp;)Z
    .locals 2

    iget-object v0, p0, Lik;->a:Liv;

    .line 2
    invoke-virtual {v0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
