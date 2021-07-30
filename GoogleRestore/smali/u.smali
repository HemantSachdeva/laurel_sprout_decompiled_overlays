.class public final Lu;
.super Lv;
.source "PG"


# instance fields
.field public j:Lcsi;

.field public k:Lcsi;

.field public l:Lahe;

.field public m:Lagw;

.field private n:Lta;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv;-><init>()V

    new-instance v0, Lta;

    .line 2
    invoke-direct {v0}, Lta;-><init>()V

    iput-object v0, p0, Lu;->n:Lta;

    return-void
.end method

.method public constructor <init>(Ls;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lu;-><init>()V

    new-instance v0, Lago;

    .line 13
    invoke-direct {v0, p0}, Lago;-><init>(Lu;)V

    invoke-virtual {p0, p1, v0}, Lu;->a(Ls;Lw;)V

    return-void
.end method

.method public constructor <init>(Ls;Ls;Ls;Ls;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lu;-><init>()V

    new-instance v0, Lagp;

    .line 15
    invoke-direct {v0, p0}, Lagp;-><init>(Lu;)V

    invoke-virtual {p0, p1, v0}, Lu;->a(Ls;Lw;)V

    new-instance p1, Lagq;

    .line 16
    invoke-direct {p1, p0}, Lagq;-><init>(Lu;)V

    invoke-virtual {p0, p2, p1}, Lu;->a(Ls;Lw;)V

    new-instance p1, Lagr;

    .line 17
    invoke-direct {p1, p0}, Lagr;-><init>(Lu;)V

    invoke-virtual {p0, p3, p1}, Lu;->a(Ls;Lw;)V

    if-nez p4, :cond_0

    .line 18
    sget-object p1, Lagw;->a:Lagw;

    iput-object p1, p0, Lu;->m:Lagw;

    return-void

    :cond_0
    new-instance p1, Lags;

    .line 19
    invoke-direct {p1, p0}, Lags;-><init>(Lu;)V

    invoke-virtual {p0, p4, p1}, Lu;->a(Ls;Lw;)V

    return-void
.end method


# virtual methods
.method public final a(Ls;Lw;)V
    .locals 2

    new-instance v0, Lt;

    .line 3
    invoke-direct {v0, p1, p2}, Lt;-><init>(Ls;Lw;)V

    iget-object v1, p0, Lu;->n:Lta;

    .line 4
    invoke-virtual {v1, p1, v0}, Lta;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lt;->b:Lw;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ls;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v0}, Lt;->a()V

    return-void

    .line 6
    :cond_3
    return-void
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lu;->n:Lta;

    .line 7
    invoke-virtual {v0}, Lta;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt;

    invoke-virtual {v1}, Lt;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Lu;->n:Lta;

    .line 9
    invoke-virtual {v0}, Lta;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt;

    iget-object v2, v1, Lt;->a:Ls;

    .line 11
    invoke-virtual {v2, v1}, Ls;->b(Lw;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lu;->j:Lcsi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu;->k:Lcsi;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lu;->l:Lahe;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lu;->m:Lagw;

    if-eqz v3, :cond_0

    .line 20
    invoke-static {v0, v1, v2, v3}, Lagn;->a(Lcsi;Lcsi;Lahe;Lagw;)Lagn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
