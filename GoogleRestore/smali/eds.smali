.class public final Leds;
.super Leac;
.source "PG"


# static fields
.field private static final A:Ldwq;

.field public static final m:Ldxp;


# instance fields
.field public n:Ldyv;

.field public o:Ldxt;

.field public p:Ljava/nio/charset/Charset;

.field public q:Z

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/util/Collection;

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Ldyv;

.field public x:Z

.field public y:Z

.field public final synthetic z:Ldzo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ledr;

    invoke-direct {v0}, Ledr;-><init>()V

    sput-object v0, Leds;->A:Ldwq;

    .line 23
    const-string v1, ":status"

    invoke-static {v1, v0}, Ldwr;->a(Ljava/lang/String;Ldwq;)Ldxp;

    move-result-object v0

    sput-object v0, Leds;->m:Ldxp;

    return-void
.end method

.method public constructor <init>(Ldzo;ILeht;Ljava/lang/Object;Leib;)V
    .locals 0

    iput-object p1, p0, Leds;->z:Ldzo;

    .line 1
    const/high16 p1, 0x400000

    invoke-direct {p0, p1, p3, p5}, Leac;-><init>(ILeht;Leib;)V

    .line 2
    sget-object p1, Lcqp;->b:Ljava/nio/charset/Charset;

    iput-object p1, p0, Leds;->p:Ljava/nio/charset/Charset;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leds;->s:Ljava/util/Collection;

    const/4 p1, 0x0

    iput-boolean p1, p0, Leds;->u:Z

    iput-object p4, p0, Leds;->r:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ldxt;)Ljava/nio/charset/Charset;
    .locals 2

    .line 24
    sget-object v0, Ledp;->f:Ldxp;

    invoke-virtual {p0, v0}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 25
    const-string v1, "charset="

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 26
    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 27
    :catch_0
    move-exception p0

    :cond_0
    sget-object p0, Lcqp;->b:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static b(Ldxt;)V
    .locals 1

    sget-object v0, Leds;->m:Ldxp;

    .line 28
    invoke-virtual {p0, v0}, Ldxt;->b(Ldxp;)V

    .line 29
    sget-object v0, Ldws;->b:Ldxp;

    invoke-virtual {p0, v0}, Ldxt;->b(Ldxp;)V

    sget-object v0, Ldws;->a:Ldxp;

    .line 30
    invoke-virtual {p0, v0}, Ldxt;->b(Ldxp;)V

    return-void
.end method

.method public static final c(Ldxt;)Ldyv;
    .locals 3

    sget-object v0, Leds;->m:Ldxp;

    .line 31
    invoke-virtual {p0, v0}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 32
    sget-object p0, Ldyv;->h:Ldyv;

    const-string v0, "Missing HTTP status code"

    invoke-virtual {p0, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    sget-object v1, Ledp;->f:Ldxp;

    invoke-virtual {p0, v1}, Ldxt;->a(Ldxp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 34
    invoke-static {p0}, Ledp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ledp;->a(I)Ldyv;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "invalid content-type: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 35
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 36
    :goto_0
    invoke-virtual {v0, p0}, Ldyv;->b(Ljava/lang/String;)Ldyv;

    move-result-object p0

    return-object p0

    .line 35
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Leds;->z:Ldzo;

    .line 4
    sget-object v1, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, v0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    .line 4
    const-string v1, "stream must not be null"

    invoke-static {v0, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Leds;->v:I

    sub-int/2addr v0, p1

    iput v0, p0, Leds;->v:I

    if-nez v0, :cond_1

    iget-boolean p1, p0, Leds;->x:Z

    if-nez p1, :cond_1

    const/4 p1, 0x2

    const-string v0, "grpc-java-cronet"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    const-string p1, "BidirectionalStream.read"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Leds;->z:Ldzo;

    .line 7
    iget-object p1, p1, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    const/16 v0, 0x1000

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/net/BidirectionalStream;->read(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Leds;->r:Ljava/lang/Object;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-static {p1}, Ldyv;->a(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    new-instance v0, Ldxt;

    invoke-direct {v0}, Ldxt;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Leds;->b(Ldyv;ZLdxt;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Leac;->i:Lebe;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Lcrj;->b(Z)V

    iget-object v0, p0, Leac;->b:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Leac;->f:Z

    xor-int/2addr v2, v1

    const-string v3, "Already allocated"

    .line 17
    invoke-static {v2, v3}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Leac;->f:Z

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-super {p0}, Leac;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b(Ldyv;ZLdxt;)V
    .locals 2

    iget-object v0, p0, Leds;->z:Ldzo;

    .line 10
    sget-object v1, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 11
    iget-object v0, v0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    .line 10
    const-string v1, "stream must not be null"

    invoke-static {v0, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Leds;->z:Ldzo;

    .line 12
    iget-object v0, v0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    .line 13
    invoke-virtual {v0}, Lorg/chromium/net/BidirectionalStream;->cancel()V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Leac;->a(Ldyv;ZLdxt;)V

    return-void
.end method
