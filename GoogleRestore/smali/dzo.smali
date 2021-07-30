.class public final Ldzo;
.super Ldzw;
.source "PG"


# static fields
.field public static final a:Ljava/nio/ByteBuffer;

.field static final b:Ldvg;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final c:Ldvg;

.field private static volatile r:Z

.field private static volatile s:Ljava/lang/reflect/Method;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Leht;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ldxt;

.field public final i:Ldzr;

.field public final j:Ljava/lang/Runnable;

.field public k:Lorg/chromium/net/BidirectionalStream;

.field public final l:Z

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/util/Collection;

.field public o:Ldzk;

.field public final p:Leds;

.field private final t:Ldzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 2
    const-string v0, "cronet-annotation"

    invoke-static {v0}, Ldvg;->a(Ljava/lang/String;)Ldvg;

    move-result-object v0

    sput-object v0, Ldzo;->b:Ldvg;

    .line 3
    const-string v0, "cronet-annotations"

    invoke-static {v0}, Ldvg;->a(Ljava/lang/String;)Ldvg;

    move-result-object v0

    sput-object v0, Ldzo;->c:Ldvg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ldxt;Ldzr;Ljava/lang/Runnable;Ljava/lang/Object;ILdxx;Leht;Ldvh;Leib;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    new-instance v7, Ldzt;

    invoke-direct {v7}, Ldzt;-><init>()V

    .line 4
    invoke-direct {p0, v7, v5, p4, v6}, Ldzw;-><init>(Ldzt;Leht;Ldxt;Ldvh;)V

    new-instance v7, Ldzn;

    .line 5
    invoke-direct {v7, p0}, Ldzn;-><init>(Ldzo;)V

    iput-object v7, v0, Ldzo;->t:Ldzn;

    .line 6
    const-string v7, "url"

    invoke-static {p1, v7}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Ldzo;->d:Ljava/lang/String;

    .line 7
    const-string v1, "userAgent"

    invoke-static {p2, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Ldzo;->e:Ljava/lang/String;

    .line 8
    const-string v1, "statsTraceCtx"

    invoke-static {v5, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v0, Ldzo;->f:Leht;

    move-object v1, p3

    iput-object v1, v0, Ldzo;->g:Ljava/util/concurrent/Executor;

    .line 9
    const-string v1, "headers"

    invoke-static {p4, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Ldzo;->h:Ldxt;

    .line 10
    const-string v1, "transport"

    invoke-static {p5, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v0, Ldzo;->i:Ldzr;

    move-object v1, p6

    iput-object v1, v0, Ldzo;->j:Ljava/lang/Runnable;

    move-object/from16 v1, p9

    iget-object v1, v1, Ldxx;->a:Ldxw;

    .line 11
    sget-object v2, Ldxw;->a:Ldxw;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    iput-boolean v1, v0, Ldzo;->l:Z

    sget-object v1, Ldzo;->b:Ldvg;

    .line 12
    invoke-virtual {v6, v1}, Ldvh;->a(Ldvg;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ldzo;->m:Ljava/lang/Object;

    sget-object v1, Ldzo;->c:Ldvg;

    .line 13
    invoke-virtual {v6, v1}, Ldvh;->a(Ldvg;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, v0, Ldzo;->n:Ljava/util/Collection;

    .line 14
    new-instance v1, Leds;

    const/high16 v2, 0x400000

    move-object p1, v1

    move-object p2, p0

    move p3, v2

    move-object/from16 p4, p10

    move-object p5, p7

    move-object/from16 p6, p12

    invoke-direct/range {p1 .. p6}, Leds;-><init>(Ldzo;ILeht;Ljava/lang/Object;Leib;)V

    iput-object v1, v0, Ldzo;->p:Leds;

    .line 15
    invoke-virtual {p0}, Lead;->g()V

    return-void
.end method

.method public static a(Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;Ljava/lang/Object;)V
    .locals 6

    sget-boolean v0, Ldzo;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Ldzo;

    monitor-enter v0

    :try_start_0
    sget-boolean v3, Ldzo;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v1

    const-class v4, Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;

    const-string v5, "addRequestAnnotation"

    .line 16
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Ldzo;->s:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-boolean v2, Ldzo;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "grpc-java-cronet"

    const-string v5, "Failed to load method ExperimentalBidirectionalStream.Builder.addRequestAnnotation"

    .line 17
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sput-boolean v2, Ldzo;->r:Z

    goto :goto_1

    :goto_0
    sput-boolean v2, Ldzo;->r:Z

    .line 18
    throw p0

    .line 19
    :cond_0
    :goto_1
    monitor-exit v0

    goto :goto_2

    .line 20
    :catchall_1
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Ldzo;->s:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    :try_start_5
    sget-object v0, Ldzo;->s:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 20
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    .line 22
    :catch_1
    move-exception p0

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x22

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to add request annotation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "grpc-java-cronet"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 18
    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    .line 22
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_3
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ldvb;
    .locals 1

    .line 24
    sget-object v0, Ldvb;->b:Ldvb;

    return-object v0
.end method

.method public final a(Ldyv;)V
    .locals 1

    iget-object v0, p0, Ldzo;->i:Ldzr;

    .line 23
    invoke-virtual {v0, p0, p1}, Ldzr;->a(Ldzo;Ldyv;)V

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;ZZ)V
    .locals 3

    iget-object v0, p0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "grpc-java-cronet"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    const-string v2, "BidirectionalStream.write"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    .line 26
    invoke-virtual {v2, p1, p2}, Lorg/chromium/net/BidirectionalStream;->write(Ljava/nio/ByteBuffer;Z)V

    if-eqz p3, :cond_3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    const-string p1, "BidirectionalStream.flush"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    .line 28
    invoke-virtual {p1}, Lorg/chromium/net/BidirectionalStream;->flush()V

    :cond_3
    return-void
.end method

.method protected final bridge synthetic b()Ldzu;
    .locals 1

    iget-object v0, p0, Ldzo;->t:Ldzn;

    return-object v0
.end method

.method public final bridge synthetic c()Leac;
    .locals 1

    iget-object v0, p0, Ldzo;->p:Leds;

    return-object v0
.end method

.method protected final bridge synthetic d()Leac;
    .locals 1

    iget-object v0, p0, Ldzo;->p:Leds;

    return-object v0
.end method
