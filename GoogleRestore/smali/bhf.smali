.class public abstract Lbhf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Z

.field final synthetic f:Lbhl;


# direct methods
.method public constructor <init>(Lbhl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lbhf;->f:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbhf;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbhf;->e:Z

    return-void
.end method


# virtual methods
.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public final d()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lbhf;->e()V

    iget-object v0, p0, Lbhf;->f:Lbhl;

    iget-object v0, v0, Lbhl;->g:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbhf;->f:Lbhl;

    iget-object v1, v1, Lbhl;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lbhf;->d:Ljava/lang/Object;

    .line 1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
