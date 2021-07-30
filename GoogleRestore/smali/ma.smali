.class final Lma;
.super Llb;
.source "PG"


# instance fields
.field final synthetic d:Lmc;


# direct methods
.method public constructor <init>(Lmc;Landroid/content/Context;Lkp;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lma;->d:Lmc;

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Llb;-><init>(Landroid/content/Context;Lkp;Landroid/view/View;Z)V

    const p2, 0x800005

    iput p2, p0, Llb;->b:I

    iget-object p1, p1, Lmc;->l:Lmb;

    .line 2
    invoke-virtual {p0, p1}, Llb;->a(Llc;)V

    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 2

    iget-object v0, p0, Lma;->d:Lmc;

    .line 3
    iget-object v0, v0, Lmc;->c:Lkp;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lkp;->close()V

    :cond_0
    iget-object v0, p0, Lma;->d:Lmc;

    const/4 v1, 0x0

    iput-object v1, v0, Lmc;->i:Lma;

    .line 5
    invoke-super {p0}, Llb;->d()V

    return-void
.end method
