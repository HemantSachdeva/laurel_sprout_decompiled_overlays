.class final synthetic Lbsl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbsr;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lbsr;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsl;->a:Lbsr;

    iput-object p2, p0, Lbsl;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lbsl;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lbsl;->a:Lbsr;

    iget-object v1, p0, Lbsl;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lbsl;->c:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    invoke-static {v1, v2}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v1

    invoke-static {v1}, Lbte;->a(Lczu;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lbsr;->a:Lcua;

    invoke-virtual {v3}, Lctx;->b()Lcup;

    move-result-object v3

    check-cast v3, Lctz;

    invoke-interface {v3, v1}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v1, 0xbb

    const-string v4, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    const-string v5, "lambda$wrapInitTask$2"

    const-string v6, "PrimesApiImpl.java"

    invoke-interface {v3, v4, v5, v1, v6}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Primes failed to initialize"

    invoke-interface {v3, v1}, Lctz;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbsr;->a()V

    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
