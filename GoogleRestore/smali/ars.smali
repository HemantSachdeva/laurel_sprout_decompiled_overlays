.class final Lars;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field final synthetic a:Lart;


# direct methods
.method public constructor <init>(Lart;)V
    .locals 0

    iput-object p1, p0, Lars;->a:Lart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lars;->a:Lart;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lart;->a:Lacw;

    const-string v1, "Successfully switched from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lars;->a:Lart;

    iget v3, v3, Lart;->b:I

    invoke-static {v3}, Lart;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Lart;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lars;->a:Lart;

    iput v3, v0, Lart;->b:I

    invoke-static {v0}, Lart;->a(Lart;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    iget-object v0, p0, Lars;->a:Lart;

    monitor-enter v0

    .line 1
    :try_start_0
    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lart;->a:Lacw;

    const-string v5, "Timeout after %d ms switching from %s to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 2
    sget-object v7, Land;->E:Lccv;

    .line 3
    invoke-virtual {v7}, Lccv;->c()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lars;->a:Lart;

    iget v2, v2, Lart;->b:I

    invoke-static {v2}, Lart;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v4}, Lart;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 2
    invoke-virtual {v1, v5, p1, v6}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1

    sget-object v1, Lart;->a:Lacw;

    const-string v5, "Cancellation switching from %s to %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lars;->a:Lart;

    iget v6, v6, Lart;->b:I

    invoke-static {v6}, Lart;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v4}, Lart;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 6
    invoke-virtual {v1, v5, p1, v3}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lart;->a:Lacw;

    const-string v5, "Error while switching from %s to %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lars;->a:Lart;

    iget v6, v6, Lart;->b:I

    invoke-static {v6}, Lart;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v4}, Lart;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 5
    invoke-virtual {v1, v5, p1, v3}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lars;->a:Lart;

    iget v1, p1, Lart;->b:I

    iput v1, p1, Lart;->c:I

    .line 7
    invoke-static {p1}, Lart;->a(Lart;)V

    .line 8
    monitor-exit v0

    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
