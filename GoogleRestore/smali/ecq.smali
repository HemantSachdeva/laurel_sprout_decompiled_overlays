.class Lecq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebc;


# instance fields
.field private volatile a:Z

.field private b:Lebe;

.field private c:Ldyv;

.field public d:Lebc;

.field private e:Ljava/util/List;

.field private f:Lecp;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lecq;->e:Ljava/util/List;

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lecq;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lecq;->e:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final b()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lecq;->e:Ljava/util/List;

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lecq;->e:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lecq;->a:Z

    iget-object v3, p0, Lecq;->f:Lecp;

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    monitor-enter v3

    :try_start_1
    iget-object v5, v3, Lecp;->c:Ljava/util/List;

    .line 25
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v0, v3, Lecp;->c:Ljava/util/List;

    iput-boolean v1, v3, Lecp;->b:Z

    .line 30
    monitor-exit v3

    return-void

    :cond_0
    iget-object v5, v3, Lecp;->c:Ljava/util/List;

    iput-object v4, v3, Lecp;->c:Ljava/util/List;

    .line 26
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 27
    check-cast v7, Ljava/lang/Runnable;

    .line 28
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 29
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->clear()V

    move-object v4, v5

    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 26
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 29
    :cond_2
    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lecq;->e:Ljava/util/List;

    iput-object v0, p0, Lecq;->e:Ljava/util/List;

    .line 19
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/Runnable;

    .line 21
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 22
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 19
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private final b(Lebc;)V
    .locals 3

    iget-object v0, p0, Lecq;->d:Lebc;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lcrj;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lecq;->d:Lebc;

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lecq;->h:J

    return-void
.end method


# virtual methods
.method public final a()Ldvb;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Lecq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 43
    invoke-interface {v0, p1}, Lebc;->a(I)V

    return-void

    :cond_0
    new-instance v0, Lecd;

    .line 44
    invoke-direct {v0, p0, p1}, Lecd;-><init>(Lecq;I)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldvv;)V
    .locals 1

    new-instance v0, Leca;

    .line 37
    invoke-direct {v0, p0, p1}, Leca;-><init>(Lecq;Ldvv;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldwc;)V
    .locals 1

    new-instance v0, Lece;

    .line 38
    invoke-direct {v0, p0, p1}, Lece;-><init>(Lecq;Ldwc;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ldwf;)V
    .locals 1

    .line 39
    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lecb;

    .line 40
    invoke-direct {v0, p0, p1}, Lecb;-><init>(Lecq;Ldwf;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Lebc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lecq;->d:Lebc;

    if-eqz v0, :cond_0

    .line 47
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "stream"

    .line 48
    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lecq;->b(Lebc;)V

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-direct {p0}, Lecq;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lebe;)V
    .locals 4

    iget-object v0, p0, Lecq;->b:Lebe;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 0
    :goto_0
    const-string v1, "already started"

    .line 51
    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lecq;->b:Lebe;

    iget-object v0, p0, Lecq;->c:Ldyv;

    iget-boolean v1, p0, Lecq;->a:Z

    if-nez v1, :cond_1

    new-instance v2, Lecp;

    .line 52
    invoke-direct {v2, p1}, Lecp;-><init>(Lebe;)V

    iput-object v2, p0, Lecq;->f:Lecp;

    move-object p1, v2

    .line 53
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lecq;->g:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 55
    new-instance v1, Ldxt;

    invoke-direct {v1}, Ldxt;-><init>()V

    invoke-interface {p1, v0, v1}, Lebe;->a(Ldyv;Ldxt;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 56
    invoke-interface {v0, p1}, Lebc;->a(Lebe;)V

    return-void

    :cond_3
    new-instance v0, Lecf;

    .line 57
    invoke-direct {v0, p0, p1}, Lecf;-><init>(Lecq;Lebe;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ledu;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lecq;->b:Lebe;

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lecq;->d:Lebc;

    if-eqz v0, :cond_1

    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lecq;->h:J

    iget-wide v3, p0, Lecq;->g:J

    sub-long/2addr v1, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ledu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 4
    invoke-interface {v0, p1}, Lebc;->a(Ledu;)V

    goto :goto_0

    .line 7
    :cond_1
    const-string v0, "buffered_nanos"

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lecq;->g:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ledu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "waiting_for_connection"

    .line 6
    invoke-virtual {p1, v0}, Ledu;->a(Ljava/lang/Object;)V

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 1

    iget-boolean v0, p0, Lecq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 58
    invoke-interface {v0, p1}, Lebc;->a(Ljava/io/InputStream;)V

    return-void

    :cond_0
    new-instance v0, Lecg;

    .line 59
    invoke-direct {v0, p0, p1}, Lecg;-><init>(Lecq;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-boolean v0, p0, Lecq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 41
    invoke-interface {v0, p1}, Lebc;->b(I)V

    return-void

    :cond_0
    new-instance v0, Lecc;

    .line 42
    invoke-direct {v0, p0, p1}, Lecc;-><init>(Lecq;I)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ldyv;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lecq;->d:Lebc;

    if-nez v0, :cond_0

    sget-object v0, Legi;->a:Legi;

    .line 8
    invoke-direct {p0, v0}, Lecq;->b(Lebc;)V

    iget-object v0, p0, Lecq;->b:Lebe;

    iput-object p1, p0, Lecq;->c:Ldyv;

    const/4 v1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    new-instance v0, Leci;

    .line 10
    invoke-direct {v0, p0, p1}, Leci;-><init>(Lecq;Ldyv;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    new-instance v1, Ldxt;

    invoke-direct {v1}, Ldxt;-><init>()V

    invoke-interface {v0, p1, v1}, Lebe;->a(Ldyv;Ldxt;)V

    .line 12
    :cond_2
    invoke-direct {p0}, Lecq;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 1

    new-instance v0, Lecj;

    .line 33
    invoke-direct {v0, p0}, Lecj;-><init>(Lecq;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lebz;

    .line 34
    invoke-direct {v0, p0}, Lebz;-><init>(Lecq;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lecq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 31
    invoke-interface {v0}, Lebc;->h()V

    return-void

    :cond_0
    new-instance v0, Lech;

    .line 32
    invoke-direct {v0, p0}, Lech;-><init>(Lecq;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lecq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecq;->d:Lebc;

    .line 35
    invoke-interface {v0}, Lebc;->i()V

    return-void

    :cond_0
    new-instance v0, Leby;

    .line 36
    invoke-direct {v0, p0}, Leby;-><init>(Lecq;)V

    invoke-direct {p0, v0}, Lecq;->a(Ljava/lang/Runnable;)V

    return-void
.end method
