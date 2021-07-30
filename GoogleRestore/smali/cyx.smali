.class abstract Lcyx;
.super Lczb;
.source "PG"


# static fields
.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field public a:Lcsd;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcyx;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcyx;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcsd;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcsd;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lczb;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcyx;->a:Lcsd;

    iput-boolean p2, p0, Lcyx;->d:Z

    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/lang/Throwable;)V
    .locals 7

    .line 36
    instance-of v0, p0, Ljava/lang/Error;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    move-object v5, v0

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "Input Future failed with Error"

    move-object v5, v0

    .line 36
    :goto_0
    sget-object v1, Lcyx;->c:Ljava/util/logging/Logger;

    .line 37
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    iget-object v0, p0, Lcyx;->a:Lcsd;

    .line 9
    sget-object v1, Lcyw;->a:Lcyw;

    invoke-virtual {p0, v1}, Lcyx;->a(Lcyw;)V

    .line 10
    invoke-virtual {p0}, Lcyr;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcyr;->e()Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Ljava/util/concurrent/Future;

    .line 13
    invoke-interface {v4, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcyw;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .line 6
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcyr;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcyr;->f()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcyx;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method final b()V
    .locals 6

    iget-object v0, p0, Lcyx;->a:Lcsd;

    .line 27
    invoke-virtual {v0}, Lcsd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcyx;->c()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcyx;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcyx;->a:Lcsd;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 29
    check-cast v3, Lczu;

    new-instance v4, Lcyu;

    .line 30
    invoke-direct {v4, p0, v3}, Lcyu;-><init>(Lcyx;Lczu;)V

    .line 31
    sget-object v5, Lczj;->a:Lczj;

    .line 30
    invoke-interface {v3, v4, v5}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcyv;

    .line 32
    invoke-direct {v0, p0}, Lcyv;-><init>(Lcyx;)V

    iget-object v2, p0, Lcyx;->a:Lcsd;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 33
    check-cast v4, Lczu;

    .line 34
    sget-object v5, Lczj;->a:Lczj;

    .line 35
    invoke-interface {v4, v0, v5}, Lczu;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    .line 18
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcyx;->d:Z

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0, p1}, Lcyr;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lczb;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lczb;->a(Ljava/util/Set;)V

    sget-object v1, Lczb;->b:Lcyy;

    .line 22
    invoke-virtual {v1, p0, v0}, Lcyy;->a(Lczb;Ljava/util/Set;)V

    iget-object v0, p0, Lczb;->seenExceptions:Ljava/util/Set;

    goto :goto_0

    .line 26
    :cond_0
    nop

    .line 23
    :goto_0
    invoke-static {v0, p1}, Lcyx;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {p1}, Lcyx;->c(Ljava/lang/Throwable;)V

    return-void

    .line 24
    :cond_2
    :goto_1
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    .line 25
    invoke-static {p1}, Lcyx;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public abstract c()V
.end method

.method protected final g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcyx;->a:Lcsd;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    invoke-super {p0}, Lczb;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    sget-object v0, Lczb;->b:Lcyy;

    .line 14
    invoke-virtual {v0, p0}, Lcyy;->a(Lczb;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    nop

    .line 15
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lczb;->seenExceptions:Ljava/util/Set;

    .line 16
    invoke-virtual {p0}, Lcyx;->c()V

    .line 17
    sget-object v0, Lcyw;->b:Lcyw;

    invoke-virtual {p0, v0}, Lcyx;->a(Lcyw;)V

    :cond_1
    return-void
.end method
