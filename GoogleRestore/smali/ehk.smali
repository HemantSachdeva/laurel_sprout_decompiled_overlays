.class final Lehk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvm;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "internal-retry-policy"

    invoke-static {v0}, Ldvg;->a(Ljava/lang/String;)Ldvg;

    .line 2
    const-string v0, "internal-hedging-policy"

    invoke-static {v0}, Ldvg;->a(Ljava/lang/String;)Ldvg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lehk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldvh;Ldvi;)Ldvl;
    .locals 12

    iget-object v0, p0, Lehk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lefw;->b:Ljava/util/Map;

    iget-object v2, p1, Ldxx;->b:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefv;

    if-nez v1, :cond_1

    iget-object v1, p1, Ldxx;->c:Ljava/lang/String;

    iget-object v2, v0, Lefw;->c:Ljava/util/Map;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefv;

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, v0, Lefw;->a:Lefv;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 4
    :goto_0
    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p3, p1, p2}, Ldvi;->a(Ldxx;Ldvh;)Ldvl;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, v0, Lefv;->a:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ldwc;->b:Ldyr;

    if-eqz v3, :cond_5

    new-instance v11, Ldwc;

    .line 9
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/4 v10, 0x0

    .line 11
    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Ldwc;-><init>(Ldyr;JJ[B)V

    iget-object v1, p2, Ldvh;->b:Ldwc;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v11, v1}, Ldwc;->a(Ldwc;)I

    move-result v1

    if-gez v1, :cond_6

    :cond_4
    new-instance v1, Ldvh;

    .line 13
    invoke-direct {v1, p2}, Ldvh;-><init>(Ldvh;)V

    iput-object v11, v1, Ldvh;->b:Ldwc;

    move-object p2, v1

    goto :goto_1

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 26
    const-string p2, "units"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    :goto_1
    iget-object v1, v0, Lefv;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ldvh;

    .line 17
    invoke-direct {v1, p2}, Ldvh;-><init>(Ldvh;)V

    .line 18
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, v1, Ldvh;->e:Ljava/lang/Boolean;

    move-object p2, v1

    goto :goto_2

    .line 21
    :cond_7
    new-instance v1, Ldvh;

    .line 15
    invoke-direct {v1, p2}, Ldvh;-><init>(Ldvh;)V

    .line 16
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, v1, Ldvh;->e:Ljava/lang/Boolean;

    move-object p2, v1

    .line 18
    :cond_8
    :goto_2
    iget-object v1, v0, Lefv;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v2, p2, Ldvh;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lefv;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 20
    invoke-virtual {p2, v1}, Ldvh;->a(I)Ldvh;

    move-result-object p2

    goto :goto_3

    .line 21
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ldvh;->a(I)Ldvh;

    move-result-object p2

    .line 20
    :cond_a
    :goto_3
    iget-object v1, v0, Lefv;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v2, p2, Ldvh;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lefv;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    invoke-virtual {p2, v0}, Ldvh;->b(I)Ldvh;

    move-result-object p2

    goto :goto_4

    .line 24
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ldvh;->b(I)Ldvh;

    move-result-object p2

    goto :goto_4

    :cond_c
    nop

    .line 25
    :goto_4
    invoke-virtual {p3, p1, p2}, Ldvi;->a(Ldxx;Ldvh;)Ldvl;

    move-result-object p1

    return-object p1
.end method
