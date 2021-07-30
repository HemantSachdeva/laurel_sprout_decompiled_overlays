.class public final Llw;
.super Llb;
.source "PG"


# instance fields
.field final synthetic d:Lmc;


# direct methods
.method public constructor <init>(Lmc;Landroid/content/Context;Lll;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Llw;->d:Lmc;

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Llb;-><init>(Landroid/content/Context;Lkp;Landroid/view/View;Z)V

    iget-object p2, p3, Lll;->k:Lks;

    invoke-virtual {p2}, Lks;->f()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lmc;->g:Llz;

    if-nez p2, :cond_0

    iget-object p2, p1, Lmc;->f:Llf;

    .line 2
    check-cast p2, Landroid/view/View;

    :cond_0
    iput-object p2, p0, Llb;->a:Landroid/view/View;

    :cond_1
    iget-object p1, p1, Lmc;->l:Lmb;

    .line 3
    invoke-virtual {p0, p1}, Llb;->a(Llc;)V

    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 2

    iget-object v0, p0, Llw;->d:Lmc;

    const/4 v1, 0x0

    iput-object v1, v0, Lmc;->j:Llw;

    const/4 v1, 0x0

    iput v1, v0, Lmc;->m:I

    .line 4
    invoke-super {p0}, Llb;->d()V

    return-void
.end method
