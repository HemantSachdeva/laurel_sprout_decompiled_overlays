.class public final Leil;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldvg;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Leil;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Leil;->b:Ljava/util/logging/Logger;

    .line 2
    const-string v0, "internal-stub-type"

    invoke-static {v0}, Ldvg;->a(Ljava/lang/String;)Ldvg;

    move-result-object v0

    sput-object v0, Leil;->a:Ldvg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldvi;Ldxx;Ldvh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 9
    new-instance v0, Leik;

    invoke-direct {v0}, Leik;-><init>()V

    sget-object v1, Leil;->a:Ldvg;

    .line 10
    sget-object v2, Leij;->a:Leij;

    .line 11
    invoke-virtual {p2, v1, v2}, Ldvh;->a(Ldvg;Ljava/lang/Object;)Ldvh;

    move-result-object p2

    new-instance v1, Ldvh;

    .line 12
    invoke-direct {v1, p2}, Ldvh;-><init>(Ldvh;)V

    iput-object v0, v1, Ldvh;->c:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {p0, p1, v1}, Ldvi;->a(Ldxx;Ldvh;)Ldvl;

    move-result-object p0

    .line 13
    const/4 p1, 0x1

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Leii;

    invoke-direct {v1, p0}, Leii;-><init>(Ldvl;)V

    new-instance v2, Ldvk;

    .line 14
    invoke-direct {v2, v1}, Ldvk;-><init>(Leii;)V

    invoke-static {p0, p3, v2}, Leil;->a(Ldvl;Ljava/lang/Object;Ldvk;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lczu;->isDone()Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v2, "Thread interrupted"

    const/4 v3, 0x0

    if-nez p3, :cond_2

    .line 16
    :try_start_2
    invoke-static {}, Leik;->a()V

    .line 17
    invoke-virtual {v0}, Leik;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    if-nez p3, :cond_1

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    iput-object p3, v0, Leik;->b:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Leik;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    if-nez p3, :cond_0

    .line 20
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Leik;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_4
    iput-object v3, v0, Leik;->b:Ljava/lang/Thread;

    goto :goto_2

    .line 26
    :catchall_0
    move-exception p3

    iput-object v3, v0, Leik;->b:Ljava/lang/Thread;

    .line 22
    throw p3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 23
    :cond_1
    :goto_2
    :try_start_5
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 22
    :catchall_1
    move-exception v8

    :try_start_6
    sget-object v3, Leik;->a:Ljava/util/logging/Logger;

    .line 24
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "io.grpc.stub.ClientCalls$ThreadlessExecutor"

    const-string v6, "waitAndDrain"

    const-string v7, "Runnable threw exception"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_3
    invoke-virtual {v0}, Leik;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 47
    :catch_0
    move-exception p2

    .line 26
    :try_start_7
    invoke-virtual {p0, v2, p2}, Ldvl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 p2, 0x1

    goto :goto_0

    .line 32
    :catch_1
    move-exception p2

    goto/16 :goto_6

    :catch_2
    move-exception p2

    goto/16 :goto_7

    .line 27
    :cond_2
    :try_start_8
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p2, :cond_3

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-object p0

    .line 43
    :catch_3
    move-exception p1

    .line 28
    :try_start_9
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p3, "t"

    .line 29
    invoke-static {p1, p3}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, p1

    :goto_4
    if-eqz p3, :cond_6

    .line 30
    instance-of v0, p3, Ldyw;

    if-nez v0, :cond_5

    .line 31
    instance-of v0, p3, Ldyx;

    if-nez v0, :cond_4

    .line 32
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    goto :goto_4

    .line 37
    :cond_4
    check-cast p3, Ldyx;

    new-instance p1, Ldyx;

    iget-object v0, p3, Ldyx;->a:Ldyv;

    iget-object p3, p3, Ldyx;->b:Ldxt;

    .line 38
    invoke-direct {p1, v0, p3}, Ldyx;-><init>(Ldyv;Ldxt;)V

    goto :goto_5

    .line 35
    :cond_5
    check-cast p3, Ldyw;

    new-instance p1, Ldyx;

    iget-object p3, p3, Ldyw;->a:Ldyv;

    .line 36
    invoke-direct {p1, p3, v3}, Ldyx;-><init>(Ldyv;Ldxt;)V

    goto :goto_5

    .line 33
    :cond_6
    sget-object p3, Ldyv;->d:Ldyv;

    const-string v0, "unexpected exception"

    invoke-virtual {p3, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p3

    invoke-virtual {p3, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    .line 28
    :goto_5
    throw p1

    .line 24
    :catch_4
    move-exception p1

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 40
    sget-object p3, Ldyv;->c:Ldyv;

    .line 41
    invoke-virtual {p3, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p3

    .line 42
    invoke-virtual {p3, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 47
    :catchall_2
    move-exception p0

    move p1, p2

    goto :goto_8

    :catch_5
    move-exception p1

    move v9, p2

    move-object p2, p1

    move p1, v9

    goto :goto_6

    :catch_6
    move-exception p1

    move v9, p2

    move-object p2, p1

    move p1, v9

    goto :goto_7

    .line 45
    :catchall_3
    move-exception p0

    const/4 p1, 0x0

    goto :goto_8

    .line 46
    :catch_7
    move-exception p1

    move-object p2, p1

    const/4 p1, 0x0

    .line 45
    :goto_6
    :try_start_a
    invoke-static {p0, p2}, Leil;->a(Ldvl;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 44
    :catch_8
    move-exception p1

    move-object p2, p1

    const/4 p1, 0x0

    .line 46
    :goto_7
    invoke-static {p0, p2}, Leil;->a(Ldvl;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 32
    :catchall_4
    move-exception p0

    .line 45
    :goto_8
    if-eqz p1, :cond_7

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 47
    :cond_7
    goto :goto_a

    :goto_9
    throw p0

    :goto_a
    goto :goto_9
.end method

.method private static a(Ldvl;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 7

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ldvl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v6

    sget-object v1, Leil;->b:Ljava/util/logging/Logger;

    .line 49
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "io.grpc.stub.ClientCalls"

    const-string v4, "cancelThrow"

    const-string v5, "RuntimeException encountered while closing call"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    .line 52
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    .line 53
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 51
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method private static a(Ldvl;Ljava/lang/Object;Ldvk;)V
    .locals 1

    .line 3
    new-instance v0, Ldxt;

    invoke-direct {v0}, Ldxt;-><init>()V

    invoke-virtual {p0, p2, v0}, Ldvl;->a(Ldvk;Ldxt;)V

    iget-object p2, p2, Ldvk;->a:Leii;

    iget-object p2, p2, Leii;->a:Ldvl;

    .line 4
    invoke-virtual {p2}, Ldvl;->b()V

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Ldvl;->a(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Ldvl;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    move-exception p1

    .line 7
    invoke-static {p0, p1}, Leil;->a(Ldvl;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p0, p1}, Leil;->a(Ldvl;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
