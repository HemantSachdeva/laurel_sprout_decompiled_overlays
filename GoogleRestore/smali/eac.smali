.class public abstract Leac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leaf;
.implements Lefz;


# instance fields
.field public a:Lebq;

.field public final b:Ljava/lang/Object;

.field public final c:Leib;

.field public final d:Legc;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Leht;

.field public i:Lebe;

.field public j:Ldwf;

.field public volatile k:Z

.field public l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Runnable;

.field private p:Z


# direct methods
.method protected constructor <init>(ILeht;Leib;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leac;->b:Ljava/lang/Object;

    .line 1
    const-string p1, "statsTraceCtx"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Leac;->c:Leib;

    new-instance v6, Legc;

    sget-object v2, Ldvt;->a:Ldvu;

    .line 2
    const/high16 v3, 0x400000

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Legc;-><init>(Lefz;Ldwd;ILeht;Leib;)V

    iput-object v6, p0, Leac;->d:Legc;

    iput-object v6, p0, Leac;->a:Lebq;

    .line 3
    sget-object p3, Ldwf;->b:Ldwf;

    iput-object p3, p0, Leac;->j:Ldwf;

    const/4 p3, 0x0

    iput-boolean p3, p0, Leac;->n:Z

    .line 4
    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Leac;->h:Leht;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Leac;->b:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leac;->b:Ljava/lang/Object;

    .line 25
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Leac;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Leac;->e:I

    const v4, 0x8000

    if-ge v2, v4, :cond_0

    iget-boolean v2, p0, Leac;->g:Z

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 29
    :cond_0
    nop

    .line 26
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    iget-object v0, p0, Leac;->i:Lebe;

    .line 29
    invoke-interface {v0}, Lehv;->a()V

    :cond_1
    return-void

    .line 28
    :catchall_0
    move-exception v2

    .line 27
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 29
    :catchall_1
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public final a(Ldyv;Lebd;Ldxt;)V
    .locals 4

    iget-boolean v0, p0, Leac;->m:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Leac;->m:Z

    iget-object v1, p0, Leac;->h:Leht;

    iget-object v2, v1, Leht;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Leht;->c:[Lehc;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 6
    aget-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leac;->i:Lebe;

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lebe;->a(Ldyv;Lebd;Ldxt;)V

    iget-object p2, p0, Leac;->c:Leib;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result p1

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_1

    iget-wide v2, p2, Leib;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Leib;->c:J

    return-void

    :cond_1
    iget-wide v2, p2, Leib;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Leib;->d:J

    :cond_2
    return-void
.end method

.method public final a(Ldyv;ZLdxt;)V
    .locals 3

    .line 13
    sget-object v0, Lebd;->a:Lebd;

    const-string v1, "status"

    .line 14
    invoke-static {p1, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "trailers"

    .line 15
    invoke-static {p3, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p0, Leac;->l:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    :cond_0
    iput-boolean v2, p0, Leac;->l:Z

    .line 16
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v1

    iput-boolean v1, p0, Leac;->p:Z

    iget-object v1, p0, Leac;->b:Ljava/lang/Object;

    .line 17
    monitor-enter v1

    :try_start_0
    iput-boolean v2, p0, Leac;->g:Z

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Leac;->n:Z

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Leac;->o:Ljava/lang/Runnable;

    .line 19
    invoke-virtual {p0, p1, v0, p3}, Leac;->a(Ldyv;Lebd;Ldxt;)V

    return-void

    :cond_1
    new-instance v1, Ldzv;

    .line 20
    invoke-direct {v1, p0, p1, v0, p3}, Ldzv;-><init>(Leac;Ldyv;Lebd;Ldxt;)V

    iput-object v1, p0, Leac;->o:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    iget-object p1, p0, Leac;->a:Lebq;

    .line 21
    invoke-interface {p1}, Lebq;->close()V

    return-void

    :cond_2
    iget-object p1, p0, Leac;->a:Lebq;

    check-cast p1, Legc;

    invoke-virtual {p1}, Legc;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Legc;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p1}, Legc;->close()V

    return-void

    :cond_5
    iput-boolean v2, p1, Legc;->e:Z

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lega;)V
    .locals 1

    iget-object v0, p0, Leac;->i:Lebe;

    .line 23
    invoke-interface {v0, p1}, Lehv;->a(Lega;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Leac;->l:Z

    .line 9
    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leac;->n:Z

    iget-boolean v1, p0, Leac;->p:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 10
    sget-object p1, Ldyv;->h:Ldyv;

    .line 11
    const-string v1, "Encountered end-of-stream mid-frame"

    invoke-virtual {p1, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    new-instance v1, Ldxt;

    invoke-direct {v1}, Ldxt;-><init>()V

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Leac;->a(Ldyv;ZLdxt;)V

    :cond_0
    iget-object p1, p0, Leac;->o:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Leac;->o:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
