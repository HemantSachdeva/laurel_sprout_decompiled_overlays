.class public final Lsc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lto;

.field public final b:Ltm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lto;

    .line 1
    invoke-direct {v0}, Lto;-><init>()V

    iput-object v0, p0, Lsc;->a:Lto;

    new-instance v0, Ltm;

    .line 2
    invoke-direct {v0}, Ltm;-><init>()V

    iput-object v0, p0, Lsc;->b:Ltm;

    return-void
.end method


# virtual methods
.method public final a(Lqz;I)Lqf;
    .locals 4

    iget-object v0, p0, Lsc;->a:Lto;

    .line 16
    invoke-virtual {v0, p1}, Lto;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lsc;->a:Lto;

    .line 17
    invoke-virtual {v1, p1}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb;

    if-eqz v1, :cond_4

    iget v2, v1, Lsb;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Lsb;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Lsb;->b:Lqf;

    goto :goto_0

    .line 19
    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Lsb;->c:Lqf;

    .line 17
    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lsc;->a:Lto;

    .line 18
    invoke-virtual {v0, p1}, Lto;->d(I)Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Lsb;->a(Lsb;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lsc;->a:Lto;

    .line 13
    invoke-virtual {v0}, Lto;->clear()V

    iget-object v0, p0, Lsc;->b:Ltm;

    .line 14
    invoke-virtual {v0}, Ltm;->d()V

    return-void
.end method

.method public final a(JLqz;)V
    .locals 1

    iget-object v0, p0, Lsc;->b:Ltm;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ltm;->a(JLjava/lang/Object;)V

    return-void
.end method

.method public final a(Lqz;Lqf;)V
    .locals 2

    iget-object v0, p0, Lsc;->a:Lto;

    .line 10
    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lsb;->a()Lsb;

    move-result-object v0

    iget-object v1, p0, Lsc;->a:Lto;

    .line 12
    invoke-virtual {v1, p1, v0}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object p2, v0, Lsb;->b:Lqf;

    iget p1, v0, Lsb;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lsb;->a:I

    return-void
.end method

.method public final a(Lqz;)Z
    .locals 1

    iget-object v0, p0, Lsc;->a:Lto;

    .line 15
    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb;

    if-eqz p1, :cond_0

    iget p1, p1, Lsb;->a:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(Lqz;)V
    .locals 2

    iget-object v0, p0, Lsc;->a:Lto;

    .line 3
    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lsb;->a()Lsb;

    move-result-object v0

    iget-object v1, p0, Lsc;->a:Lto;

    .line 5
    invoke-virtual {v1, p1, v0}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iget p1, v0, Lsb;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lsb;->a:I

    return-void
.end method

.method public final b(Lqz;Lqf;)V
    .locals 2

    iget-object v0, p0, Lsc;->a:Lto;

    .line 7
    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lsb;->a()Lsb;

    move-result-object v0

    iget-object v1, p0, Lsc;->a:Lto;

    .line 9
    invoke-virtual {v1, p1, v0}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object p2, v0, Lsb;->c:Lqf;

    iget p1, v0, Lsb;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lsb;->a:I

    return-void
.end method

.method final c(Lqz;)V
    .locals 1

    iget-object v0, p0, Lsc;->a:Lto;

    .line 21
    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lsb;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lsb;->a:I

    return-void
.end method

.method final d(Lqz;)V
    .locals 4

    iget-object v0, p0, Lsc;->b:Ltm;

    .line 22
    invoke-virtual {v0}, Ltm;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lsc;->b:Ltm;

    .line 23
    invoke-virtual {v1, v0}, Ltm;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lsc;->b:Ltm;

    iget-object v2, v1, Ltm;->d:[Ljava/lang/Object;

    .line 24
    aget-object v2, v2, v0

    sget-object v3, Ltm;->a:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Ltm;->d:[Ljava/lang/Object;

    sget-object v3, Ltm;->a:Ljava/lang/Object;

    .line 25
    aput-object v3, v2, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Ltm;->b:Z

    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    iget-object v0, p0, Lsc;->a:Lto;

    .line 26
    invoke-virtual {v0, p1}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb;

    if-eqz p1, :cond_2

    .line 27
    invoke-static {p1}, Lsb;->a(Lsb;)V

    :cond_2
    return-void
.end method
