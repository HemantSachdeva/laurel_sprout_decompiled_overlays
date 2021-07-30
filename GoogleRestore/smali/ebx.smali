.class final Lebx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lefy;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ldzb;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Lefx;

.field public g:Ljava/util/Collection;

.field public h:Ldyv;

.field private final i:Ldwp;

.field private final j:Ljava/util/concurrent/Executor;

.field private k:Ldxe;

.field private l:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ldzb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lebx;

    .line 1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldwp;->a(Ljava/lang/Class;Ljava/lang/String;)Ldwp;

    move-result-object v0

    iput-object v0, p0, Lebx;->i:Ldwp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lebx;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lebx;->g:Ljava/util/Collection;

    iput-object p1, p0, Lebx;->j:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lebx;->b:Ldzb;

    return-void
.end method

.method private final a(Ldxa;)Lebw;
    .locals 2

    new-instance v0, Lebw;

    .line 3
    invoke-direct {v0, p0, p1}, Lebw;-><init>(Lebx;Ldxa;)V

    iget-object p1, p0, Lebx;->g:Ljava/util/Collection;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lebx;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lebx;->g:Ljava/util/Collection;

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lebx;->b:Ldzb;

    iget-object v1, p0, Lebx;->c:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {p1, v1}, Ldzb;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ldxx;Ldxt;Ldvh;)Lebc;
    .locals 6

    :try_start_0
    new-instance v0, Ldxa;

    .line 10
    invoke-direct {v0, p1, p2, p3}, Ldxa;-><init>(Ldxx;Ldxt;Ldvh;)V

    const/4 p1, 0x0

    const-wide/16 v1, -0x1

    :goto_0
    iget-object p2, p0, Lebx;->a:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lebx;->h:Ldyv;

    if-eqz v3, :cond_0

    new-instance p1, Ledc;

    .line 15
    invoke-direct {p1, v3}, Ledc;-><init>(Ldyv;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lebx;->b:Ldzb;

    .line 16
    :goto_1
    invoke-virtual {p2}, Ldzb;->a()V

    return-object p1

    :cond_0
    :try_start_2
    iget-object v3, p0, Lebx;->k:Ldxe;

    if-nez v3, :cond_1

    .line 17
    invoke-direct {p0, v0}, Lebx;->a(Ldxa;)Lebw;

    move-result-object p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p2, p0, Lebx;->b:Ldzb;

    goto :goto_1

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    :try_start_3
    iget-wide v4, p0, Lebx;->l:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_2

    .line 19
    invoke-direct {p0, v0}, Lebx;->a(Ldxa;)Lebw;

    move-result-object p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p2, p0, Lebx;->b:Ldzb;

    goto :goto_1

    .line 16
    :cond_2
    :try_start_4
    iget-wide v1, p0, Lebx;->l:J

    .line 11
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    :try_start_5
    invoke-virtual {v3}, Ldxe;->a()Ldwz;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Ldvh;->a()Z

    move-result p2

    .line 14
    invoke-static {p1, p2}, Ledp;->a(Ldwz;Z)Lebf;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, v0, Ldxa;->c:Ldxx;

    iget-object p3, v0, Ldxa;->b:Ldxt;

    iget-object v0, v0, Ldxa;->a:Ldvh;

    .line 18
    invoke-interface {p1, p2, p3, v0}, Lebf;->a(Ldxx;Ldxt;Ldvh;)Lebc;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object p2, p0, Lebx;->b:Ldzb;

    goto :goto_1

    .line 16
    :cond_3
    move-object p1, v3

    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 11
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 16
    :catchall_1
    move-exception p1

    iget-object p2, p0, Lebx;->b:Ldzb;

    invoke-virtual {p2}, Ldzb;->a()V

    .line 20
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Lefx;)Ljava/lang/Runnable;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method final a(Ldxe;)V
    .locals 8

    iget-object v0, p0, Lebx;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lebx;->k:Ldxe;

    iget-wide v1, p0, Lebx;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lebx;->l:J

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p0}, Lebx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 22
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lebx;->g:Ljava/util/Collection;

    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 26
    check-cast v4, Lebw;

    .line 27
    iget-object v5, v4, Lebw;->a:Ldxa;

    .line 28
    invoke-virtual {p1}, Ldxe;->a()Ldwz;

    move-result-object v5

    .line 29
    iget-object v6, v4, Lebw;->a:Ldxa;

    iget-object v6, v6, Ldxa;->a:Ldvh;

    .line 30
    invoke-virtual {v6}, Ldvh;->a()Z

    move-result v7

    .line 31
    invoke-static {v5, v7}, Ledp;->a(Ldwz;Z)Lebf;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, p0, Lebx;->j:Ljava/util/concurrent/Executor;

    iget-object v6, v6, Ldvh;->c:Ljava/util/concurrent/Executor;

    if-eqz v6, :cond_1

    move-object v7, v6

    :cond_1
    new-instance v6, Lebv;

    .line 32
    invoke-direct {v6, v4, v5}, Lebv;-><init>(Lebw;Lebf;)V

    invoke-interface {v7, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lebx;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 34
    :try_start_1
    invoke-virtual {p0}, Lebx;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 35
    monitor-exit p1

    return-void

    :cond_4
    iget-object v1, p0, Lebx;->g:Ljava/util/Collection;

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lebx;->g:Ljava/util/Collection;

    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lebx;->g:Ljava/util/Collection;

    .line 39
    :cond_5
    invoke-virtual {p0}, Lebx;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lebx;->b:Ldzb;

    iget-object v1, p0, Lebx;->d:Ljava/lang/Runnable;

    .line 40
    invoke-virtual {v0, v1}, Ldzb;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lebx;->h:Ldyv;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lebx;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lebx;->b:Ldzb;

    .line 41
    invoke-virtual {v1, v0}, Ldzb;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lebx;->e:Ljava/lang/Runnable;

    .line 42
    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lebx;->b:Ldzb;

    .line 43
    invoke-virtual {p1}, Ldzb;->a()V

    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 42
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 22
    :cond_7
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    .line 43
    :catchall_1
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Ldyv;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lebx;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lebx;->g:Ljava/util/Collection;

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ldwp;
    .locals 1

    iget-object v0, p0, Lebx;->i:Ldwp;

    return-object v0
.end method
