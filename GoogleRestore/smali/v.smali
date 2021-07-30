.class public Lv;
.super Ls;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 10
    const-string v0, "setValue"

    invoke-static {v0}, Ls;->a(Ljava/lang/String;)V

    iget v0, p0, Ls;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls;->h:I

    iput-object p1, p0, Ls;->f:Ljava/lang/Object;

    .line 11
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ls;->a(Lr;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Ls;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls;->g:Ljava/lang/Object;

    sget-object v2, Ls;->b:Ljava/lang/Object;

    iput-object p1, p0, Ls;->g:Ljava/lang/Object;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lsq;->a()Lsq;

    move-result-object p1

    iget-object v0, p0, Ls;->i:Ljava/lang/Runnable;

    iget-object p1, p1, Lsq;->a:Laqq;

    move-object v1, p1

    check-cast v1, Lss;

    iget-object v2, v1, Lss;->b:Landroid/os/Handler;

    if-nez v2, :cond_2

    iget-object v2, v1, Lss;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    move-object v3, p1

    check-cast v3, Lss;

    iget-object v3, v3, Lss;->b:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-static {v3}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    check-cast p1, Lss;

    iput-object v3, p1, Lss;->b:Landroid/os/Handler;

    .line 8
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 3
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    iget-object p1, v1, Lss;->b:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception p1

    .line 3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
