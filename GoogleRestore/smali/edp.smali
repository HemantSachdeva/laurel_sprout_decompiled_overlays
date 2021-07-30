.class public final Ledp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldxp;

.field public static final b:Ldxp;

.field public static final c:Ldxp;

.field public static final d:Ldxp;

.field public static final e:Ldxp;

.field public static final f:Ldxp;

.field public static final g:Ldxp;

.field public static final h:Ldxp;

.field public static final i:Ldyn;

.field public static final j:Ldvg;

.field public static final k:Lehq;

.field public static final l:Lehq;

.field public static final m:Lcrm;

.field private static final n:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Ledp;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ledp;->n:Ljava/util/logging/Logger;

    .line 2
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    new-instance v0, Ledo;

    invoke-direct {v0}, Ledo;-><init>()V

    .line 3
    const-string v1, "grpc-timeout"

    invoke-static {v1, v0}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->a:Ldxp;

    .line 4
    sget-object v0, Ldxt;->a:Ldxn;

    .line 5
    const-string v1, "grpc-encoding"

    invoke-static {v1, v0}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->b:Ldxp;

    new-instance v0, Ledn;

    invoke-direct {v0}, Ledn;-><init>()V

    .line 6
    const-string v1, "grpc-accept-encoding"

    invoke-static {v1, v0}, Ldwr;->a(Ljava/lang/String;Ldwq;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->c:Ldxp;

    sget-object v0, Ldxt;->a:Ldxn;

    .line 7
    const-string v1, "content-encoding"

    invoke-static {v1, v0}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->d:Ldxp;

    new-instance v0, Ledn;

    invoke-direct {v0}, Ledn;-><init>()V

    .line 8
    const-string v1, "accept-encoding"

    invoke-static {v1, v0}, Ldwr;->a(Ljava/lang/String;Ldwq;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->e:Ldxp;

    sget-object v0, Ldxt;->a:Ldxn;

    .line 9
    const-string v1, "content-type"

    invoke-static {v1, v0}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->f:Ldxp;

    sget-object v0, Ldxt;->a:Ldxn;

    .line 10
    const-string v1, "te"

    invoke-static {v1, v0}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->g:Ldxp;

    sget-object v0, Ldxt;->a:Ldxn;

    .line 11
    const-string v1, "user-agent"

    invoke-static {v1, v0}, Ldxp;->a(Ljava/lang/String;Ldxn;)Ldxp;

    move-result-object v0

    sput-object v0, Ledp;->h:Ldxp;

    .line 12
    const/16 v0, 0x2c

    invoke-static {v0}, Lcrd;->a(C)Lcrd;

    move-result-object v0

    .line 13
    sget-object v1, Lcqn;->b:Lcqn;

    .line 14
    invoke-static {v1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcrd;

    iget-object v3, v0, Lcrd;->c:Lcrc;

    iget-boolean v4, v0, Lcrd;->b:Z

    iget v0, v0, Lcrd;->d:I

    .line 15
    invoke-direct {v2, v3, v4, v1, v0}, Lcrd;-><init>(Lcrc;ZLcqo;I)V

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 19
    new-instance v0, Legr;

    invoke-direct {v0}, Legr;-><init>()V

    sput-object v0, Ledp;->i:Ldyn;

    .line 20
    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-static {v0}, Ldvg;->a(Ljava/lang/String;)Ldvg;

    move-result-object v0

    sput-object v0, Ledp;->j:Ldvg;

    new-instance v0, Ledk;

    invoke-direct {v0}, Ledk;-><init>()V

    sput-object v0, Ledp;->k:Lehq;

    new-instance v0, Ledl;

    invoke-direct {v0}, Ledl;-><init>()V

    sput-object v0, Ledp;->l:Lehq;

    new-instance v0, Ledm;

    invoke-direct {v0}, Ledm;-><init>()V

    sput-object v0, Ledp;->m:Lcrm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ldyv;
    .locals 3

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 50
    sget-object v0, Ldys;->n:Ldys;

    goto :goto_0

    .line 52
    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 49
    sget-object v0, Ldys;->c:Ldys;

    goto :goto_0

    .line 44
    :cond_1
    :pswitch_0
    sget-object v0, Ldys;->o:Ldys;

    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Ldys;->m:Ldys;

    goto :goto_0

    .line 46
    :cond_3
    sget-object v0, Ldys;->h:Ldys;

    goto :goto_0

    .line 47
    :cond_4
    sget-object v0, Ldys;->q:Ldys;

    goto :goto_0

    .line 48
    :cond_5
    sget-object v0, Ldys;->n:Ldys;

    .line 51
    :goto_0
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ldwz;Z)Lebf;
    .locals 4

    iget-object v0, p0, Ldwz;->b:Ldxd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Leae;

    iget-boolean v2, v0, Leae;->f:Z

    .line 39
    const-string v3, "Subchannel is not started"

    invoke-static {v2, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v0, v0, Leae;->e:Leen;

    .line 40
    invoke-interface {v0}, Lehz;->a()Lebf;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    move-object v0, v1

    .line 40
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Ldwz;->c:Ldyv;

    .line 41
    invoke-virtual {v0}, Ldyv;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldwz;->d:Z

    if-eqz v0, :cond_1

    new-instance p1, Ledd;

    iget-object p0, p0, Ldwz;->c:Ldyv;

    .line 42
    sget-object v0, Lebd;->c:Lebd;

    invoke-direct {p1, p0, v0}, Ledd;-><init>(Ldyv;Lebd;)V

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ledd;

    iget-object p0, p0, Ldwz;->c:Ldyv;

    .line 43
    sget-object v0, Lebd;->a:Lebd;

    invoke-direct {p1, p0, v0}, Ledd;-><init>(Ldyv;Lebd;)V

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "grpc-java-cronet/1.32.0-SNAPSHOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 21
    :try_start_0
    new-instance v8, Ljava/net/URI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 21
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid host or port: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 30
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 31
    :catch_2
    move-exception v0

    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ldvh;)V
    .locals 2

    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ledp;->j:Ldvg;

    invoke-virtual {p0, v1}, Ldvh;->a(Ldvg;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return-void
.end method

.method static a(Lega;)V
    .locals 1

    .line 23
    :goto_0
    invoke-virtual {p0}, Lega;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {v0}, Ledp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 6

    .line 25
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Ledp;->n:Ljava/util/logging/Logger;

    .line 26
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "io.grpc.internal.GrpcUtil"

    const-string v3, "closeQuietly"

    const-string v4, "exception caught in closeQuietly"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    return v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 55
    const-string v1, "application/grpc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 57
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_5

    const/16 v1, 0x3b

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v3
.end method

.method public static b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 5

    new-instance v0, Ldae;

    .line 33
    invoke-direct {v0}, Ldae;-><init>()V

    .line 34
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Ldae;->b:Ljava/lang/Boolean;

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ldae;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput-object p0, v0, Ldae;->a:Ljava/lang/String;

    iget-object p0, v0, Ldae;->a:Ljava/lang/String;

    iget-object v0, v0, Ldae;->b:Ljava/lang/Boolean;

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 37
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    new-instance v3, Ldad;

    .line 38
    invoke-direct {v3, v1, p0, v2, v0}, Ldad;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;)V

    return-object v3
.end method
