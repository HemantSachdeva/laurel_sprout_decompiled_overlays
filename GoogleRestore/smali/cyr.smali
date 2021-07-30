.class public abstract Lcyr;
.super Ldal;
.source "PG"

# interfaces
.implements Lczu;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/lang/Object;

.field public static final e:Z

.field public static final f:Lcye;


# instance fields
.field public volatile listeners:Lcyi;

.field public volatile value:Ljava/lang/Object;

.field public volatile waiters:Lcyq;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Lcyr;

    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 1
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 2
    :goto_0
    sput-boolean v1, Lcyr;->e:Z

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcyr;->a:Ljava/util/logging/Logger;

    .line 4
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcyp;

    invoke-direct {v2}, Lcyp;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    move-object v8, v5

    goto :goto_1

    .line 11
    :catchall_0
    move-exception v2

    :try_start_2
    new-instance v9, Lcyj;

    const-class v3, Lcyq;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "thread"

    .line 5
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v3, Lcyq;

    const-class v5, Lcyq;

    const-string v6, "next"

    .line 6
    invoke-static {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcyq;

    const-string v6, "waiters"

    .line 7
    invoke-static {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v3, Lcyi;

    const-string v7, "listeners"

    .line 8
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v3, Ljava/lang/Object;

    const-string v8, "value"

    .line 9
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcyj;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v1

    move-object v5, v2

    move-object v2, v9

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcyl;

    invoke-direct {v0}, Lcyl;-><init>()V

    move-object v8, v1

    move-object v5, v2

    move-object v2, v0

    .line 4
    :goto_1
    sput-object v2, Lcyr;->f:Lcye;

    if-eqz v8, :cond_0

    sget-object v6, Lcyr;->a:Ljava/util/logging/Logger;

    .line 10
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AbstractFuture"

    const-string v0, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    move-object v3, v6

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcyr;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldal;-><init>()V

    return-void
.end method

.method public static a(Lczu;)Ljava/lang/Object;
    .locals 8

    .line 128
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcym;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 129
    check-cast p0, Lcyr;

    iget-object p0, p0, Lcyr;->value:Ljava/lang/Object;

    .line 130
    instance-of v0, p0, Lcyf;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p0

    check-cast v0, Lcyf;

    .line 132
    iget-boolean v1, v0, Lcyf;->c:Z

    if-eqz v1, :cond_1

    .line 133
    iget-object p0, v0, Lcyf;->d:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lcyf;

    .line 134
    invoke-direct {v0, v2, p0}, Lcyf;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcyf;->b:Lcyf;

    :cond_1
    :goto_0
    return-object p0

    .line 135
    :cond_2
    instance-of v1, p0, Ldal;

    if-eqz v1, :cond_4

    .line 136
    move-object v1, p0

    check-cast v1, Ldal;

    .line 137
    invoke-virtual {v1}, Ldal;->f()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 147
    :cond_3
    new-instance p0, Lcyh;

    invoke-direct {p0, v1}, Lcyh;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 138
    :cond_4
    :goto_1
    invoke-interface {p0}, Lczu;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcyr;->e:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_5

    .line 139
    sget-object p0, Lcyf;->b:Lcyf;

    return-object p0

    .line 140
    :cond_5
    :try_start_0
    invoke-static {p0}, Lcyr;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_6

    .line 141
    new-instance v3, Lcyf;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcyf;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_6
    if-nez v3, :cond_7

    sget-object v3, Lcyr;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-object v3

    .line 143
    :catchall_0
    move-exception p0

    .line 142
    new-instance v0, Lcyh;

    invoke-direct {v0, p0}, Lcyh;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    if-nez v1, :cond_8

    .line 143
    new-instance v1, Lcyh;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x4d

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcyh;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 144
    :cond_8
    new-instance p0, Lcyf;

    invoke-direct {p0, v2, v0}, Lcyf;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    .line 147
    :catch_1
    move-exception v3

    if-eqz v1, :cond_9

    .line 145
    new-instance v1, Lcyf;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x54

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcyf;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 146
    :cond_9
    new-instance p0, Lcyh;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcyh;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private final a(Lcyq;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lcyq;->thread:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcyr;->waiters:Lcyq;

    sget-object v1, Lcyq;->a:Lcyq;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcyq;->next:Lcyq;

    iget-object v3, p1, Lcyq;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcyq;->next:Lcyq;

    iget-object p1, v1, Lcyq;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcyr;->f:Lcye;

    .line 158
    invoke-virtual {v3, p0, p1, v2}, Lcye;->a(Lcyr;Lcyq;Lcyq;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 0
    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    .line 158
    :cond_3
    return-void
.end method

.method public static a(Lcyr;)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcyr;->waiters:Lcyq;

    sget-object v3, Lcyr;->f:Lcye;

    sget-object v4, Lcyq;->a:Lcyq;

    .line 58
    invoke-virtual {v3, p0, v2, v4}, Lcye;->a(Lcyr;Lcyq;Lcyq;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcyq;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    iput-object v0, v2, Lcyq;->thread:Ljava/lang/Thread;

    .line 59
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    iget-object v2, v2, Lcyq;->next:Lcyq;

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcyr;->a()V

    :cond_3
    iget-object v2, p0, Lcyr;->listeners:Lcyi;

    sget-object v3, Lcyr;->f:Lcye;

    .line 61
    sget-object v4, Lcyi;->a:Lcyi;

    invoke-virtual {v3, p0, v2, v4}, Lcye;->a(Lcyr;Lcyi;Lcyi;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcyi;->next:Lcyi;

    iput-object p0, v1, Lcyi;->next:Lcyi;

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz p0, :cond_7

    iget-object v1, p0, Lcyi;->next:Lcyi;

    iget-object v2, p0, Lcyi;->b:Ljava/lang/Runnable;

    .line 62
    instance-of v3, v2, Lcyk;

    if-eqz v3, :cond_6

    .line 63
    check-cast v2, Lcyk;

    .line 64
    iget-object p0, v2, Lcyk;->a:Lcyr;

    .line 65
    iget-object v3, p0, Lcyr;->value:Ljava/lang/Object;

    if-ne v3, v2, :cond_5

    .line 66
    iget-object v3, v2, Lcyk;->b:Lczu;

    invoke-static {v3}, Lcyr;->a(Lczu;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcyr;->f:Lcye;

    .line 67
    invoke-virtual {v4, p0, v2, v3}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcyi;->c:Ljava/util/concurrent/Executor;

    .line 68
    invoke-static {v2, p0}, Lcyr;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 61
    :goto_4
    move-object p0, v1

    goto :goto_3

    .line 68
    :cond_7
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 27
    const-string v1, "PENDING"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcyr;->value:Ljava/lang/Object;

    .line 28
    instance-of v2, v1, Lcyk;

    const-string v3, "]"

    if-eqz v2, :cond_0

    .line 29
    const-string v2, ", setFuture=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    check-cast v1, Lcyk;

    iget-object v1, v1, Lcyk;->b:Lczu;

    invoke-direct {p0, p1, v1}, Lcyr;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcyr;->g()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 34
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x26

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Exception thrown from implementation: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 35
    const-string v2, ", info=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcyr;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, p1}, Lcyr;->b(Ljava/lang/StringBuilder;)V

    :cond_3
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    :try_start_0
    const-string p2, "this future"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 40
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 41
    :goto_0
    const-string v0, "Exception thrown from implementation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 122
    instance-of v0, p0, Lcyf;

    if-nez v0, :cond_2

    .line 126
    instance-of v0, p0, Lcyh;

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcyr;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcyh;

    iget-object p0, p0, Lcyh;->b:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 123
    :cond_2
    check-cast p0, Lcyf;

    iget-object p0, p0, Lcyf;->d:Ljava/lang/Throwable;

    .line 124
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    throw v0
.end method

.method private static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 148
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 150
    :goto_1
    throw p0

    .line 149
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 69
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Lcyr;->a:Ljava/util/logging/Logger;

    .line 70
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final b(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 12
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Lcyr;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p0, p1, v1}, Lcyr;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 18
    :catch_1
    move-exception v0

    .line 17
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 15
    :catch_2
    move-exception v1

    .line 18
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 19
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcyr;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcyr;->listeners:Lcyi;

    .line 22
    sget-object v1, Lcyi;->a:Lcyi;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcyi;

    .line 23
    invoke-direct {v1, p1, p2}, Lcyi;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Lcyi;->next:Lcyi;

    sget-object v2, Lcyr;->f:Lcye;

    .line 24
    invoke-virtual {v2, p0, v0, v1}, Lcye;->a(Lcyr;Lcyi;Lcyi;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcyr;->listeners:Lcyi;

    sget-object v2, Lcyi;->a:Lcyi;

    if-ne v0, v2, :cond_0

    .line 25
    :cond_2
    invoke-static {p1, p2}, Lcyr;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final a(Ljava/util/concurrent/Future;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcyr;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcyr;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcyr;->b:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcyr;->f:Lcye;

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, p0, v1, p1}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    invoke-static {p0}, Lcyr;->a(Lcyr;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 2

    .line 161
    new-instance v0, Lcyh;

    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcyh;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcyr;->f:Lcye;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-static {p0}, Lcyr;->a(Lcyr;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Lczu;)V
    .locals 3

    .line 164
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 165
    invoke-interface {p1}, Lczu;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {p1}, Lcyr;->a(Lczu;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcyr;->f:Lcye;

    .line 167
    invoke-virtual {v0, p0, v1, p1}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-static {p0}, Lcyr;->a(Lcyr;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcyk;

    .line 169
    invoke-direct {v0, p0, p1}, Lcyk;-><init>(Lcyr;Lczu;)V

    sget-object v2, Lcyr;->f:Lcye;

    .line 170
    invoke-virtual {v2, p0, v1, v0}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :try_start_0
    sget-object v1, Lczj;->a:Lczj;

    invoke-interface {p1, v0, v1}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 176
    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    new-instance v1, Lcyh;

    invoke-direct {v1, p1}, Lcyh;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 173
    :catchall_1
    move-exception p1

    sget-object v1, Lcyh;->a:Lcyh;

    .line 172
    :goto_0
    sget-object p1, Lcyr;->f:Lcye;

    .line 174
    invoke-virtual {p1, p0, v0, v1}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    goto :goto_1

    .line 176
    :cond_3
    nop

    .line 175
    :goto_1
    instance-of v1, v0, Lcyf;

    if-eqz v1, :cond_4

    .line 176
    check-cast v0, Lcyf;

    iget-boolean v0, v0, Lcyf;->c:Z

    invoke-interface {p1, v0}, Lczu;->cancel(Z)Z

    :cond_4
    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    instance-of v4, v0, Lcyk;

    or-int/2addr v3, v4

    if-eqz v3, :cond_a

    sget-boolean v3, Lcyr;->e:Z

    if-eqz v3, :cond_1

    .line 43
    new-instance v3, Lcyf;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcyf;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    sget-object v3, Lcyf;->a:Lcyf;

    goto :goto_1

    .line 45
    :cond_2
    sget-object v3, Lcyf;->b:Lcyf;

    .line 43
    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    :cond_3
    :goto_2
    sget-object v6, Lcyr;->f:Lcye;

    .line 46
    invoke-virtual {v6, v4, v0, v3}, Lcye;->a(Lcyr;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz p1, :cond_4

    .line 47
    invoke-virtual {v4}, Lcyr;->d()V

    .line 48
    :cond_4
    invoke-static {v4}, Lcyr;->a(Lcyr;)V

    .line 49
    instance-of v4, v0, Lcyk;

    if-eqz v4, :cond_8

    .line 50
    check-cast v0, Lcyk;

    iget-object v0, v0, Lcyk;->b:Lczu;

    .line 51
    instance-of v4, v0, Lcym;

    if-eqz v4, :cond_7

    .line 52
    move-object v4, v0

    check-cast v4, Lcyr;

    .line 53
    iget-object v0, v4, Lcyr;->value:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    .line 54
    :cond_5
    const/4 v5, 0x0

    :goto_3
    instance-of v6, v0, Lcyk;

    or-int/2addr v5, v6

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    goto :goto_5

    .line 57
    :cond_7
    invoke-interface {v0, p1}, Lczu;->cancel(Z)Z

    goto :goto_4

    :cond_8
    nop

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    .line 55
    :cond_9
    iget-object v0, v4, Lcyr;->value:Ljava/lang/Object;

    .line 56
    instance-of v6, v0, Lcyk;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_5

    .line 45
    :cond_a
    nop

    .line 54
    :goto_5
    return v1
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected final e()Z
    .locals 2

    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    .line 191
    instance-of v1, v0, Lcyf;

    if-eqz v1, :cond_0

    check-cast v0, Lcyf;

    iget-boolean v0, v0, Lcyf;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/Throwable;
    .locals 2

    .line 188
    instance-of v0, p0, Lcym;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    .line 189
    instance-of v1, v0, Lcyh;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lcyh;

    iget-object v0, v0, Lcyh;->b:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 4

    .line 155
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 156
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "remaining delay=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 6

    .line 71
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 72
    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/4 v3, 0x0

    .line 73
    :goto_0
    instance-of v4, v0, Lcyk;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 74
    invoke-static {v0}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcyr;->waiters:Lcyq;

    sget-object v3, Lcyq;->a:Lcyq;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcyq;

    .line 75
    invoke-direct {v3}, Lcyq;-><init>()V

    .line 76
    :cond_2
    invoke-virtual {v3, v0}, Lcyq;->a(Lcyq;)V

    sget-object v4, Lcyr;->f:Lcye;

    .line 77
    invoke-virtual {v4, p0, v0, v3}, Lcye;->a(Lcyr;Lcyq;Lcyq;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    .line 83
    :cond_4
    const/4 v4, 0x0

    .line 80
    :goto_1
    instance-of v5, v0, Lcyk;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 83
    invoke-static {v0}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 81
    :cond_5
    invoke-direct {p0, v3}, Lcyr;->a(Lcyq;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 82
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 83
    :cond_6
    iget-object v0, p0, Lcyr;->waiters:Lcyq;

    sget-object v4, Lcyq;->a:Lcyq;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    .line 84
    invoke-static {v0}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    .line 72
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18

    .line 85
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 86
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 87
    iget-object v6, v0, Lcyr;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const/4 v9, 0x0

    .line 88
    :goto_0
    instance-of v10, v6, Lcyk;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 89
    invoke-static {v6}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    .line 121
    :cond_2
    move-wide v11, v9

    .line 90
    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcyr;->waiters:Lcyq;

    sget-object v15, Lcyq;->a:Lcyq;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcyq;

    .line 91
    invoke-direct {v15}, Lcyq;-><init>()V

    .line 92
    :cond_3
    invoke-virtual {v15, v6}, Lcyq;->a(Lcyq;)V

    sget-object v7, Lcyr;->f:Lcye;

    .line 93
    invoke-virtual {v7, v0, v6, v15}, Lcye;->a(Lcyr;Lcyq;Lcyq;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 94
    :goto_2
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 95
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 99
    iget-object v4, v0, Lcyr;->value:Ljava/lang/Object;

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    .line 104
    :cond_4
    const/4 v5, 0x0

    .line 96
    :goto_3
    instance-of v6, v4, Lcyk;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 100
    invoke-static {v4}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 97
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_6

    .line 101
    invoke-direct {v0, v15}, Lcyr;->a(Lcyq;)V

    goto :goto_4

    .line 104
    :cond_6
    goto :goto_2

    .line 98
    :cond_7
    invoke-direct {v0, v15}, Lcyr;->a(Lcyq;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 99
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 104
    :cond_8
    iget-object v6, v0, Lcyr;->waiters:Lcyq;

    sget-object v7, Lcyq;->a:Lcyq;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v1, v0, Lcyr;->value:Ljava/lang/Object;

    .line 121
    invoke-static {v1}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    nop

    .line 101
    :goto_4
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    iget-object v4, v0, Lcyr;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    .line 104
    :cond_b
    const/4 v5, 0x0

    .line 102
    :goto_5
    instance-of v6, v4, Lcyk;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 105
    invoke-static {v4}, Lcyr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 103
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_4

    .line 103
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    .line 106
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 107
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcyr;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1c

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_14

    .line 110
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 111
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 112
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v3, v4, v13

    if-lez v3, :cond_f

    goto :goto_6

    .line 119
    :cond_f
    const/4 v8, 0x0

    goto :goto_6

    :cond_10
    nop

    .line 112
    :goto_6
    cmp-long v3, v11, v9

    if-lez v3, :cond_12

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v9

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 119
    :cond_12
    nop

    .line 115
    :goto_7
    if-eqz v8, :cond_13

    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x21

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 120
    :cond_13
    nop

    .line 117
    :goto_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 119
    :cond_14
    nop

    .line 118
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcyr;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 119
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    .line 87
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    .line 151
    instance-of v0, v0, Lcyf;

    return v0
.end method

.method public final isDone()Z
    .locals 3

    iget-object v0, p0, Lcyr;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    const/4 v2, 0x0

    :goto_0
    instance-of v0, v0, Lcyk;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_0
    const/16 v1, 0x40

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcyr;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcyr;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-direct {p0, v0}, Lcyr;->b(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-direct {p0, v0}, Lcyr;->a(Ljava/lang/StringBuilder;)V

    .line 183
    :goto_1
    nop

    .line 187
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
