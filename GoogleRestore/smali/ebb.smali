.class final Lebb;
.super Ldvl;
.source "PG"


# static fields
.field static final a:J

.field private static final k:Ljava/util/logging/Logger;


# instance fields
.field public final b:Ldxx;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Leap;

.field public final e:Ldwb;

.field public f:Lebc;

.field public volatile g:Z

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Ldwf;

.field public volatile j:Ljava/util/concurrent/ScheduledFuture;

.field private final l:Z

.field private final m:Z

.field private final n:Ldvh;

.field private o:Z

.field private p:Z

.field private q:Leba;

.field private volatile r:Ljava/util/concurrent/ScheduledFuture;

.field private s:Z

.field private final t:Lefa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lebb;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lebb;->k:Ljava/util/logging/Logger;

    .line 2
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lebb;->a:J

    return-void
.end method

.method public constructor <init>(Ldxx;Ljava/util/concurrent/Executor;Ldvh;Lefa;Ljava/util/concurrent/ScheduledExecutorService;Leap;)V
    .locals 3

    invoke-direct {p0}, Ldvl;-><init>()V

    .line 4
    sget-object v0, Ldwf;->b:Ldwf;

    iput-object v0, p0, Lebb;->i:Ldwf;

    .line 5
    sget-object v0, Ldvw;->a:Ldvw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lebb;->s:Z

    iput-object p1, p0, Lebb;->b:Ldxx;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    sget v1, Lein;->a:I

    .line 7
    sget-object v1, Lczj;->a:Lczj;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 8
    new-instance p2, Lehf;

    invoke-direct {p2}, Lehf;-><init>()V

    iput-object p2, p0, Lebb;->c:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lebb;->l:Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lehj;

    invoke-direct {v1, p2}, Lehj;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lebb;->c:Ljava/util/concurrent/Executor;

    iput-boolean v0, p0, Lebb;->l:Z

    .line 8
    :goto_0
    iput-object p6, p0, Lebb;->d:Leap;

    .line 10
    invoke-static {}, Ldwb;->a()Ldwb;

    move-result-object p2

    iput-object p2, p0, Lebb;->e:Ldwb;

    iget-object p2, p1, Ldxx;->a:Ldxw;

    .line 11
    sget-object p6, Ldxw;->a:Ldxw;

    if-eq p2, p6, :cond_1

    iget-object p1, p1, Ldxx;->a:Ldxw;

    sget-object p2, Ldxw;->c:Ldxw;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lebb;->m:Z

    iput-object p3, p0, Lebb;->n:Ldvh;

    iput-object p4, p0, Lebb;->t:Lefa;

    iput-object p5, p0, Lebb;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lebb;->f:Lebc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lebb;->o:Z

    xor-int/2addr v0, v1

    .line 46
    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lebb;->p:Z

    xor-int/2addr v0, v1

    .line 47
    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lebb;->f:Lebc;

    .line 48
    instance-of v1, v0, Lehd;

    if-nez v1, :cond_2

    .line 53
    iget-object v1, p0, Lebb;->b:Ldxx;

    iget-object v1, v1, Ldxx;->d:Ldxv;

    new-instance v2, Leic;

    check-cast v1, Leid;

    iget-object v1, v1, Leid;->b:Ldlq;

    .line 49
    invoke-direct {v2, p1, v1}, Leic;-><init>(Ldlj;Ldlq;)V

    .line 50
    invoke-interface {v0, v2}, Lebc;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lebb;->m:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lebb;->f:Lebc;

    .line 51
    invoke-interface {p1}, Lebc;->h()V

    :cond_1
    return-void

    .line 52
    :cond_2
    :try_start_1
    check-cast v0, Lehd;

    iget-object p1, v0, Lehd;->a:Lehc;

    const/4 p1, 0x0

    .line 53
    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :catch_0
    move-exception p1

    iget-object v0, p0, Lebb;->f:Lebc;

    .line 54
    sget-object v1, Ldyv;->c:Ldyv;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v1

    invoke-interface {v0, v1}, Lebc;->b(Ldyv;)V

    .line 55
    throw p1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lebb;->f:Lebc;

    .line 56
    sget-object v1, Ldyv;->c:Ldyv;

    invoke-virtual {v1, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    invoke-interface {v0, p1}, Lebc;->b(Ldyv;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 29
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Lebb;->f:Lebc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-string v2, "Not started"

    .line 30
    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lebb;->o:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    .line 31
    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lebb;->p:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    .line 32
    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lebb;->p:Z

    iget-object v0, p0, Lebb;->f:Lebc;

    .line 33
    invoke-interface {v0}, Lebc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 34
    throw v0
.end method

.method public final a(Ldvk;Ldxt;)V
    .locals 11

    .line 57
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Lebb;->f:Lebc;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    const-string v3, "Already started"

    .line 58
    invoke-static {v0, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lebb;->o:Z

    xor-int/2addr v0, v2

    const-string v3, "call was cancelled"

    .line 59
    invoke-static {v0, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    sget-object v0, Ldvt;->a:Ldvu;

    iget-object v3, p0, Lebb;->i:Ldwf;

    .line 60
    sget-object v4, Ledp;->b:Ldxp;

    invoke-virtual {p2, v4}, Ldxt;->b(Ldxp;)V

    sget-object v4, Ldvt;->a:Ldvu;

    if-eq v0, v4, :cond_1

    sget-object v4, Ledp;->b:Ldxp;

    const-string v5, "identity"

    .line 61
    invoke-virtual {p2, v4, v5}, Ldxt;->a(Ldxp;Ljava/lang/Object;)V

    :cond_1
    sget-object v4, Ledp;->c:Ldxp;

    .line 62
    invoke-virtual {p2, v4}, Ldxt;->b(Ldxp;)V

    iget-object v3, v3, Ldwf;->d:[B

    .line 63
    array-length v4, v3

    if-eqz v4, :cond_2

    sget-object v4, Ledp;->c:Ldxp;

    .line 64
    invoke-virtual {p2, v4, v3}, Ldxt;->a(Ldxp;Ljava/lang/Object;)V

    :cond_2
    sget-object v3, Ledp;->d:Ldxp;

    .line 65
    invoke-virtual {p2, v3}, Ldxt;->b(Ldxp;)V

    sget-object v3, Ledp;->e:Ldxp;

    .line 66
    invoke-virtual {p2, v3}, Ldxt;->b(Ldxp;)V

    invoke-virtual {p0}, Lebb;->d()Ldwc;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {v3}, Ldwc;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p2, Ledc;

    .line 87
    sget-object v1, Ldyv;->e:Ldyv;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ClientCall started after deadline exceeded: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v1

    invoke-direct {p2, v1}, Ledc;-><init>(Ldyv;)V

    iput-object p2, p0, Lebb;->f:Lebc;

    goto/16 :goto_4

    .line 103
    :cond_3
    iget-object v5, p0, Lebb;->n:Ldvh;

    iget-object v5, v5, Ldvh;->b:Ldwc;

    sget-object v6, Lebb;->k:Ljava/util/logging/Logger;

    .line 68
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    .line 69
    invoke-virtual {v3, v4}, Ldwc;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 70
    :cond_4
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7}, Ldwc;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    new-array v10, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v1

    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    .line 72
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_5

    const-string v1, " Explicit call timeout was not set."

    .line 73
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_5
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v7}, Ldwc;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, " Explicit call timeout was \'%d\' ns."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    nop

    .line 76
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "io.grpc.internal.ClientCallImpl"

    const-string v5, "logIfContextNarrowedTimeout"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v2, v5, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_6
    :goto_2
    iget-object v1, p0, Lebb;->t:Lefa;

    iget-object v2, p0, Lebb;->b:Ldxx;

    iget-object v5, p0, Lebb;->n:Ldvh;

    iget-object v6, p0, Lebb;->e:Ldwb;

    new-instance v7, Ldxa;

    .line 77
    invoke-direct {v7, v2, p2, v5}, Ldxa;-><init>(Ldxx;Ldxt;Ldvh;)V

    iget-object v8, v1, Lefa;->a:Lefs;

    iget-object v8, v8, Lefs;->q:Ldxe;

    iget-object v9, v1, Lefa;->a:Lefs;

    iget-object v9, v9, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v1, v1, Lefa;->a:Lefs;

    iget-object v1, v1, Lefs;->t:Lebx;

    goto :goto_3

    .line 85
    :cond_7
    if-nez v8, :cond_8

    iget-object v7, v1, Lefa;->a:Lefs;

    iget-object v7, v7, Lefs;->k:Ldzb;

    new-instance v8, Leez;

    .line 79
    invoke-direct {v8, v1}, Leez;-><init>(Lefa;)V

    invoke-virtual {v7, v8}, Ldzb;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v1, Lefa;->a:Lefs;

    iget-object v1, v1, Lefs;->t:Lebx;

    goto :goto_3

    .line 80
    :cond_8
    invoke-virtual {v8}, Ldxe;->a()Ldwz;

    move-result-object v8

    iget-object v7, v7, Ldxa;->a:Ldvh;

    .line 81
    invoke-virtual {v7}, Ldvh;->a()Z

    move-result v7

    .line 82
    invoke-static {v8, v7}, Ledp;->a(Ldwz;Z)Lebf;

    move-result-object v7

    if-eqz v7, :cond_9

    move-object v1, v7

    goto :goto_3

    :cond_9
    iget-object v1, v1, Lefa;->a:Lefs;

    iget-object v1, v1, Lefs;->t:Lebx;

    .line 83
    :goto_3
    invoke-virtual {v6}, Ldwb;->b()Ldwb;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    invoke-interface {v1, v2, p2, v5}, Lebf;->a(Ldxx;Ldxt;Ldvh;)Lebc;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {v6, v7}, Ldwb;->a(Ldwb;)V

    iput-object p2, p0, Lebb;->f:Lebc;

    .line 88
    :goto_4
    iget-boolean p2, p0, Lebb;->l:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lebb;->f:Lebc;

    .line 89
    invoke-interface {p2}, Lebc;->g()V

    :cond_a
    iget-object p2, p0, Lebb;->n:Ldvh;

    iget-object p2, p2, Ldvh;->f:Ljava/lang/Integer;

    if-eqz p2, :cond_b

    iget-object v1, p0, Lebb;->f:Lebc;

    .line 90
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Lebc;->b(I)V

    :cond_b
    iget-object p2, p0, Lebb;->n:Ldvh;

    iget-object p2, p2, Ldvh;->g:Ljava/lang/Integer;

    if-eqz p2, :cond_c

    iget-object v1, p0, Lebb;->f:Lebc;

    .line 91
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Lebc;->a(I)V

    :cond_c
    if-eqz v3, :cond_d

    iget-object p2, p0, Lebb;->f:Lebc;

    .line 92
    invoke-interface {p2, v3}, Lebc;->a(Ldwc;)V

    :cond_d
    iget-object p2, p0, Lebb;->f:Lebc;

    .line 93
    invoke-interface {p2, v0}, Lebc;->a(Ldvv;)V

    iget-object p2, p0, Lebb;->f:Lebc;

    iget-object v0, p0, Lebb;->i:Ldwf;

    .line 94
    invoke-interface {p2, v0}, Lebc;->a(Ldwf;)V

    iget-object p2, p0, Lebb;->d:Leap;

    .line 95
    invoke-virtual {p2}, Leap;->a()V

    new-instance p2, Leba;

    invoke-direct {p2}, Leba;-><init>()V

    iput-object p2, p0, Lebb;->q:Leba;

    iget-object p2, p0, Lebb;->f:Lebc;

    new-instance v0, Leaz;

    .line 96
    invoke-direct {v0, p0, p1}, Leaz;-><init>(Lebb;Ldvk;)V

    invoke-interface {p2, v0}, Lebc;->a(Lebe;)V

    iget-object p2, p0, Lebb;->q:Leba;

    .line 97
    sget-object v0, Lczj;->a:Lczj;

    const-string v1, "cancellationListener"

    .line 98
    invoke-static {p2, v1}, Ldwb;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "executor"

    .line 99
    invoke-static {v0, p2}, Ldwb;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v3, :cond_e

    .line 100
    invoke-virtual {v3, v4}, Ldwc;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lebb;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lebb;->f:Lebc;

    instance-of p2, p2, Ledc;

    if-nez p2, :cond_e

    .line 101
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2}, Ldwc;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object p2, p0, Lebb;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 102
    new-instance v2, Leeq;

    new-instance v3, Leat;

    invoke-direct {v3, p0, v0, v1, p1}, Leat;-><init>(Lebb;JLdvk;)V

    invoke-direct {v2, v3}, Leeq;-><init>(Ljava/lang/Runnable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lebb;->r:Ljava/util/concurrent/ScheduledFuture;

    :cond_e
    iget-boolean p1, p0, Lebb;->g:Z

    if-eqz p1, :cond_f

    .line 103
    invoke-virtual {p0}, Lebb;->c()V

    :cond_f
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {v6, v7}, Ldwb;->a(Ldwb;)V

    .line 86
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 104
    throw p1
.end method

.method public final a(Ldvk;Ldyv;Ldxt;)V
    .locals 2

    iget-boolean v0, p0, Lebb;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lebb;->s:Z

    .line 23
    invoke-virtual {p2}, Ldyv;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Ldvk;->b:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p1, Ldvk;->a:Leii;

    sget-object v0, Ldyv;->h:Ldyv;

    .line 24
    const-string v1, "No value received for unary call"

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p3}, Ldyv;->a(Ldxt;)Ldyx;

    move-result-object p3

    .line 26
    invoke-virtual {p2, p3}, Lcyr;->a(Ljava/lang/Throwable;)Z

    :cond_0
    iget-object p2, p1, Ldvk;->a:Leii;

    iget-object p1, p1, Ldvk;->b:Ljava/lang/Object;

    .line 27
    invoke-virtual {p2, p1}, Lcyr;->a(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p1, Ldvk;->a:Leii;

    .line 28
    invoke-virtual {p2, p3}, Ldyv;->a(Ldxt;)Ldyx;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcyr;->a(Ljava/lang/Throwable;)Z

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 42
    sget v0, Lein;->a:I

    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lebb;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 44
    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 12
    sget v0, Lein;->a:I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 13
    :try_start_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lebb;->k:Ljava/util/logging/Logger;

    .line 14
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "io.grpc.internal.ClientCallImpl"

    const-string v4, "cancelInternal"

    const-string v5, "Cancelling without a message or cause is suboptimal"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Lebb;->o:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lebb;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lebb;->f:Lebc;

    if-eqz v0, :cond_4

    .line 15
    sget-object v0, Ldyv;->c:Ldyv;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {v0, p1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_2
    const-string p1, "Call cancelled without message"

    .line 17
    invoke-virtual {v0, p1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 16
    :goto_0
    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p1, p2}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lebb;->f:Lebc;

    .line 19
    invoke-interface {p2, p1}, Lebc;->b(Ldyv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lebb;->c()V

    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0}, Lebb;->c()V

    .line 21
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 37
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Lebb;->f:Lebc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    const-string v2, "Not started"

    .line 38
    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    const-string v0, "Number requested must be non-negative"

    .line 39
    invoke-static {v1, v0}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lebb;->f:Lebc;

    .line 40
    invoke-interface {v0}, Lebc;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 41
    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lebb;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lebb;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public final d()Ldwc;
    .locals 1

    iget-object v0, p0, Lebb;->n:Ldvh;

    iget-object v0, v0, Ldvh;->b:Ldwc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 105
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lebb;->b:Ldxx;

    .line 106
    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
