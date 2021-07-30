.class public final Lbtr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Lcua;


# instance fields
.field final a:Ljava/util/List;

.field public volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/Shutdown"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbtr;->c:Lcua;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtr;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbtr;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtr;->b:Z

    sget-object v0, Lbtr;->c:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 8
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/Shutdown"

    const-string v2, "shutdown"

    const/16 v3, 0x23

    const-string v4, "Shutdown.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Shutdown ..."

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbtr;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lbtr;->a:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbts;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-interface {v2}, Lbts;->b()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v2

    :try_start_3
    sget-object v3, Lbtr;->c:Lcua;

    invoke-virtual {v3}, Lctx;->d()Lcup;

    move-result-object v3

    .line 11
    check-cast v3, Lctz;

    invoke-interface {v3, v2}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v2, "com/google/android/libraries/performance/primes/Shutdown"

    const-string v4, "shutdown"

    const/16 v5, 0x29

    const-string v6, "Shutdown.java"

    invoke-interface {v3, v2, v4, v5, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "ShutdownListener crashed"

    invoke-interface {v3, v2}, Lctz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lbtr;->a:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lbtr;->c:Lcua;

    invoke-virtual {v1}, Lctx;->d()Lcup;

    move-result-object v1

    .line 13
    check-cast v1, Lctz;

    const-string v2, "com/google/android/libraries/performance/primes/Shutdown"

    const-string v3, "shutdown"

    const/16 v4, 0x2d

    const-string v5, "Shutdown.java"

    invoke-interface {v1, v2, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "All ShutdownListeners notified."

    invoke-interface {v1, v2}, Lctz;->a(Ljava/lang/String;)V

    .line 14
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 7
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final a(Lcrm;)V
    .locals 1

    iget-boolean v0, p0, Lbtr;->b:Z

    if-nez v0, :cond_0

    check-cast p1, Lbuk;

    .line 15
    invoke-virtual {p1}, Lbuk;->b()Ljava/lang/Boolean;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lbtr;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lbts;)Z
    .locals 2

    iget-object v0, p0, Lbtr;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lbtr;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lbtr;->a:Ljava/util/List;

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lbts;)V
    .locals 1

    .line 6
    invoke-virtual {p0, p1}, Lbtr;->a(Lbts;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-interface {p1}, Lbts;->b()V

    :cond_0
    return-void
.end method
