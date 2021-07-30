.class public final Ldxj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Ldxj;

.field private static final c:Ljava/lang/Iterable;


# instance fields
.field private final d:Ljava/util/LinkedHashSet;

.field private final e:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Ldxj;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldxj;->a:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "ego"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    move-object v7, v1

    sget-object v2, Ldxj;->a:Ljava/util/logging/Logger;

    .line 4
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.LoadBalancerRegistry"

    const-string v5, "getHardCodedClasses"

    const-string v6, "Unable to find pick-first LoadBalancer"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    :try_start_1
    const-string v1, "io.grpc.util.SecretRoundRobinLoadBalancerProvider$Provider"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4
    :catch_1
    move-exception v1

    move-object v7, v1

    sget-object v2, Ldxj;->a:Ljava/util/logging/Logger;

    .line 6
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "io.grpc.LoadBalancerRegistry"

    const-string v5, "getHardCodedClasses"

    const-string v6, "Unable to find round-robin LoadBalancer"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldxj;->c:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldxj;->d:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldxj;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static declared-synchronized a()Ldxj;
    .locals 8

    const-class v0, Ldxj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldxj;->b:Ldxj;

    if-nez v1, :cond_2

    sget-object v1, Ldxj;->c:Ljava/lang/Iterable;

    const-class v2, Ldxh;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ldxi;

    invoke-direct {v3}, Ldxi;-><init>()V

    const-class v4, Ldxh;

    .line 13
    invoke-static {v4, v1, v2, v3}, Ldyr;->a(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Ldyq;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ldxj;

    .line 14
    invoke-direct {v2}, Ldxj;-><init>()V

    sput-object v2, Ldxj;->b:Ldxj;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldxh;

    sget-object v3, Ldxj;->a:Ljava/util/logging/Logger;

    .line 16
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Service loader found "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "io.grpc.LoadBalancerRegistry"

    const-string v6, "getDefaultRegistry"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Ldxh;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ldxj;->b:Ldxj;

    .line 18
    invoke-direct {v3, v2}, Ldxj;->a(Ldxh;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ldxj;->b:Ldxj;

    .line 19
    invoke-direct {v1}, Ldxj;->b()V

    :cond_2
    sget-object v1, Ldxj;->b:Ldxj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized a(Ldxh;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ldxh;->a()Z

    move-result v0

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldxj;->d:Ljava/util/LinkedHashSet;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxj;->e:Ljava/util/LinkedHashMap;

    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Ldxj;->d:Ljava/util/LinkedHashSet;

    .line 22
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldxh;

    .line 23
    invoke-virtual {v1}, Ldxh;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldxj;->e:Ljava/util/LinkedHashMap;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldxh;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ldxh;->b()I

    move-result v3

    .line 25
    invoke-virtual {v1}, Ldxh;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    :cond_1
    iget-object v3, p0, Ldxj;->e:Ljava/util/LinkedHashMap;

    .line 26
    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ldxh;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxj;->e:Ljava/util/LinkedHashMap;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldxh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
