.class public final Ldzr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebm;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lefx;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:I

.field public final g:Z

.field public final h:Leib;

.field public final i:Z

.field public final j:Z

.field public k:Z

.field public l:Ldyv;

.field public m:Z

.field public final n:Ldzk;

.field private final o:Ldwp;

.field private final p:Ljava/net/InetSocketAddress;

.field private final q:Ljava/lang/String;

.field private final r:Ldvb;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Ldzk;Ljava/net/InetSocketAddress;Ljava/lang/String;Ldvb;Ljava/util/concurrent/Executor;ILeib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Ldzr;->c:Ljava/lang/Object;

    new-instance p6, Ljava/util/HashSet;

    .line 1
    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Ldzr;->d:Ljava/util/Set;

    .line 2
    const-string p6, "address"

    invoke-static {p2, p6}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Ldzr;->p:Ljava/net/InetSocketAddress;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p6, p2}, Ldwp;->a(Ljava/lang/Class;Ljava/lang/String;)Ldwp;

    move-result-object p2

    iput-object p2, p0, Ldzr;->o:Ldwp;

    iput-object p3, p0, Ldzr;->q:Ljava/lang/String;

    .line 4
    invoke-static {}, Ledp;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldzr;->a:Ljava/lang/String;

    const/high16 p2, 0x400000

    iput p2, p0, Ldzr;->f:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Ldzr;->g:Z

    .line 5
    const-string p3, "executor"

    invoke-static {p5, p3}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p5, p0, Ldzr;->e:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Ldzr;->n:Ldzk;

    iput-object p7, p0, Ldzr;->h:Leib;

    .line 6
    invoke-static {}, Ldvb;->a()Lduz;

    move-result-object p1

    sget-object p3, Ledj;->a:Ldva;

    sget-object p5, Ldyo;->c:Ldyo;

    .line 7
    invoke-virtual {p1, p3, p5}, Lduz;->a(Ldva;Ljava/lang/Object;)V

    sget-object p3, Ledj;->b:Ldva;

    .line 8
    invoke-virtual {p1, p3, p4}, Lduz;->a(Ldva;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lduz;->a()Ldvb;

    move-result-object p1

    iput-object p1, p0, Ldzr;->r:Ldvb;

    iput-boolean p2, p0, Ldzr;->i:Z

    iput-boolean p2, p0, Ldzr;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Ldvb;
    .locals 1

    iget-object v0, p0, Ldzr;->r:Ldvb;

    return-object v0
.end method

.method public final bridge synthetic a(Ldxx;Ldxt;Ldvh;)Lebc;
    .locals 12

    const-string v0, "method"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Ldxx;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Ldzr;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "https://"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Ldzr;->r:Ldvb;

    invoke-static {p3, v0}, Leht;->a(Ldvh;Ldvb;)Leht;

    move-result-object v10

    new-instance v0, Ldzq;

    move-object v5, v0

    move-object v6, p0

    move-object v8, p2

    move-object v9, p1

    move-object v11, p3

    invoke-direct/range {v5 .. v11}, Ldzq;-><init>(Ldzr;Ljava/lang/String;Ldxt;Ldxx;Leht;Ldvh;)V

    iget-object p1, v0, Ldzq;->a:Ldzo;

    return-object p1
.end method

.method public final a(Lefx;)Ljava/lang/Runnable;
    .locals 1

    iput-object p1, p0, Ldzr;->b:Lefx;

    iget-object p1, p0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldzr;->m:Z

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ldzp;

    .line 27
    invoke-direct {p1, p0}, Ldzp;-><init>(Ldzr;)V

    return-object p1

    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ldyv;)V
    .locals 7

    iget-object v0, p0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ldzr;->k:Z

    if-eqz v1, :cond_0

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Ldzr;->s:Z

    if-eqz v0, :cond_1

    .line 18
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldzr;->s:Z

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Ldzr;->b:Lefx;

    check-cast v1, Leel;

    iget-object v2, v1, Leel;->c:Leen;

    iget-object v2, v2, Leen;->d:Ldvj;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Leel;->a:Lebm;

    .line 20
    invoke-interface {v6}, Lebm;->b()Ldwp;

    move-result-object v6

    aput-object v6, v4, v5

    .line 21
    invoke-static {p1}, Leen;->b(Ldyv;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "{0} SHUTDOWN with {1}"

    .line 22
    invoke-virtual {v2, v3, v5, v4}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, v1, Leel;->b:Z

    iget-object v2, v1, Leel;->c:Leen;

    iget-object v2, v2, Leen;->e:Ldzb;

    new-instance v3, Leej;

    .line 23
    invoke-direct {v3, v1, p1}, Leej;-><init>(Leel;Ldyv;)V

    invoke-virtual {v2, v3}, Ldzb;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iput-boolean v0, p0, Ldzr;->k:Z

    iput-object p1, p0, Ldzr;->l:Ldyv;

    .line 24
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-virtual {p0}, Ldzr;->c()V

    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 24
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 17
    :catchall_1
    move-exception p1

    .line 19
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 25
    :catchall_2
    move-exception p1

    .line 17
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method final a(Ldzo;Ldyv;)V
    .locals 4

    iget-object v0, p0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldzr;->d:Ljava/util/Set;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Ldyv;->l:Ldys;

    .line 11
    sget-object v2, Ldys;->b:Ldys;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p2, Ldyv;->l:Ldys;

    sget-object v2, Ldys;->e:Ldys;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 11
    :goto_0
    iget-object p1, p1, Ldzo;->p:Leds;

    .line 12
    new-instance v1, Ldxt;

    invoke-direct {v1}, Ldxt;-><init>()V

    invoke-virtual {p1, p2, v3, v1}, Leac;->a(Ldyv;ZLdxt;)V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Ldzr;->c()V

    return-void

    .line 15
    :cond_2
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Ldwp;
    .locals 1

    iget-object v0, p0, Ldzr;->o:Ldwp;

    return-object v0
.end method

.method final c()V
    .locals 5

    iget-object v0, p0, Ldzr;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ldzr;->k:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldzr;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ldzr;->d:Ljava/util/Set;

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ldzr;->t:Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldzr;->b:Lefx;

    check-cast v0, Leel;

    iget-boolean v2, v0, Leel;->b:Z

    const-string v3, "transportShutdown() must be called before transportTerminated()."

    .line 31
    invoke-static {v2, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v2, v0, Leel;->c:Leen;

    iget-object v2, v2, Leen;->d:Ldvj;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Leel;->a:Lebm;

    .line 32
    invoke-interface {v4}, Lebm;->b()Ldwp;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "{0} Terminated"

    invoke-virtual {v2, v3, v4, v1}, Ldvj;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Leel;->c:Leen;

    iget-object v1, v1, Leen;->c:Ldwn;

    iget-object v2, v0, Leel;->a:Lebm;

    iget-object v1, v1, Ldwn;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    invoke-static {v1, v2}, Ldwn;->b(Ljava/util/Map;Ldwo;)V

    iget-object v1, v0, Leel;->c:Leen;

    iget-object v2, v0, Leel;->a:Lebm;

    iget-object v3, v1, Leen;->e:Ldzb;

    new-instance v4, Leec;

    .line 34
    invoke-direct {v4, v1, v2}, Leec;-><init>(Leen;Lebm;)V

    invoke-virtual {v3, v4}, Ldzb;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v0, Leel;->c:Leen;

    iget-object v1, v1, Leen;->e:Ldzb;

    new-instance v2, Leek;

    .line 35
    invoke-direct {v2, v0}, Leek;-><init>(Leel;)V

    invoke-virtual {v1, v2}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 29
    :cond_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldzr;->p:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
