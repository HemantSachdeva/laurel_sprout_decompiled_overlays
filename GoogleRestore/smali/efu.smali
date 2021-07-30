.class final Lefu;
.super Ledh;
.source "PG"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/lang/ref/ReferenceQueue;

.field private static final d:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private final e:Left;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lefu;->c:Ljava/lang/ref/ReferenceQueue;

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lefu;->d:Ljava/util/concurrent/ConcurrentMap;

    const-class v0, Lefu;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lefu;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ldxk;)V
    .locals 3

    sget-object v0, Lefu;->c:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lefu;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-direct {p0, p1}, Ledh;-><init>(Ldxk;)V

    .line 5
    new-instance v2, Left;

    invoke-direct {v2, p0, p1, v0, v1}, Left;-><init>(Lefu;Ldxk;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v2, p0, Lefu;->e:Left;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget-object v0, p0, Lefu;->e:Left;

    .line 6
    sget v1, Left;->b:I

    iget-object v1, v0, Left;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Left;->clear()V

    :cond_0
    iget-object v0, p0, Ledh;->a:Ldxk;

    check-cast v0, Lefs;

    iget-object v1, v0, Lefs;->A:Ldvj;

    const-string v3, "shutdown() called"

    .line 9
    invoke-virtual {v1, v2, v3}, Ldvj;->a(ILjava/lang/String;)V

    iget-object v1, v0, Lefs;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lefs;->k:Ldzb;

    new-instance v2, Leex;

    .line 11
    invoke-direct {v2, v0}, Leex;-><init>(Lefs;)V

    invoke-virtual {v1, v2}, Ldzb;->a(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lefs;->u:Lefr;

    sget-object v2, Lefs;->c:Ldyv;

    iget-object v3, v1, Lefr;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lefr;->c:Ldyv;

    if-eqz v4, :cond_2

    .line 12
    monitor-exit v3

    goto :goto_0

    .line 21
    :cond_2
    iput-object v2, v1, Lefr;->c:Ldyv;

    iget-object v4, v1, Lefr;->b:Ljava/util/Collection;

    .line 13
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    .line 14
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_5

    iget-object v1, v1, Lefr;->d:Lefs;

    iget-object v1, v1, Lefs;->t:Lebx;

    iget-object v3, v1, Lebx;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, v1, Lebx;->h:Ldyv;

    if-eqz v4, :cond_3

    .line 15
    monitor-exit v3

    goto :goto_0

    :cond_3
    iput-object v2, v1, Lebx;->h:Ldyv;

    iget-object v2, v1, Lebx;->b:Ldzb;

    new-instance v4, Lebu;

    .line 16
    invoke-direct {v4, v1}, Lebu;-><init>(Lebx;)V

    invoke-virtual {v2, v4}, Ldzb;->a(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v1}, Lebx;->a()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lebx;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    iget-object v4, v1, Lebx;->b:Ldzb;

    .line 18
    invoke-virtual {v4, v2}, Ldzb;->a(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lebx;->e:Ljava/lang/Runnable;

    .line 19
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v1, Lebx;->b:Ldzb;

    .line 20
    invoke-virtual {v1}, Ldzb;->a()V

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 12
    :cond_5
    :goto_0
    iget-object v1, v0, Lefs;->k:Ldzb;

    new-instance v2, Leeu;

    .line 21
    invoke-direct {v2, v0}, Leeu;-><init>(Lefs;)V

    invoke-virtual {v1, v2}, Ldzb;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 20
    :catchall_1
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
