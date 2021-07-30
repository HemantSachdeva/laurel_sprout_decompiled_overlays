.class final Lebw;
.super Lecq;
.source "PG"


# instance fields
.field public final a:Ldxa;

.field public final b:Ldwb;

.field final synthetic c:Lebx;


# direct methods
.method public constructor <init>(Lebx;Ldxa;)V
    .locals 0

    iput-object p1, p0, Lebw;->c:Lebx;

    .line 1
    invoke-direct {p0}, Lecq;-><init>()V

    .line 2
    invoke-static {}, Ldwb;->a()Ldwb;

    move-result-object p1

    iput-object p1, p0, Lebw;->b:Ldwb;

    iput-object p2, p0, Lebw;->a:Ldxa;

    return-void
.end method


# virtual methods
.method public final b(Ldyv;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lecq;->b(Ldyv;)V

    iget-object p1, p0, Lebw;->c:Lebx;

    iget-object p1, p1, Lebx;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lebw;->c:Lebx;

    iget-object v1, v0, Lebx;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lebx;->g:Ljava/util/Collection;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lebw;->c:Lebx;

    .line 5
    invoke-virtual {v1}, Lebx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebw;->c:Lebx;

    iget-object v1, v0, Lebx;->b:Ldzb;

    iget-object v0, v0, Lebx;->d:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v1, v0}, Ldzb;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lebw;->c:Lebx;

    iget-object v1, v0, Lebx;->h:Ldyv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lebx;->b:Ldzb;

    iget-object v0, v0, Lebx;->e:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v1, v0}, Ldzb;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lebw;->c:Lebx;

    const/4 v1, 0x0

    iput-object v1, v0, Lebx;->e:Ljava/lang/Runnable;

    .line 8
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lebw;->c:Lebx;

    iget-object p1, p1, Lebx;->b:Ldzb;

    .line 9
    invoke-virtual {p1}, Ldzb;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
