.class public final Lcyt;
.super Lczp;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lczu;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lczu;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lczp;-><init>()V

    .line 1
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcyt;->a:Lczu;

    .line 2
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcyt;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lczu;Lczd;Ljava/util/concurrent/Executor;)Lczu;
    .locals 1

    .line 4
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcyt;

    .line 5
    invoke-direct {v0, p0, p1}, Lcyt;-><init>(Lczu;Ljava/lang/Object;)V

    .line 6
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lczj;->a:Lczj;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lczx;

    .line 8
    invoke-direct {p1, p2, v0}, Lczx;-><init>(Ljava/util/concurrent/Executor;Lcyr;)V

    move-object p2, p1

    .line 9
    :goto_0
    invoke-interface {p0, v0, p2}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcyt;->a:Lczu;

    .line 3
    invoke-virtual {p0, v0}, Lcyr;->a(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcyt;->a:Lczu;

    iput-object v0, p0, Lcyt;->b:Ljava/lang/Object;

    return-void
.end method

.method protected final g()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcyt;->a:Lczu;

    iget-object v1, p0, Lcyt;->b:Ljava/lang/Object;

    .line 10
    invoke-super {p0}, Lczp;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "inputFuture=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    const-string v0, ""

    .line 11
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xb

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "function=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .locals 6

    iget-object v0, p0, Lcyt;->a:Lczu;

    iget-object v1, p0, Lcyt;->b:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcyr;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 26
    :cond_0
    const/4 v5, 0x0

    .line 14
    :goto_0
    or-int/2addr v2, v5

    if-nez v1, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 14
    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcyt;->a:Lczu;

    .line 15
    invoke-interface {v0}, Lczu;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p0, v0}, Lcyr;->b(Lczu;)V

    return-void

    .line 17
    :cond_3
    :try_start_0
    invoke-static {v0}, Ldab;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    invoke-interface {v1, v0}, Lczd;->a(Ljava/lang/Object;)Lczu;

    move-result-object v0

    const-string v3, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 23
    invoke-static {v0, v3, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcyt;->b:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, v0}, Lcyr;->b(Lczu;)V

    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 24
    :try_start_2
    invoke-virtual {p0, v0}, Lcyr;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    iput-object v2, p0, Lcyt;->b:Ljava/lang/Object;

    return-void

    .line 24
    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcyt;->b:Ljava/lang/Object;

    .line 25
    throw v0

    .line 19
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lcyr;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 20
    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {p0, v0}, Lcyr;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 21
    :catch_2
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcyr;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 21
    :catch_3
    move-exception v0

    invoke-virtual {p0, v4}, Lcyr;->cancel(Z)Z

    return-void
.end method
