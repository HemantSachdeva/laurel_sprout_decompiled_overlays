.class public abstract Labj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Labt;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/Object;

.field public e:Labn;

.field public f:Ljava/lang/Integer;

.field public g:Labm;

.field public h:Z

.field public i:Z

.field public j:Laar;

.field public k:Laax;

.field public l:Laau;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labn;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-boolean v0, Labt;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Labt;

    invoke-direct {v0}, Labt;-><init>()V

    goto :goto_0

    .line 6
    :cond_0
    move-object v0, v1

    .line 1
    :goto_0
    iput-object v0, p0, Labj;->a:Labt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labj;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labj;->h:Z

    iput-boolean v0, p0, Labj;->i:Z

    iput-object v1, p0, Labj;->j:Laar;

    iput-object p1, p0, Labj;->b:Ljava/lang/String;

    iput-object p2, p0, Labj;->e:Labn;

    new-instance p2, Laax;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p2, v1, v2, v3}, Laax;-><init>(IIF)V

    iput-object p2, p0, Labj;->k:Laax;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput v0, p0, Labj;->c:I

    return-void
.end method


# virtual methods
.method protected abstract a(Labf;)Labo;
.end method

.method final a(Laau;)V
    .locals 1

    iget-object v0, p0, Labj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Labj;->l:Laau;

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 7
    sget-boolean v0, Labt;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labj;->a:Labt;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Labt;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Labj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Labj;->h:Z

    .line 22
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Labj;->k:Laax;

    iget v0, v0, Laax;->a:I

    return v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Labj;->g:Labm;

    if-eqz v0, :cond_1

    iget-object v1, v0, Labm;->b:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Labm;->b:Ljava/util/Set;

    .line 9
    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v0, Labm;->i:Ljava/util/List;

    monitor-enter v2

    :try_start_1
    iget-object v1, v0, Labm;->i:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labl;

    .line 12
    invoke-interface {v3}, Labl;->a()V

    goto :goto_0

    .line 13
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {v0}, Labm;->a()V

    goto :goto_1

    .line 10
    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 21
    :catchall_1
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 15
    :cond_1
    :goto_1
    sget-boolean v0, Labt;->a:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Labi;

    .line 19
    invoke-direct {v3, p0, p1, v0, v1}, Labi;-><init>(Labj;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v2, p0, Labj;->a:Labt;

    .line 20
    invoke-virtual {v2, p1, v0, v1}, Labt;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Labj;->a:Labt;

    .line 21
    invoke-virtual {p0}, Labj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labt;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Labj;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Labj;->i:Z

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Labj;

    invoke-virtual {p0}, Labj;->e()I

    move-result v0

    invoke-virtual {p1}, Labj;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labj;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Labj;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v1, -0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    sub-int v0, p1, v1

    :goto_0
    return v0

    :cond_1
    throw v2

    :cond_2
    throw v2
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Labj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Labj;->l:Laau;

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p0}, Laau;->a(Labj;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final f()V
    .locals 1

    iget-object v0, p0, Labj;->g:Labm;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Labm;->a()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Labj;->c:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0x"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Labj;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    const-string v1, "[ ] "

    goto :goto_1

    .line 31
    :cond_1
    const-string v1, "[X] "

    .line 30
    :goto_1
    iget-object v3, p0, Labj;->b:Ljava/lang/String;

    invoke-virtual {p0}, Labj;->e()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v2, :cond_5

    const/4 v2, 0x2

    if-eq v4, v2, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v2, 0x4

    if-eq v4, v2, :cond_2

    const-string v2, "null"

    goto :goto_2

    .line 31
    :cond_2
    const-string v2, "IMMEDIATE"

    goto :goto_2

    :cond_3
    const-string v2, "HIGH"

    goto :goto_2

    :cond_4
    const-string v2, "NORMAL"

    goto :goto_2

    :cond_5
    const-string v2, "LOW"

    .line 30
    :goto_2
    iget-object v4, p0, Labj;->f:Ljava/lang/Integer;

    .line 31
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v6, v5

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    add-int/2addr v6, v9

    add-int/2addr v6, v10

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
