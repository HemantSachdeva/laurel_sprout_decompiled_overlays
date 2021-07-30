.class final Leqq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lerp;


# instance fields
.field final synthetic a:Leqr;


# direct methods
.method public constructor <init>(Leqr;)V
    .locals 0

    iput-object p1, p0, Leqq;->a:Leqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Leqq;->a:Leqr;

    iget-object v1, v0, Leqr;->b:Lero;

    iget-object v1, v1, Lero;->n:Ljava/nio/channels/ReadableByteChannel;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Leqr;->a:Ljava/nio/ByteBuffer;

    .line 1
    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 0
    :goto_0
    iget-object v1, p0, Leqq;->a:Leqr;

    iget-object v3, v1, Leqr;->b:Lero;

    iget-object v1, v1, Leqr;->a:Ljava/nio/ByteBuffer;

    if-eq v0, v2, :cond_1

    iget-object v0, v3, Lero;->b:Lerl;

    iget-object v2, v3, Lero;->o:Lerv;

    new-instance v3, Lerh;

    .line 2
    invoke-direct {v3, v0, v2, v1}, Lerh;-><init>(Lerl;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v3}, Lerl;->a(Lerp;)V

    return-void

    :cond_1
    iget-object v0, v3, Lero;->n:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    :cond_2
    iget-object v0, v3, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v3}, Lero;->d()V

    iget-object v0, v3, Lero;->b:Lerl;

    iget-object v1, v3, Lero;->o:Lerv;

    iget-object v2, v0, Lerl;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lerj;

    .line 7
    invoke-direct {v3, v0, v1}, Lerj;-><init>(Lerl;Lorg/chromium/net/UrlResponseInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
