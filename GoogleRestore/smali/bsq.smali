.class final Lbsq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbqn;
.implements Lbts;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Z

.field private final c:Lbqy;


# direct methods
.method public constructor <init>(Lbqy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsq;->a:Ljava/util/List;

    iput-object p1, p0, Lbsq;->c:Lbqy;

    .line 2
    invoke-virtual {p1, p0}, Lbqy;->a(Lbqx;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbsq;->b:Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbsq;->c:Lbqy;

    .line 4
    invoke-virtual {v0, p0}, Lbqy;->b(Lbqx;)V

    iget-object v0, p0, Lbsq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lbtm;

    .line 6
    invoke-interface {v3}, Lbtm;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbsq;->c:Lbqy;

    .line 7
    invoke-virtual {v0, p0}, Lbqy;->b(Lbqx;)V

    return-void
.end method
