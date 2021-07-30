.class final Lefd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private final b:Lehs;


# direct methods
.method public constructor <init>(Lehs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefd;->b:Lehs;

    return-void
.end method


# virtual methods
.method final declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lefd;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lefd;->b:Lehs;

    .line 1
    invoke-virtual {v0}, Lehs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    const-string v1, "%s.getObject()"

    iget-object v2, p0, Lefd;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lefd;->a:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lefd;->a:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lefd;->a:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lefd;->b:Lehs;

    .line 2
    invoke-virtual {v1, v0}, Lehs;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lefd;->a:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
