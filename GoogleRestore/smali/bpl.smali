.class public final Lbpl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbpp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbpp;

    .line 1
    invoke-direct {v0}, Lbpp;-><init>()V

    iput-object v0, p0, Lbpl;->a:Lbpp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lbpl;->a:Lbpp;

    .line 2
    invoke-virtual {v0, p1}, Lbpp;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbpl;->a:Lbpp;

    .line 3
    invoke-virtual {v0, p1}, Lbpp;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 4

    iget-object v0, p0, Lbpl;->a:Lbpp;

    const-string v1, "Exception must not be null"

    .line 4
    invoke-static {p1, v1}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lbpp;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5
    monitor-exit v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lbpp;->c:Z

    iput-object p1, v0, Lbpp;->f:Ljava/lang/Exception;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lbpp;->b:Lbpk;

    .line 7
    invoke-virtual {p1, v0}, Lbpk;->a(Lbpi;)V

    .line 5
    :goto_0
    return v3

    .line 7
    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lbpl;->a:Lbpp;

    iget-object v1, v0, Lbpp;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lbpp;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 8
    monitor-exit v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lbpp;->c:Z

    iput-object p1, v0, Lbpp;->e:Ljava/lang/Object;

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lbpp;->b:Lbpk;

    .line 10
    invoke-virtual {p1, v0}, Lbpk;->a(Lbpi;)V

    .line 8
    :goto_0
    return v3

    .line 10
    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
