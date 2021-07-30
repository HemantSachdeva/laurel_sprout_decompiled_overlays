.class final Leat;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldvk;

.field final synthetic c:Lebb;


# direct methods
.method public constructor <init>(Lebb;JLdvk;)V
    .locals 0

    iput-object p1, p0, Leat;->c:Lebb;

    iput-wide p2, p0, Leat;->a:J

    iput-object p4, p0, Leat;->b:Ldvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Leat;->c:Lebb;

    iget-wide v1, p0, Leat;->a:J

    new-instance v3, Ledu;

    .line 1
    invoke-direct {v3}, Ledu;-><init>()V

    iget-object v0, v0, Lebb;->f:Lebc;

    .line 2
    invoke-interface {v0, v3}, Lebc;->a(Ledu;)V

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    div-long/2addr v4, v8

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    rem-long/2addr v8, v6

    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v6, "deadline exceeded after "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v10, v1, v6

    if-gez v10, :cond_0

    const/16 v1, 0x2d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 9
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, ".%09d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "s. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v1, Ldyv;->e:Ldyv;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object v0

    iget-object v1, p0, Leat;->c:Lebb;

    iget-object v2, p0, Leat;->b:Ldvk;

    iget-object v3, v1, Lebb;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v1, Lebb;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    new-instance v4, Leeq;

    new-instance v5, Leau;

    invoke-direct {v5, v1, v0}, Leau;-><init>(Lebb;Ldyv;)V

    invoke-direct {v4, v5}, Leeq;-><init>(Ljava/lang/Runnable;)V

    sget-wide v5, Lebb;->a:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v1, Lebb;->j:Ljava/util/concurrent/ScheduledFuture;

    iget-object v3, v1, Lebb;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Leas;

    .line 14
    invoke-direct {v4, v1, v2, v0}, Leas;-><init>(Lebb;Ldvk;Ldyv;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
