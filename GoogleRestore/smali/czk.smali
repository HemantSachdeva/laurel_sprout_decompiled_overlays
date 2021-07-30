.class public abstract Lczk;
.super Lcry;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lczu;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcry;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lczu;
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lczk;->a()Lczu;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1, p2}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected bridge synthetic c()Ljava/util/concurrent/Future;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public cancel(Z)Z
    .locals 1

    invoke-virtual {p0}, Lczk;->c()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lczk;->c()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lczk;->c()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Lczk;->c()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    invoke-virtual {p0}, Lczk;->c()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
