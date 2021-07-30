.class public final Ldbx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lddf;
.implements Ldde;


# instance fields
.field public a:Ljava/util/Queue;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbx;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldbx;->a:Ljava/util/Queue;

    iput-object p1, p0, Ldbx;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final declared-synchronized a()Ljava/util/Set;
    .locals 2

    const-class v0, Ldbx;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lddd;)V
    .locals 1

    iget-object v0, p0, Ldbx;->c:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Ldbx;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lddd;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lddd;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p3}, Ldda;->a(Ljava/lang/Object;)V

    .line 5
    invoke-static {p2}, Ldda;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Ldbx;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbx;->b:Ljava/util/Map;

    .line 7
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ldbx;->b:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
