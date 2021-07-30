.class final Ldcl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbfl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    xor-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->a()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldcq;

    iget-object v3, v0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    .line 3
    invoke-direct {v2, v3, v0, p1}, Ldcq;-><init>(Landroid/content/Context;Ldcg;Z)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
