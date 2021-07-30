.class public final Ldyc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lefh;

.field public final b:Ldyg;

.field public final synthetic c:Lefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lefs;Lefh;Ldyg;)V
    .locals 0

    iput-object p1, p0, Ldyc;->c:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldyc;->a:Lefh;

    .line 1
    const-string p1, "resolver"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ldyc;->b:Ldyg;

    return-void
.end method


# virtual methods
.method public final a(Ldye;)V
    .locals 2

    iget-object v0, p0, Ldyc;->c:Lefs;

    iget-object v0, v0, Lefs;->k:Ldzb;

    new-instance v1, Lefj;

    .line 14
    invoke-direct {v1, p0, p1}, Lefj;-><init>(Ldyc;Ldye;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldyv;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldyc;->c:Lefs;

    iget-object v0, v0, Lefs;->k:Ldzb;

    new-instance v1, Lefi;

    .line 13
    invoke-direct {v1, p0, p1}, Lefi;-><init>(Ldyc;Ldyv;)V

    invoke-virtual {v0, v1}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ldyv;)V
    .locals 8

    .line 2
    sget-object v0, Lefs;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ldyc;->c:Lefs;

    iget-object v2, v2, Lefs;->f:Ldwp;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object p1, v5, v7

    const-string v2, "io.grpc.internal.ManagedChannelImpl$NameResolverListener"

    const-string v3, "handleErrorInSyncContext"

    const-string v4, "[{0}] Failed to resolve name. status={1}"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldyc;->c:Lefs;

    iget v1, v0, Lefs;->H:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lefs;->A:Ldvj;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 3
    const-string v3, "Failed to resolve name: {0}"

    invoke-virtual {v0, v2, v3, v1}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldyc;->c:Lefs;

    iput v2, v0, Lefs;->H:I

    :cond_0
    iget-object v0, p0, Ldyc;->a:Lefh;

    iget-object v1, p0, Ldyc;->c:Lefs;

    iget-object v1, v1, Lefs;->p:Lefh;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lefh;->a:Leah;

    iget-object v0, v0, Leah;->b:Ldxf;

    .line 4
    invoke-virtual {v0, p1}, Ldxf;->a(Ldyv;)V

    iget-object p1, p0, Ldyc;->c:Lefs;

    iget-object v0, p1, Lefs;->G:Ldza;

    if-eqz v0, :cond_3

    iget-object v0, v0, Ldza;->a:Ldyz;

    iget-boolean v1, v0, Ldyz;->c:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Ldyz;->b:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    return-void

    .line 4
    :cond_3
    :goto_0
    iget-object v0, p1, Lefs;->J:Ledb;

    if-nez v0, :cond_4

    .line 5
    invoke-static {}, Leda;->a()Ledb;

    move-result-object v0

    iput-object v0, p1, Lefs;->J:Ledb;

    :cond_4
    iget-object p1, p0, Ldyc;->c:Lefs;

    iget-object p1, p1, Lefs;->J:Ledb;

    .line 6
    invoke-virtual {p1}, Ledb;->a()J

    move-result-wide v2

    iget-object p1, p0, Ldyc;->c:Lefs;

    iget-object p1, p1, Lefs;->A:Ldvj;

    new-array v0, v7, [Ljava/lang/Object;

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    .line 8
    const-string v1, "Scheduling DNS resolution backoff for {0} ns"

    invoke-virtual {p1, v7, v1, v0}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Ldyc;->c:Lefs;

    iget-object v0, p1, Lefs;->k:Ldzb;

    new-instance v1, Lefb;

    .line 9
    invoke-direct {v1, p1}, Lefb;-><init>(Lefs;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ldyc;->c:Lefs;

    iget-object v5, v5, Lefs;->g:Lebh;

    .line 10
    invoke-interface {v5}, Lebh;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 11
    invoke-virtual/range {v0 .. v5}, Ldzb;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ldza;

    move-result-object v0

    iput-object v0, p1, Lefs;->G:Ldza;

    return-void
.end method
