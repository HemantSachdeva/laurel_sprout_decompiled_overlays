.class public final Lcty;
.super Lcuf;
.source "PG"

# interfaces
.implements Lcup;
.implements Lctz;


# instance fields
.field final synthetic a:Lcua;


# direct methods
.method public constructor <init>(Lcua;Ljava/util/logging/Level;Z)V
    .locals 0

    iput-object p1, p0, Lcty;->a:Lcua;

    .line 26
    invoke-direct {p0, p2, p3}, Lcuf;-><init>(Ljava/util/logging/Level;Z)V

    return-void
.end method


# virtual methods
.method protected final a()Lcwh;
    .locals 1

    .line 1
    sget-object v0, Lcwf;->a:Lcwj;

    return-object v0
.end method

.method protected final a(Lcuj;)Z
    .locals 11

    invoke-virtual {p0}, Lcuf;->j()Lcvc;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcvc;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Lcvc;->a(I)Lcuq;

    move-result-object v4

    iget-object v4, v4, Lcuq;->a:Ljava/lang/String;

    const-string v5, "eye3tag"

    if-ne v4, v5, :cond_0

    .line 4
    sget-object v1, Lcuc;->a:Lcuq;

    invoke-virtual {v0, v1}, Lcvc;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcuc;->g:Lcuq;

    .line 5
    invoke-virtual {v0, v1}, Lcvc;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcuc;->g:Lcuq;

    .line 6
    sget-object v1, Lcur;->a:Lcur;

    invoke-virtual {p0, v0, v1}, Lcuf;->a(Lcuq;Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcuf;->b:Lcud;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 7
    sget-object v4, Lcuc;->b:Lcuq;

    invoke-virtual {v0, v4}, Lcud;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcuf;->b:Lcud;

    sget-object v5, Lcuc;->c:Lcuq;

    .line 8
    invoke-virtual {v4, v5}, Lcud;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcul;

    .line 9
    sget-object v5, Lcun;->a:Lcum;

    iget-object v6, v5, Lcum;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    invoke-interface {v6, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcun;

    if-nez v6, :cond_3

    new-instance v6, Lcun;

    .line 11
    invoke-direct {v6}, Lcun;-><init>()V

    iget-object v5, v5, Lcum;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    invoke-interface {v5, p1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcun;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, p1

    goto :goto_2

    .line 24
    :cond_3
    nop

    .line 12
    :goto_2
    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, v6, Lcun;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    int-to-long v9, p1

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-nez p1, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    goto/16 :goto_8

    .line 14
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    goto :goto_4

    .line 24
    :cond_6
    iget-object p1, v6, Lcun;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    throw v1

    .line 14
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcuf;->j()Lcvc;

    move-result-object p1

    .line 15
    sget-object v0, Lcuc;->g:Lcuq;

    invoke-virtual {p1, v0}, Lcvc;->b(Lcuq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcur;

    if-eqz p1, :cond_b

    sget-object v0, Lcuc;->g:Lcuq;

    iget-object v2, p0, Lcuf;->b:Lcud;

    if-eqz v2, :cond_a

    .line 16
    invoke-virtual {v2, v0}, Lcud;->a(Lcuq;)I

    move-result v4

    if-ltz v4, :cond_a

    add-int/2addr v4, v4

    add-int/lit8 v5, v4, 0x2

    :goto_5
    iget v6, v2, Lcud;->b:I

    add-int v7, v6, v6

    if-ge v5, v7, :cond_9

    iget-object v6, v2, Lcud;->a:[Ljava/lang/Object;

    .line 17
    aget-object v6, v6, v5

    .line 18
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v2, Lcud;->a:[Ljava/lang/Object;

    .line 19
    aput-object v6, v7, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    .line 20
    aget-object v8, v7, v8

    aput-object v8, v7, v6

    add-int/lit8 v4, v4, 0x2

    :cond_8
    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    :cond_9
    sub-int v0, v5, v4

    shr-int/2addr v0, v3

    sub-int/2addr v6, v0

    iput v6, v2, Lcud;->b:I

    :goto_6
    if-ge v4, v5, :cond_a

    add-int/lit8 v0, v4, 0x1

    iget-object v6, v2, Lcud;->a:[Ljava/lang/Object;

    .line 21
    aput-object v1, v6, v4

    move v4, v0

    goto :goto_6

    :cond_a
    new-instance v0, Lcuk;

    invoke-virtual {p0}, Lcuf;->j()Lcvc;

    move-result-object v1

    sget-object v2, Lcuc;->a:Lcuq;

    .line 22
    invoke-virtual {v1, v2}, Lcvc;->b(Lcuq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-class v4, Lcuf;

    iget v5, p1, Lcur;->f:I

    .line 23
    invoke-static {v4, v2, v5}, Lcwk;->a(Ljava/lang/Class;Ljava/lang/Throwable;I)[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcuk;-><init>(Ljava/lang/Throwable;Lcur;[Ljava/lang/StackTraceElement;)V

    sget-object p1, Lcuc;->a:Lcuq;

    .line 24
    invoke-virtual {p0, p1, v0}, Lcuf;->a(Lcuq;Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    nop

    :goto_7
    const/4 v2, 0x1

    :goto_8
    return v2
.end method

.method protected final bridge synthetic b()Lctx;
    .locals 1

    iget-object v0, p0, Lcty;->a:Lcua;

    return-object v0
.end method
