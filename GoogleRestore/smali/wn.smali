.class public Lwn;
.super Lwm;
.source "PG"


# instance fields
.field public c:Landroid/database/Cursor;

.field private final k:Lwo;

.field private l:Lue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwm;-><init>(Landroid/content/Context;)V

    new-instance p1, Lwo;

    .line 2
    invoke-direct {p1, p0}, Lwo;-><init>(Lwq;)V

    iput-object p1, p0, Lwn;->k:Lwo;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 5

    iget-boolean v0, p0, Lwq;->h:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lwn;->c:Landroid/database/Cursor;

    iput-object p1, p0, Lwn;->c:Landroid/database/Cursor;

    iget-boolean v1, p0, Lwq;->f:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lwq;->d:Lwp;

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    invoke-static {v2}, Lwg;->a(I)Z

    move-result v2

    const-string v3, "LoaderManager"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadComplete: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v2, v4, :cond_3

    check-cast v1, Lv;

    .line 8
    invoke-virtual {v1, p1}, Lv;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Lwg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    const-string v2, "onLoadComplete was incorrectly called on a background thread"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    check-cast v1, Lv;

    .line 10
    invoke-virtual {v1, p1}, Lv;->b(Ljava/lang/Object;)V

    .line 8
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lwn;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lwn;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lwn;->l:Lue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lue;->b()V

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Landroid/database/Cursor;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lwm;->b:Lwl;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Lue;

    invoke-direct {v0}, Lue;-><init>()V

    iput-object v0, p0, Lwn;->l:Lue;

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lwq;->e:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lwn;->l:Lue;

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    .line 17
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, v1, Lue;->b:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 18
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, v1, Lue;->b:Ljava/lang/Object;

    iget-boolean v3, v1, Lue;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lue;->b:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    .line 19
    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v3, v1, Lue;->b:Ljava/lang/Object;

    .line 20
    monitor-exit v1

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    .line 21
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 31
    :catch_0
    move-exception v1

    goto :goto_2

    .line 30
    :cond_1
    move-object v3, v0

    .line 20
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v3

    check-cast v8, Landroid/os/CancellationSignal;

    .line 22
    move-object v3, v1

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 26
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    iget-object v2, p0, Lwn;->k:Lwo;

    .line 27
    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 21
    :catch_1
    move-exception v2

    .line 28
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 29
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 27
    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_7
    iput-object v0, p0, Lwn;->l:Lue;

    .line 30
    monitor-exit p0

    return-object v1

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 23
    :goto_2
    :try_start_8
    instance-of v2, v1, Landroid/os/OperationCanceledException;

    if-eqz v2, :cond_3

    new-instance v1, Luh;

    .line 24
    invoke-direct {v1}, Luh;-><init>()V

    throw v1

    .line 25
    :cond_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 14
    :catchall_2
    move-exception v1

    monitor-enter p0

    :try_start_9
    iput-object v0, p0, Lwn;->l:Lue;

    .line 30
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 31
    throw v1

    .line 30
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 0
    :cond_4
    :try_start_b
    new-instance v0, Luh;

    .line 13
    invoke-direct {v0}, Luh;-><init>()V

    throw v0

    .line 30
    :catchall_4
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method protected final g()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lwq;->e()V

    iget-object v0, p0, Lwn;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwn;->c:Landroid/database/Cursor;

    .line 34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lwn;->c:Landroid/database/Cursor;

    return-void
.end method
