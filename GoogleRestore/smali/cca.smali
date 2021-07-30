.class final Lcca;
.super Landroid/database/ContentObserver;
.source "PG"


# instance fields
.field final synthetic a:Lccb;


# direct methods
.method public constructor <init>(Lccb;)V
    .locals 0

    iput-object p1, p0, Lcca;->a:Lccb;

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcca;->a:Lccb;

    iget-object v0, p1, Lccb;->c:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p1, Lccb;->d:Ljava/util/Map;

    .line 3
    invoke-static {}, Lccv;->a()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lccb;->e:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc;

    .line 6
    invoke-interface {v1}, Lccc;->a()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    .line 4
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
