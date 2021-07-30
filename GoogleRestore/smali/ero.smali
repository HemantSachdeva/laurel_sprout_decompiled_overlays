.class final Lero;
.super Lers;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lerl;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Z

.field public i:Ljava/lang/String;

.field public j:Lerx;

.field public k:Ljava/util/concurrent/Executor;

.field public volatile l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/nio/channels/ReadableByteChannel;

.field public o:Lerv;

.field public p:Ljava/lang/String;

.field public q:Ljava/net/HttpURLConnection;

.field public r:Leqn;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lero;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lero;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;ZZIZI)V
    .locals 3

    invoke-direct {p0}, Lers;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    .line 2
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lero;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lero;->f:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lero;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lero;->l:I

    if-eqz p4, :cond_4

    .line 6
    if-eqz p1, :cond_3

    .line 7
    if-eqz p2, :cond_2

    .line 8
    if-eqz p3, :cond_1

    .line 9
    iput-boolean p6, p0, Lero;->h:Z

    new-instance p6, Lerl;

    .line 10
    invoke-direct {p6, p0, p1, p3}, Lerl;-><init>(Lero;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V

    iput-object p6, p0, Lero;->b:Lerl;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result p8

    .line 10
    :goto_0
    new-instance p1, Lern;

    new-instance p3, Lequ;

    .line 12
    invoke-direct {p3, p2, p8, p9, p10}, Lequ;-><init>(Ljava/util/concurrent/Executor;IZI)V

    invoke-direct {p1, p3}, Lern;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lero;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lero;->m:Ljava/lang/String;

    iput-object p5, p0, Lero;->d:Ljava/lang/String;

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 9
    const-string p2, "userExecutor is required"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string p2, "Executor is required"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    const-string p2, "Listener is required"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 6
    const-string p2, "URL is required"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()V
    .locals 4

    iget-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    return-void

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request is already started. State is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lerp;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lerc;

    .line 40
    invoke-direct {v0, p0, p1}, Lerc;-><init>(Lero;Lerp;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, Lero;->l:I

    iget-object v0, p0, Lero;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Leqx;

    .line 45
    invoke-direct {v1, p0}, Leqx;-><init>(Lero;)V

    invoke-virtual {p0, v1}, Lero;->a(Lerp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(IILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state transition - expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Lero;->f()V

    .line 59
    const-string v0, "OPTIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string v0, "PUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DELETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string v0, "TRACE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lero;->i:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lero;->f()V

    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 16
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 17
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lero;->e:Ljava/util/Map;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lero;->e:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lero;->e:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_2
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lepv;

    .line 39
    const-string v1, "Exception received from UploadDataProvider"

    invoke-direct {v0, v1, p1}, Lepv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lero;->a(Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public final a(Lorg/chromium/net/CronetException;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lero;->d()V

    .line 34
    invoke-virtual {p0}, Lero;->b()V

    iget-object v0, p0, Lero;->b:Lerl;

    iget-object v1, p0, Lero;->o:Lerv;

    iget-object v2, v0, Lerl;->d:Lero;

    .line 35
    invoke-virtual {v2}, Lero;->e()V

    new-instance v2, Lerk;

    .line 36
    invoke-direct {v2, v0, v1, p1}, Lerk;-><init>(Lerl;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    :try_start_0
    iget-object p1, v0, Lerl;->b:Ljava/util/concurrent/Executor;

    .line 37
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/chromium/net/InlineExecutionProhibitedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 32
    :catch_0
    move-exception p1

    iget-object p1, v0, Lerl;->c:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_1

    .line 38
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 37
    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    const-string v0, "Can\'t enter error state before start"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final a(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Lero;->e:Ljava/util/Map;

    .line 64
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0}, Lero;->f()V

    iget-object v0, p0, Lero;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "POST"

    iput-object v0, p0, Lero;->i:Ljava/lang/String;

    :cond_0
    new-instance v0, Lerx;

    .line 67
    invoke-direct {v0, p1}, Lerx;-><init>(Lorg/chromium/net/UploadDataProvider;)V

    iput-object v0, p0, Lero;->j:Lerx;

    iget-boolean p1, p0, Lero;->h:Z

    if-eqz p1, :cond_1

    iput-object p2, p0, Lero;->k:Ljava/util/concurrent/Executor;

    return-void

    :cond_1
    new-instance p1, Lerr;

    .line 68
    invoke-direct {p1, p2}, Lerr;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lero;->k:Ljava/util/concurrent/Executor;

    return-void

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string p2, "Requests with upload data must have a Content-Type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lerp;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Leqp;

    .line 74
    invoke-direct {v0, p0, p1}, Leqp;-><init>(Lero;Lerp;)V

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lero;->j:Lerx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lero;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lero;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Leqy;

    .line 42
    invoke-direct {v1, p0}, Leqy;-><init>(Lero;)V

    invoke-virtual {p0, v1}, Lero;->b(Lerp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lero;->a:Ljava/lang/String;

    .line 43
    const-string v2, "Exception when closing uploadDataProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 42
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lero;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lerb;

    .line 46
    invoke-direct {v1, p0}, Lerb;-><init>(Lero;)V

    invoke-virtual {p0, v1}, Lero;->a(Lerp;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cancel()V
    .locals 4

    iget-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lero;->d()V

    .line 24
    invoke-virtual {p0}, Lero;->b()V

    iget-object v0, p0, Lero;->b:Lerl;

    iget-object v1, p0, Lero;->o:Lerv;

    iget-object v2, v0, Lerl;->d:Lero;

    .line 25
    invoke-virtual {v2}, Lero;->e()V

    iget-object v2, v0, Lerl;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Leri;

    .line 26
    invoke-direct {v3, v0, v1}, Leri;-><init>(Lerl;Lorg/chromium/net/UrlResponseInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lero;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Leqs;

    .line 44
    invoke-direct {v1, p0}, Leqs;-><init>(Lero;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lero;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Leqt;

    .line 29
    invoke-direct {v1, p0}, Leqt;-><init>(Lero;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final followRedirect()V
    .locals 3

    new-instance v0, Leqw;

    .line 47
    invoke-direct {v0, p0}, Leqw;-><init>(Lero;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lero;->a(IILjava/lang/Runnable;)V

    return-void
.end method

.method public final getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V
    .locals 3

    iget-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lero;->l:I

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch is exhaustive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :pswitch_0
    const/16 v1, 0xe

    goto :goto_0

    .line 51
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    :pswitch_2
    const/4 v1, -0x1

    .line 48
    :goto_0
    :pswitch_3
    iget-object v0, p0, Lero;->b:Lerl;

    new-instance v2, Lerz;

    .line 49
    invoke-direct {v2, p1}, Lerz;-><init>(Lorg/chromium/net/UrlRequest$StatusListener;)V

    iget-object p1, v0, Lerl;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lere;

    .line 50
    invoke-direct {v0, v2, v1}, Lere;-><init>(Lerz;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final isDone()Z
    .locals 2

    iget-object v0, p0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Leqr;

    .line 55
    invoke-direct {v0, p0, p1}, Leqr;-><init>(Lero;Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, v0}, Lero;->a(IILjava/lang/Runnable;)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string v0, "ByteBuffer is already full."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string v0, "byteBuffer must be a direct ByteBuffer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final start()V
    .locals 3

    const/16 v0, 0xa

    iput v0, p0, Lero;->l:I

    new-instance v0, Leqv;

    .line 69
    invoke-direct {v0, p0}, Leqv;-><init>(Lero;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lero;->a(IILjava/lang/Runnable;)V

    return-void
.end method
