.class public final Lbpp;
.super Lbpi;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lbpk;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbpi;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    new-instance v0, Lbpk;

    .line 1
    invoke-direct {v0}, Lbpk;-><init>()V

    iput-object v0, p0, Lbpp;->b:Lbpk;

    return-void
.end method

.method private final i()V
    .locals 5

    iget-boolean v0, p0, Lbpp;->c:Z

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p0}, Lbpi;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p0}, Lbpi;->e()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "failure"

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lbpi;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lbpi;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "result "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v1, p0, Lbpp;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "cancellation"

    goto :goto_0

    :cond_2
    const-string v1, "unknown issue"

    .line 21
    :goto_0
    new-instance v2, Lbor;

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Complete with: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 23
    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 24
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v1, v0}, Lbor;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 19
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 20
    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    :goto_2
    throw v2

    :cond_5
    return-void
.end method

.method private final j()V
    .locals 2

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbpp;->c:Z

    if-nez v1, :cond_0

    .line 34
    monitor-exit v0

    return-void

    .line 35
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbpp;->b:Lbpk;

    .line 36
    invoke-virtual {v0, p0}, Lbpk;->a(Lbpi;)V

    return-void

    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lbom;)Lbpi;
    .locals 3

    new-instance v0, Lbpp;

    .line 26
    invoke-direct {v0}, Lbpp;-><init>()V

    iget-object v1, p0, Lbpp;->b:Lbpk;

    new-instance v2, Lboo;

    .line 27
    invoke-direct {v2, p1, p2, v0}, Lboo;-><init>(Ljava/util/concurrent/Executor;Lbom;Lbpp;)V

    .line 28
    invoke-virtual {v1, v2}, Lbpk;->a(Lbpj;)V

    .line 29
    invoke-direct {p0}, Lbpp;->j()V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lbph;)Lbpi;
    .locals 3

    new-instance v0, Lbpp;

    .line 48
    invoke-direct {v0}, Lbpp;-><init>()V

    iget-object v1, p0, Lbpp;->b:Lbpk;

    new-instance v2, Lbpf;

    .line 49
    invoke-direct {v2, p1, p2, v0}, Lbpf;-><init>(Ljava/util/concurrent/Executor;Lbph;Lbpp;)V

    .line 50
    invoke-virtual {v1, v2}, Lbpk;->a(Lbpj;)V

    .line 51
    invoke-direct {p0}, Lbpp;->j()V

    return-object v0
.end method

.method public final a(Lbox;)V
    .locals 1

    .line 5
    sget-object v0, Lbpo;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbox;)V

    return-void
.end method

.method public final a(Lbpa;)V
    .locals 1

    .line 9
    sget-object v0, Lbpo;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbpp;->a(Ljava/util/concurrent/Executor;Lbpa;)V

    return-void
.end method

.method public final a(Lbpd;)V
    .locals 1

    .line 13
    sget-object v0, Lbpo;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbpp;->a(Ljava/util/concurrent/Executor;Lbpd;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 52
    invoke-static {p1, v0}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lbpp;->i()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbpp;->c:Z

    iput-object p1, p0, Lbpp;->f:Ljava/lang/Exception;

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbpp;->b:Lbpk;

    .line 55
    invoke-virtual {p1, p0}, Lbpk;->a(Lbpi;)V

    return-void

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lbpp;->i()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbpp;->c:Z

    iput-object p1, p0, Lbpp;->e:Ljava/lang/Object;

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbpp;->b:Lbpk;

    .line 58
    invoke-virtual {p1, p0}, Lbpk;->a(Lbpi;)V

    return-void

    :catchall_0
    move-exception p1

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/concurrent/Executor;Lbou;)V
    .locals 2

    iget-object v0, p0, Lbpp;->b:Lbpk;

    new-instance v1, Lbot;

    .line 2
    invoke-direct {v1, p1, p2}, Lbot;-><init>(Ljava/util/concurrent/Executor;Lbou;)V

    .line 3
    invoke-virtual {v0, v1}, Lbpk;->a(Lbpj;)V

    .line 4
    invoke-direct {p0}, Lbpp;->j()V

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;Lbox;)V
    .locals 2

    iget-object v0, p0, Lbpp;->b:Lbpk;

    new-instance v1, Lbow;

    .line 6
    invoke-direct {v1, p1, p2}, Lbow;-><init>(Ljava/util/concurrent/Executor;Lbox;)V

    .line 7
    invoke-virtual {v0, v1}, Lbpk;->a(Lbpj;)V

    .line 8
    invoke-direct {p0}, Lbpp;->j()V

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;Lbpa;)V
    .locals 2

    iget-object v0, p0, Lbpp;->b:Lbpk;

    new-instance v1, Lboz;

    .line 10
    invoke-direct {v1, p1, p2}, Lboz;-><init>(Ljava/util/concurrent/Executor;Lbpa;)V

    .line 11
    invoke-virtual {v0, v1}, Lbpk;->a(Lbpj;)V

    .line 12
    invoke-direct {p0}, Lbpp;->j()V

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;Lbpd;)V
    .locals 2

    iget-object v0, p0, Lbpp;->b:Lbpk;

    new-instance v1, Lbpc;

    .line 14
    invoke-direct {v1, p1, p2}, Lbpc;-><init>(Ljava/util/concurrent/Executor;Lbpd;)V

    .line 15
    invoke-virtual {v0, v1}, Lbpk;->a(Lbpj;)V

    .line 16
    invoke-direct {p0}, Lbpp;->j()V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbpp;->c:Z

    .line 44
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/util/concurrent/Executor;Lbom;)Lbpi;
    .locals 3

    new-instance v0, Lbpp;

    .line 30
    invoke-direct {v0}, Lbpp;-><init>()V

    iget-object v1, p0, Lbpp;->b:Lbpk;

    new-instance v2, Lboq;

    .line 31
    invoke-direct {v2, p1, p2, v0}, Lboq;-><init>(Ljava/util/concurrent/Executor;Lbom;Lbpp;)V

    .line 32
    invoke-virtual {v1, v2}, Lbpk;->a(Lbpj;)V

    .line 33
    invoke-direct {p0}, Lbpp;->j()V

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbpp;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbpp;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lbpp;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    nop

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lbpp;->d:Z

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lbpp;->f()V

    .line 40
    invoke-virtual {p0}, Lbpp;->g()V

    iget-object v1, p0, Lbpp;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lbpp;->e:Ljava/lang/Object;

    .line 42
    monitor-exit v0

    return-object v1

    .line 40
    :cond_0
    new-instance v2, Lbpg;

    .line 41
    invoke-direct {v2, v1}, Lbpg;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbpp;->f:Ljava/lang/Exception;

    .line 37
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lbpp;->c:Z

    .line 17
    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lbir;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lbpp;->d:Z

    if-nez v0, :cond_0

    .line 18
    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbpp;->c:Z

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbpp;->c:Z

    iput-boolean v1, p0, Lbpp;->d:Z

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbpp;->b:Lbpk;

    .line 61
    invoke-virtual {v0, p0}, Lbpk;->a(Lbpi;)V

    return-void

    :catchall_0
    move-exception v1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
