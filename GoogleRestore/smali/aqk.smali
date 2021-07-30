.class final Laqk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field final synthetic a:Laqm;


# direct methods
.method public constructor <init>(Laqm;)V
    .locals 0

    iput-object p1, p0, Laqk;->a:Laqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Laqk;->a:Laqm;

    .line 9
    invoke-virtual {v0, p1}, Lcyr;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laqk;->a:Laqm;

    iget-object p1, p1, Laqm;->a:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const-string v1, "Attempted to successfully set result of RetryingListenableFuture but it had already been set."

    invoke-virtual {p1, v1, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Laqk;->a:Laqm;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Laqk;->a:Laqm;

    iget v2, v1, Laqm;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Laqm;->d:I

    .line 1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Laqk;->a:Laqm;

    .line 2
    invoke-virtual {v0}, Lcyr;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Laqk;->a:Laqm;

    iget-object p1, p1, Laqm;->a:Lacw;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Laqk;->a:Laqm;

    iget v1, v1, Laqm;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "RetryingListenableFuture was cancelled after %d/%d retries, not retrying again."

    .line 4
    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Laqk;->a:Laqm;

    iget v3, v0, Laqm;->b:I

    if-ge v2, v3, :cond_2

    iget-object v0, v0, Laqm;->c:Laql;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, v2}, Laql;->a(Ljava/lang/Throwable;I)V

    :cond_1
    iget-object p1, p0, Laqk;->a:Laqm;

    .line 6
    invoke-virtual {p1}, Laqm;->b()V

    return-void

    .line 7
    :cond_2
    invoke-virtual {v0, p1}, Lcyr;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Laqk;->a:Laqm;

    iget-object p1, p1, Laqm;->a:Lacw;

    const-string v0, "Attempted to set error for RetryingListenableFuture, but had already been set."

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v0, v1}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
