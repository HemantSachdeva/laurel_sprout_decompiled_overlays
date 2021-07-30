.class public final Ldzz;
.super Lebn;
.source "PG"


# static fields
.field static final a:J

.field static final b:J

.field private static final n:Ljava/util/logging/Logger;

.field private static final o:Ldwf;

.field private static final p:Ldvw;

.field private static final r:Lehs;


# instance fields
.field final c:Ldyl;

.field public d:Ldyb;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ldwf;

.field final h:Ldvw;

.field final i:J

.field final j:Ldwn;

.field protected final k:Leia;

.field final l:Lehs;

.field final m:Lehs;

.field private final q:Ljava/util/List;

.field private final s:Lorg/chromium/net/CronetEngine;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ldzz;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldzz;->n:Ljava/util/logging/Logger;

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ldzz;->a:J

    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ldzz;->b:J

    .line 15
    sget-object v0, Ledp;->k:Lehq;

    .line 16
    invoke-static {v0}, Lehs;->a(Lehq;)Lehs;

    move-result-object v0

    sput-object v0, Ldzz;->r:Lehs;

    .line 17
    sget-object v0, Ldwf;->b:Ldwf;

    sput-object v0, Ldzz;->o:Ldwf;

    .line 18
    sget-object v0, Ldvw;->a:Ldvw;

    sput-object v0, Ldzz;->p:Ldvw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/chromium/net/CronetEngine;)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ledp;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lebn;-><init>()V

    sget-object p2, Ldzz;->r:Lehs;

    iput-object p2, p0, Ldzz;->l:Lehs;

    iput-object p2, p0, Ldzz;->m:Lehs;

    new-instance p2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ldzz;->q:Ljava/util/List;

    .line 4
    invoke-static {}, Ldyl;->a()Ldyl;

    move-result-object p2

    iput-object p2, p0, Ldzz;->c:Ldyl;

    iget-object p2, p2, Ldyl;->a:Ldyb;

    iput-object p2, p0, Ldzz;->d:Ldyb;

    const-string p2, "pick_first"

    iput-object p2, p0, Ldzz;->f:Ljava/lang/String;

    sget-object p2, Ldzz;->o:Ldwf;

    iput-object p2, p0, Ldzz;->g:Ldwf;

    sget-object p2, Ldzz;->p:Ldvw;

    iput-object p2, p0, Ldzz;->h:Ldvw;

    sget-wide v1, Ldzz;->a:J

    iput-wide v1, p0, Ldzz;->i:J

    .line 5
    sget-object p2, Ldwn;->a:Ldwn;

    iput-object p2, p0, Ldzz;->j:Ldwn;

    .line 6
    sget-object p2, Leib;->a:Leia;

    iput-object p2, p0, Ldzz;->k:Leia;

    .line 7
    invoke-static {v0}, Ldzz;->a(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ldzz;->e:Ljava/lang/String;

    .line 8
    new-instance p2, Ldzy;

    invoke-direct {p2, v0, p1}, Ldzy;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    iput-object p2, p0, Ldzz;->d:Ldyb;

    const/high16 p1, 0x400000

    iput p1, p0, Ldzz;->t:I

    .line 9
    const-string p1, "cronetEngine"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ldzz;->s:Lorg/chromium/net/CronetEngine;

    return-void
.end method

.method public static a(Ljava/lang/String;ILorg/chromium/net/CronetEngine;)Ldzz;
    .locals 1

    .line 10
    const-string v0, "cronetEngine"

    invoke-static {p2, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ldzz;

    .line 11
    invoke-direct {v0, p0, p1, p2}, Ldzz;-><init>(Ljava/lang/String;ILorg/chromium/net/CronetEngine;)V

    return-object v0
.end method

.method static a(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 5

    .line 48
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "directaddress"

    const-string v2, ""

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p0

    .line 48
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()Ldxk;
    .locals 24

    .line 19
    move-object/from16 v9, p0

    const-string v1, "getClientInterceptor"

    new-instance v10, Lefu;

    new-instance v11, Lefs;

    new-instance v3, Ldzj;

    new-instance v0, Ldzk;

    iget-object v2, v9, Ldzz;->s:Lorg/chromium/net/CronetEngine;

    .line 20
    invoke-direct {v0, v2}, Ldzk;-><init>(Lorg/chromium/net/CronetEngine;)V

    .line 21
    sget-object v2, Lczj;->a:Lczj;

    iget-object v4, v9, Ldzz;->k:Leia;

    .line 22
    new-instance v5, Leib;

    iget-object v4, v4, Leia;->a:Lehx;

    .line 23
    invoke-direct {v5, v4}, Leib;-><init>(Lehx;)V

    .line 24
    const/high16 v4, 0x400000

    invoke-direct {v3, v0, v2, v4, v5}, Ldzj;-><init>(Ldzk;Ljava/util/concurrent/Executor;ILeib;)V

    new-instance v4, Leda;

    invoke-direct {v4}, Leda;-><init>()V

    .line 25
    sget-object v0, Ledp;->k:Lehq;

    .line 26
    invoke-static {v0}, Lehs;->a(Lehq;)Lehs;

    move-result-object v5

    sget-object v6, Ledp;->m:Lcrm;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v9, Ldzz;->q:Ljava/util/List;

    .line 27
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "dzh"

    .line 28
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Class;

    .line 29
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v2

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v14, v13, v16

    .line 30
    invoke-virtual {v0, v1, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v12, [Ljava/lang/Object;

    .line 31
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    aput-object v13, v12, v15

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v16

    .line 33
    invoke-virtual {v0, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvm;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    sget-object v12, Ldzz;->n:Ljava/util/logging/Logger;

    .line 34
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    move-object/from16 v23, v0

    sget-object v18, Ldzz;->n:Ljava/util/logging/Logger;

    .line 35
    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v20, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v21, "getEffectiveInterceptors"

    const-string v22, "Unable to apply census stats"

    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_0

    .line 37
    :catch_2
    move-exception v0

    move-object/from16 v17, v0

    sget-object v12, Ldzz;->n:Ljava/util/logging/Logger;

    .line 36
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_0

    .line 47
    :catch_3
    move-exception v0

    move-object/from16 v23, v0

    sget-object v18, Ldzz;->n:Ljava/util/logging/Logger;

    .line 37
    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v20, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v21, "getEffectiveInterceptors"

    const-string v22, "Unable to apply census stats"

    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 33
    :goto_0
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v7, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    :try_start_1
    const-string v0, "dzi"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v12, v2, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v1, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvm;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v8, v0

    goto :goto_1

    .line 43
    :catch_4
    move-exception v0

    move-object/from16 v17, v0

    sget-object v12, Ldzz;->n:Ljava/util/logging/Logger;

    .line 42
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 44
    :catch_5
    move-exception v0

    move-object/from16 v23, v0

    sget-object v18, Ldzz;->n:Ljava/util/logging/Logger;

    .line 43
    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v20, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v21, "getEffectiveInterceptors"

    const-string v22, "Unable to apply census stats"

    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 45
    :catch_6
    move-exception v0

    move-object/from16 v17, v0

    sget-object v12, Ldzz;->n:Ljava/util/logging/Logger;

    .line 44
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v15, "getEffectiveInterceptors"

    const-string v16, "Unable to apply census stats"

    invoke-virtual/range {v12 .. v17}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 34
    :catch_7
    move-exception v0

    move-object/from16 v23, v0

    sget-object v18, Ldzz;->n:Ljava/util/logging/Logger;

    .line 45
    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v20, "io.grpc.internal.AbstractManagedChannelImplBuilder"

    const-string v21, "getEffectiveInterceptors"

    const-string v22, "Unable to apply census stats"

    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_1
    if-eqz v8, :cond_1

    .line 46
    invoke-interface {v7, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    sget-object v8, Lehx;->a:Lehx;

    .line 47
    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lefs;-><init>(Ldzz;Lebh;Leda;Lehs;Lcrm;Ljava/util/List;Lehx;)V

    invoke-direct {v10, v11}, Lefu;-><init>(Ldxk;)V

    return-object v10
.end method
