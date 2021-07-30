.class public final Lue;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field private c:Lud;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lud;)V
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lue;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_2
    iget-object v0, p0, Lue;->c:Lud;

    if-ne v0, p1, :cond_1

    .line 12
    monitor-exit p0

    return-void

    :cond_1
    iput-object p1, p0, Lue;->c:Lud;

    iget-boolean v0, p0, Lue;->a:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-interface {p1}, Lud;->a()V

    return-void

    .line 13
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lue;->a:Z

    .line 9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lue;->a:Z

    if-eqz v0, :cond_0

    .line 1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lue;->a:Z

    iput-boolean v0, p0, Lue;->d:Z

    iget-object v0, p0, Lue;->c:Lud;

    iget-object v1, p0, Lue;->b:Ljava/lang/Object;

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v0}, Lud;->a()V

    goto :goto_0

    .line 2
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    check-cast v1, Landroid/os/CancellationSignal;

    .line 5
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2
    :goto_1
    monitor-enter p0

    :try_start_2
    iput-boolean v2, p0, Lue;->d:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    throw v0

    .line 7
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 5
    :cond_2
    :goto_2
    monitor-enter p0

    :try_start_4
    iput-boolean v2, p0, Lue;->d:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :catchall_2
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
