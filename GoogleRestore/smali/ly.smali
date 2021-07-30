.class final Lly;
.super Los;
.source "PG"


# instance fields
.field final synthetic a:Llz;


# direct methods
.method public constructor <init>(Llz;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lly;->a:Llz;

    .line 1
    invoke-direct {p0, p2}, Los;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Llh;
    .locals 1

    iget-object v0, p0, Lly;->a:Llz;

    .line 2
    iget-object v0, v0, Llz;->a:Lmc;

    iget-object v0, v0, Lmc;->i:Lma;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Llb;->a()Lkz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lly;->a:Llz;

    .line 4
    iget-object v0, v0, Llz;->a:Lmc;

    invoke-virtual {v0}, Lmc;->c()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lly;->a:Llz;

    .line 5
    iget-object v0, v0, Llz;->a:Lmc;

    iget-object v1, v0, Lmc;->k:Llx;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lmc;->d()Z

    const/4 v0, 0x1

    return v0
.end method
