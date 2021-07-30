.class public final Lcax;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbvt;
.implements Lcau;


# instance fields
.field private final a:Lcbh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbvr;Lczw;Leip;Leip;Lbtr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcay;

    .line 1
    invoke-direct {v0, p3}, Lcay;-><init>(Leip;)V

    .line 2
    invoke-static {v0}, Lcbh;->a(Leip;)Lcbh;

    move-result-object v0

    iput-object v0, p0, Lcax;->a:Lcbh;

    .line 3
    invoke-virtual {p1, p2, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    new-instance p1, Lcaz;

    .line 4
    invoke-direct {p1, p3, p4}, Lcaz;-><init>(Leip;Leip;)V

    .line 5
    invoke-static {p1}, Lcrq;->a(Lcrm;)Lcrm;

    .line 6
    invoke-virtual {p5, p0}, Lbtr;->b(Lbts;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 7
    sget-object v0, Lcbi;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwq;

    if-nez v0, :cond_0

    .line 9
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcbi;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 9
    check-cast v0, Lctz;

    const/16 v2, 0x5d

    const-string v3, "com/google/android/libraries/performance/primes/tracing/Tracer"

    const-string v4, "cancel"

    const-string v5, "Tracer.java"

    invoke-interface {v0, v3, v4, v2, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    .line 10
    sget-object v0, Lcbi;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
