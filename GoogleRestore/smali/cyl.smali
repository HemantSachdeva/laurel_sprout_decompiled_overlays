.class final Lcyl;
.super Lcye;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcye;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcyq;Lcyq;)V
    .locals 0

    iput-object p2, p1, Lcyq;->next:Lcyq;

    return-void
.end method

.method public final a(Lcyq;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcyq;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final a(Lcyr;Lcyi;Lcyi;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcyr;->listeners:Lcyi;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcyr;->listeners:Lcyi;

    .line 1
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final a(Lcyr;Lcyq;Lcyq;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcyr;->waiters:Lcyq;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcyr;->waiters:Lcyq;

    .line 9
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p1, Lcyr;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcyr;->value:Ljava/lang/Object;

    .line 6
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
