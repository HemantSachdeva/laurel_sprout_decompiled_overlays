.class final Lefk;
.super Ldvi;
.source "PG"


# instance fields
.field final synthetic a:Lefs;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lefs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lefk;->a:Lefs;

    invoke-direct {p0}, Ldvi;-><init>()V

    .line 1
    const-string p1, "authority"

    invoke-static {p2, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lefk;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldvh;)Ldvl;
    .locals 8

    .line 2
    new-instance v7, Lebb;

    iget-object v0, p0, Lefk;->a:Lefs;

    iget-object v1, p2, Ldvh;->c:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v1, v0, Lefs;->h:Ljava/util/concurrent/Executor;

    :cond_0
    move-object v2, v1

    iget-object v4, v0, Lefs;->L:Lefa;

    iget-boolean v0, v0, Lefs;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lefk;->a:Lefs;

    iget-object v0, v0, Lefs;->g:Lebh;

    .line 3
    invoke-interface {v0}, Lebh;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v5, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lefk;->a:Lefs;

    iget-object v6, v0, Lefs;->y:Leap;

    .line 4
    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lebb;-><init>(Ldxx;Ljava/util/concurrent/Executor;Ldvh;Lefa;Ljava/util/concurrent/ScheduledExecutorService;Leap;)V

    iget-object p1, p0, Lefk;->a:Lefs;

    iget-object p1, p1, Lefs;->l:Ldwf;

    iput-object p1, v7, Lebb;->i:Ldwf;

    return-object v7
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lefk;->b:Ljava/lang/String;

    return-object v0
.end method
