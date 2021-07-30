.class final Lmb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field final synthetic a:Lmc;


# direct methods
.method public constructor <init>(Lmc;)V
    .locals 0

    iput-object p1, p0, Lmb;->a:Lmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkp;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lll;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lkp;->j()Lkp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkp;->a(Z)V

    :cond_0
    iget-object v0, p0, Lmb;->a:Lmc;

    iget-object v0, v0, Lkc;->e:Llc;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2}, Llc;->a(Lkp;Z)V

    :cond_1
    return-void
.end method

.method public final a(Lkp;)Z
    .locals 3

    iget-object v0, p0, Lmb;->a:Lmc;

    iget-object v1, v0, Lmc;->c:Lkp;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 4
    :cond_0
    move-object v1, p1

    check-cast v1, Lll;

    iget-object v1, v1, Lll;->k:Lks;

    iget v1, v1, Lks;->a:I

    iput v1, v0, Lmc;->m:I

    iget-object v0, v0, Lkc;->e:Llc;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Llc;->a(Lkp;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method
