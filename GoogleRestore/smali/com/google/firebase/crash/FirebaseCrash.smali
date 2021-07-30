.class public Lcom/google/firebase/crash/FirebaseCrash;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile g:Lcom/google/firebase/crash/FirebaseCrash;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ldcg;

.field public e:Ldcz;

.field public f:Ljava/lang/String;

.field private final h:Ldbb;

.field private final i:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ldbb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    sget-object v0, Ldci;->a:Ldci;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ldcg;

    .line 2
    invoke-direct {p1}, Ldcg;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 3
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->i:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    const-string v0, "This method shouldn\'t be invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ldbb;Lddf;)V
    .locals 8

    const-string v0, "firebase_crash_collection_enabled"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    sget-object v2, Ldci;->a:Ldci;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ldcg;

    .line 6
    invoke-direct {v2}, Ldcg;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 7
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->i:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->h:Ldbb;

    .line 8
    invoke-virtual {p1}, Ldbb;->a()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    .line 9
    const-string v4, "FirebaseCrashSharedPrefs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 10
    :try_start_0
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ldci;->b:Ldci;

    goto/16 :goto_4

    .line 34
    :cond_0
    sget-object v0, Ldci;->c:Ldci;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 19
    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to access enable value: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 12
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 34
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    .line 14
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 15
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 19
    :cond_3
    goto :goto_3

    .line 12
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 18
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "No crash enable meta data found: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/String;

    .line 18
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v4, "FirebaseCrash"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_3
    if-nez v2, :cond_5

    sget-object v0, Ldci;->a:Ldci;

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ldci;->b:Ldci;

    goto :goto_4

    :cond_6
    sget-object v0, Ldci;->c:Ldci;

    .line 20
    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lbln;->a:Lcls;

    .line 22
    invoke-static {v3}, Lcls;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ldcc;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Ldcd;

    invoke-direct {v2}, Ldcd;-><init>()V

    const-class v3, Ldav;

    .line 23
    invoke-interface {p2, v3, v1, v2}, Lddf;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lddd;)V

    new-instance p2, Ldcn;

    .line 24
    invoke-direct {p2, p1}, Ldcn;-><init>(Ldbb;)V

    new-instance p1, Ldch;

    .line 25
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Ldch;-><init>(Lcom/google/firebase/crash/FirebaseCrash;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 26
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance p1, Ldcj;

    .line 27
    invoke-direct {p1, p0}, Ldcj;-><init>(Lcom/google/firebase/crash/FirebaseCrash;)V

    sget-object v1, Lbln;->a:Lcls;

    const/4 v1, 0x2

    .line 28
    invoke-static {v1}, Lcls;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ldck;

    .line 29
    invoke-direct {v2, p2}, Ldck;-><init>(Ldcn;)V

    .line 30
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    new-instance v3, Ldcm;

    .line 31
    invoke-direct {v3, p2, v2, p1}, Ldcm;-><init>(Ldcn;Ljava/util/concurrent/Future;Ldcj;)V

    .line 32
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance p1, Ldcf;

    .line 34
    invoke-direct {p1, p0}, Ldcf;-><init>(Lcom/google/firebase/crash/FirebaseCrash;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lcom/google/firebase/crash/FirebaseCrash;
    .locals 1

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->g:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Ldbb;->d()Ldbb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->getInstance(Ldbb;)Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->g:Lcom/google/firebase/crash/FirebaseCrash;

    :cond_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->g:Lcom/google/firebase/crash/FirebaseCrash;

    return-object v0
.end method

.method public static getInstance(Ldbb;)Lcom/google/firebase/crash/FirebaseCrash;
    .locals 1

    const-class v0, Lcom/google/firebase/crash/FirebaseCrash;

    .line 36
    invoke-virtual {p0, v0}, Ldbb;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crash/FirebaseCrash;

    return-object p0
.end method


# virtual methods
.method public final a(Ldcw;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->h:Ldbb;

    const-class v1, Ldbe;

    .line 44
    invoke-virtual {v0, v1}, Ldbb;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbe;

    if-nez v0, :cond_1

    const-string v0, "FirebaseCrashAnalytics"

    const-string v1, "Unable to log event, missing Google Analytics for Firebase library"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Ldcz;

    .line 46
    invoke-direct {v1, v0}, Ldcz;-><init>(Ldbe;)V

    move-object v0, v1

    .line 45
    :goto_0
    iput-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->e:Ldcz;

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    iget-object v1, v0, Ldcg;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Ldcg;->b:Ldcw;

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->e:Ldcz;

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->e:Ldcz;

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    iget-object p1, p1, Ldcz;->a:Ldbe;

    new-instance v1, Ldda;

    .line 49
    invoke-direct {v1, v0}, Ldda;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ldbe;->b()V

    .line 43
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->i:Ljava/util/concurrent/CountDownLatch;

    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 51
    invoke-static {}, Ldbb;->d()Ldbb;

    move-result-object p1

    invoke-virtual {p1}, Ldbb;->e()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/firebase/crash/FirebaseCrash;->a(Z)V

    :cond_3
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ldci;->a:Ldci;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ldcr;

    iget-object v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    .line 55
    invoke-direct {v0, v1, v2}, Ldcr;-><init>(Landroid/content/Context;Ldcg;)V

    iget-object v1, v0, Ldco;->b:Lbpl;

    iget-object v1, v1, Lbpl;->a:Lbpp;

    new-instance v2, Ldce;

    .line 56
    invoke-direct {v2, p0, p1}, Ldce;-><init>(Lcom/google/firebase/crash/FirebaseCrash;Z)V

    .line 57
    invoke-virtual {v1, v2}, Lbpi;->a(Lbpd;)V

    iget-object p1, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    .line 58
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->i:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x4e20

    .line 59
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 60
    const-string v1, "FirebaseCrash"

    const-string v2, "Failed waiting for crash api to load."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Ljava/util/concurrent/ExecutorService;

    .line 37
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/crash/FirebaseCrash;->b()V

    iget-object v0, p0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldci;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Ldcg;

    .line 41
    invoke-virtual {v2}, Ldcg;->a()Ldcw;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Ldci;->a:Ldci;

    if-eq v0, v2, :cond_1

    sget-object v2, Ldci;->b:Ldci;

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Ldbb;->d()Ldbb;

    move-result-object v0

    invoke-virtual {v0}, Ldbb;->e()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method
