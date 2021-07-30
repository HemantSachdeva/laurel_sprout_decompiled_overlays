.class public final Legh;
.super Ldvc;
.source "PG"


# instance fields
.field public final a:Lebf;

.field public final b:Ldxx;

.field public final c:Ldxt;

.field public final d:Ldvh;

.field public final e:Ldwb;

.field public final f:Ljava/lang/Object;

.field public g:Lebc;

.field public h:Z

.field i:Lecq;


# direct methods
.method public constructor <init>(Lebf;Ldxx;Ldxt;Ldvh;)V
    .locals 1

    invoke-direct {p0}, Ldvc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Legh;->f:Ljava/lang/Object;

    iput-object p1, p0, Legh;->a:Lebf;

    iput-object p2, p0, Legh;->b:Ldxx;

    iput-object p3, p0, Legh;->c:Ldxt;

    iput-object p4, p0, Legh;->d:Ldvh;

    .line 1
    invoke-static {}, Ldwb;->a()Ldwb;

    move-result-object p1

    iput-object p1, p0, Legh;->e:Ldwb;

    return-void
.end method


# virtual methods
.method public final a(Ldyv;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot fail with OK status"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Legh;->h:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    new-instance v0, Ledc;

    .line 4
    invoke-direct {v0, p1}, Ledc;-><init>(Ldyv;)V

    invoke-virtual {p0, v0}, Legh;->a(Lebc;)V

    return-void
.end method

.method public final a(Lebc;)V
    .locals 3

    iget-boolean v0, p0, Legh;->h:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    .line 5
    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Legh;->h:Z

    iget-object v0, p0, Legh;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Legh;->g:Lebc;

    if-nez v2, :cond_0

    iput-object p1, p0, Legh;->g:Lebc;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Legh;->i:Lecq;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    const-string v0, "delayedStream is null"

    .line 8
    invoke-static {v1, v0}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Legh;->i:Lecq;

    .line 9
    invoke-virtual {v0, p1}, Lecq;->a(Lebc;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
