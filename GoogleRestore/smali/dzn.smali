.class final Ldzn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldzu;


# instance fields
.field final synthetic a:Ldzo;


# direct methods
.method public constructor <init>(Ldzo;)V
    .locals 0

    iput-object p1, p0, Ldzn;->a:Ldzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Ldzn;->a:Ldzo;

    iget-object v0, v0, Ldzo;->j:Ljava/lang/Runnable;

    .line 24
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Ldzn;->a:Ldzo;

    iget-object v1, v0, Ldzo;->o:Ldzk;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ldzl;

    .line 25
    invoke-direct {v1, v0}, Ldzl;-><init>(Ldzo;)V

    iget-object v0, p0, Ldzn;->a:Ldzo;

    iget-object v2, v0, Ldzo;->d:Ljava/lang/String;

    iget-object v3, v0, Ldzo;->o:Ldzk;

    iget-object v0, v0, Ldzo;->g:Ljava/util/concurrent/Executor;

    iget-object v3, v3, Ldzk;->a:Lorg/chromium/net/CronetEngine;

    .line 26
    check-cast v3, Lorg/chromium/net/ExperimentalCronetEngine;

    .line 27
    invoke-virtual {v3, v2, v1, v0}, Lorg/chromium/net/ExperimentalCronetEngine;->newBidirectionalStreamBuilder(Ljava/lang/String;Lorg/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object v0

    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-boolean v1, v1, Ldzo;->l:Z

    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/net/BidirectionalStream$Builder;->delayRequestHeadersUntilFirstFlush(Z)Lorg/chromium/net/BidirectionalStream$Builder;

    :cond_1
    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-object v2, v1, Ldzo;->m:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v1, v1, Ldzo;->n:Ljava/util/Collection;

    if-eqz v1, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    .line 29
    invoke-static {v0, v2}, Ldzo;->a(Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-object v1, v1, Ldzo;->n:Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 30
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Ldzo;->a(Lorg/chromium/net/ExperimentalBidirectionalStream$Builder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ldzn;->a:Ldzo;

    .line 32
    sget-object v2, Ledp;->h:Ldxp;

    iget-object v2, v2, Ldxp;->a:Ljava/lang/String;

    iget-object v3, v1, Ldzo;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/BidirectionalStream$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/BidirectionalStream$Builder;

    sget-object v2, Ledp;->f:Ldxp;

    iget-object v2, v2, Ldxp;->a:Ljava/lang/String;

    .line 33
    const-string v3, "application/grpc"

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/BidirectionalStream$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/BidirectionalStream$Builder;

    .line 34
    const-string v2, "te"

    const-string v3, "trailers"

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/BidirectionalStream$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/BidirectionalStream$Builder;

    iget-object v1, v1, Ldzo;->h:Ldxt;

    .line 35
    invoke-static {v1}, Lehy;->a(Ldxt;)[[B

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_6

    new-instance v3, Ljava/lang/String;

    .line 37
    aget-object v4, v1, v2

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v4, Ledp;->f:Ldxp;

    iget-object v4, v4, Ldxp;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ledp;->h:Ldxp;

    iget-object v4, v4, Ldxp;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ledp;->g:Ldxp;

    iget-object v4, v4, Ldxp;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    .line 41
    aget-object v6, v1, v6

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 42
    invoke-virtual {v0, v3, v4}, Lorg/chromium/net/BidirectionalStream$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/BidirectionalStream$Builder;

    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    iget-object v1, p0, Ldzn;->a:Ldzo;

    .line 43
    invoke-virtual {v0}, Lorg/chromium/net/BidirectionalStream$Builder;->build()Lorg/chromium/net/BidirectionalStream;

    move-result-object v0

    iput-object v0, v1, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    iget-object v0, p0, Ldzn;->a:Ldzo;

    iget-object v0, v0, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    .line 44
    invoke-virtual {v0}, Lorg/chromium/net/BidirectionalStream;->start()V

    return-void
.end method

.method public final a(Ldyv;)V
    .locals 6

    iget-object v0, p0, Ldzn;->a:Ldzo;

    iget-object v0, v0, Ldzo;->p:Leds;

    .line 1
    sget-object v1, Leds;->m:Ldxp;

    .line 2
    iget-object v0, v0, Leds;->r:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-object v1, v1, Ldzo;->p:Leds;

    .line 3
    iget-boolean v2, v1, Leds;->u:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Leds;->u:Z

    iput-object p1, v1, Leds;->w:Ldyv;

    iget-object v2, v1, Leds;->s:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 4
    check-cast v5, Ldzm;

    .line 5
    iget-object v5, v5, Ldzm;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Leds;->s:Ljava/util/Collection;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-object v2, v1, Ldzo;->k:Lorg/chromium/net/BidirectionalStream;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lorg/chromium/net/BidirectionalStream;->cancel()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v1, Ldzo;->i:Ldzr;

    .line 8
    invoke-virtual {v2, v1, p1}, Ldzr;->a(Ldzo;Ldyv;)V

    .line 9
    :goto_1
    monitor-exit v0

    return-void

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Ldzs;ZZ)V
    .locals 5

    iget-object v0, p0, Ldzn;->a:Ldzo;

    iget-object v0, v0, Ldzo;->p:Leds;

    .line 11
    sget-object v1, Leds;->m:Ldxp;

    .line 12
    iget-object v0, v0, Leds;->r:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-object v1, v1, Ldzo;->p:Leds;

    .line 13
    iget-boolean v1, v1, Leds;->u:Z

    if-eqz v1, :cond_0

    .line 14
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Ldzs;->a:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 22
    :cond_1
    sget-object p1, Ldzo;->a:Ljava/nio/ByteBuffer;

    .line 15
    :goto_0
    iget-object v1, p0, Ldzn;->a:Ldzo;

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v1, v1, Ldzo;->p:Leds;

    iget-object v3, v1, Leac;->b:Ljava/lang/Object;

    .line 17
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v4, v1, Leac;->e:I

    add-int/2addr v4, v2

    iput v4, v1, Leac;->e:I

    .line 18
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Ldzn;->a:Ldzo;

    iget-object v2, v1, Ldzo;->p:Leds;

    .line 19
    iget-boolean v3, v2, Leds;->t:Z

    if-nez v3, :cond_2

    new-instance v1, Ldzm;

    .line 20
    invoke-direct {v1, p1, p2, p3}, Ldzm;-><init>(Ljava/nio/ByteBuffer;ZZ)V

    iget-object p1, v2, Leds;->s:Ljava/util/Collection;

    .line 21
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v1, p1, p2, p3}, Ldzo;->a(Ljava/nio/ByteBuffer;ZZ)V

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 22
    :catchall_1
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
