.class public final Legx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leer;


# static fields
.field public static final a:Ljava/lang/RuntimeException;

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/lang/reflect/Constructor;

.field private static final d:Ljava/lang/reflect/Method;


# instance fields
.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Legx;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Legx;->b:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.util.concurrent.atomic.LongAdder"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "add"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "sum"

    new-array v5, v4, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 6
    array-length v3, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 7
    :goto_1
    move-object v1, v0

    goto :goto_3

    .line 8
    :catchall_0
    move-exception v1

    move-object v8, v2

    goto :goto_2

    .line 9
    :catchall_1
    move-exception v1

    move-object v8, v0

    :goto_2
    sget-object v2, Legx;->b:Ljava/util/logging/Logger;

    .line 8
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "io.grpc.internal.ReflectionLongAdderCounter"

    const-string v5, "<clinit>"

    const-string v6, "LongAdder can not be found via reflection, this is normal for JDK7 and below"

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v0

    move-object v2, v8

    .line 7
    :goto_3
    if-nez v1, :cond_2

    if-eqz v5, :cond_2

    sput-object v5, Legx;->c:Ljava/lang/reflect/Constructor;

    sput-object v2, Legx;->d:Ljava/lang/reflect/Method;

    sput-object v0, Legx;->a:Ljava/lang/RuntimeException;

    return-void

    :cond_2
    sput-object v0, Legx;->c:Ljava/lang/reflect/Constructor;

    sput-object v0, Legx;->d:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Legx;->a:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Legx;->a:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 13
    :try_start_0
    sget-object v0, Legx;->c:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Legx;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_0
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 17
    :try_start_0
    sget-object v0, Legx;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Legx;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 0
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 16
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
