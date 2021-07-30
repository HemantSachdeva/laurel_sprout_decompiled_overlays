.class final synthetic Lbsk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Leip;

.field private final b:Lbqy;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Leip;Lbqy;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsk;->a:Leip;

    iput-object p2, p0, Lbsk;->b:Lbqy;

    iput-object p3, p0, Lbsk;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lbsk;->a:Leip;

    iget-object v1, p0, Lbsk;->b:Lbqy;

    iget-object v2, p0, Lbsk;->c:Ljava/lang/Runnable;

    sget-object v3, Lcpm;->a:Ljava/util/WeakHashMap;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "PrimesApiImpl.java"

    const-string v4, "lambda$initialize$1"

    const-string v5, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    if-eqz v0, :cond_0

    sget-object v0, Lbsr;->a:Lcua;

    invoke-virtual {v0}, Lctx;->e()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const/16 v6, 0xa6

    invoke-interface {v0, v5, v4, v6, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "scheduling Primes-init task"

    invoke-interface {v0, v3}, Lctz;->a(Ljava/lang/String;)V

    new-instance v0, Lbtb;

    invoke-direct {v0, v1}, Lbtb;-><init>(Lbqy;)V

    invoke-virtual {v1, v0}, Lbqy;->a(Lbqx;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lbsr;->a:Lcua;

    invoke-virtual {v0}, Lctx;->e()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const/16 v1, 0xab

    invoke-interface {v0, v5, v4, v1, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "executing Primes-init task"

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
