.class public final Ldch;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/google/firebase/crash/FirebaseCrash;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crash/FirebaseCrash;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Ldch;->a:Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldch;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const-string v0, "UncaughtException"

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Ldch;->a:Lcom/google/firebase/crash/FirebaseCrash;

    .line 2
    invoke-virtual {v1}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Ldch;->a:Lcom/google/firebase/crash/FirebaseCrash;

    iget-object v2, v1, Lcom/google/firebase/crash/FirebaseCrash;->f:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/crash/FirebaseCrash;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    iget-object v3, v2, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Ldbb;

    .line 5
    invoke-static {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ldbb;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()V

    .line 7
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/crash/FirebaseCrash;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ldcs;

    iget-object v4, v1, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    iget-object v1, v1, Lcom/google/firebase/crash/FirebaseCrash;->f:Ljava/lang/String;

    .line 8
    invoke-direct {v3, v4, v5, v1}, Ldcs;-><init>(Landroid/content/Context;Ldcg;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Ldch;->a:Lcom/google/firebase/crash/FirebaseCrash;

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v1, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ldcp;

    iget-object v4, v1, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    iget-object v1, v1, Lcom/google/firebase/crash/FirebaseCrash;->e:Ldcz;

    .line 10
    invoke-direct {v3, v4, v5, p2, v1}, Ldcp;-><init>(Landroid/content/Context;Ldcg;Ljava/lang/Throwable;Ldcz;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    :cond_2
    nop

    .line 9
    :goto_0
    if-eqz v2, :cond_3

    const-wide/16 v3, 0x2710

    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    move-exception v1

    .line 12
    const-string v2, "Ouch! My own exception handler threw an exception."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Ldch;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
