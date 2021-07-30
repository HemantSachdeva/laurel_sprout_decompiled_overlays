.class public abstract Lbib;
.super Lbhl;
.source "PG"

# interfaces
.implements Lben;


# instance fields
.field public final p:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILbho;Lbfu;Lbgp;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lbid;->a(Landroid/content/Context;)Lbid;

    move-result-object v3

    .line 2
    sget-object v4, Lbdy;->a:Lbdy;

    .line 3
    invoke-static {p5}, Lbir;->a(Ljava/lang/Object;)V

    .line 4
    invoke-static {p6}, Lbir;->a(Ljava/lang/Object;)V

    new-instance v6, Lbhz;

    .line 5
    invoke-direct {v6, p5}, Lbhz;-><init>(Lbfu;)V

    new-instance v7, Lbia;

    .line 6
    invoke-direct {v7, p6}, Lbia;-><init>(Lbgp;)V

    iget-object v8, p4, Lbho;->d:Ljava/lang/String;

    .line 7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lbhl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbid;Lbdz;ILbhz;Lbia;Ljava/lang/String;)V

    iget-object p1, p4, Lbho;->b:Ljava/util/Set;

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 9
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lbib;->p:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final k()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lbhl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbib;->p:Ljava/util/Set;

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 0
    :goto_0
    return-object v0
.end method

.method public final p()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()[Lbdv;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lbdv;

    return-object v0
.end method
