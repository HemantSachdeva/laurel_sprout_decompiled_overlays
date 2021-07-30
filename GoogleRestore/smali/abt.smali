.class final Labt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Z


# instance fields
.field private final b:Ljava/util/List;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Labu;->b:Z

    sput-boolean v0, Labt;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labt;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labt;->c:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Labt;->c:Z

    iget-object v1, p0, Labt;->b:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-wide v7, v2

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Labt;->b:Ljava/util/List;

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labs;

    iget-wide v5, v1, Labs;->c:J

    iget-object v1, p0, Labt;->b:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labs;

    iget-wide v7, v1, Labs;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v7, v5

    .line 7
    :goto_0
    cmp-long v1, v7, v2

    if-gtz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Labt;->b:Ljava/util/List;

    .line 10
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labs;

    iget-wide v1, v1, Labs;->c:J

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object p1, v5, v0

    const-string p1, "(%-4d ms) %s"

    .line 12
    invoke-static {p1, v5}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Labt;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 13
    check-cast v7, Labs;

    .line 14
    iget-wide v8, v7, Labs;->c:J

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    sub-long v1, v8, v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v4

    iget-wide v1, v7, Labs;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v0

    iget-object v1, v7, Labs;->a:Ljava/lang/String;

    aput-object v1, v10, v3

    const-string v1, "(+%-4d) [%2d] %s"

    .line 16
    invoke-static {v1, v10}, Labu;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move-wide v1, v8

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    .line 6
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Labt;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Labt;->b:Ljava/util/List;

    new-instance v7, Labs;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Labs;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .locals 2

    iget-boolean v0, p0, Labt;->c:Z

    if-nez v0, :cond_0

    .line 5
    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Labt;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    invoke-static {v1, v0}, Labu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
