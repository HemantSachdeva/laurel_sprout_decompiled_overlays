.class final Lerb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lerp;


# instance fields
.field final synthetic a:Lero;


# direct methods
.method public constructor <init>(Lero;)V
    .locals 0

    iput-object p1, p0, Lerb;->a:Lero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v0, v0, Lero;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lerb;->a:Lero;

    iget-object v1, v1, Lero;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lerb;->a:Lero;

    iget-object v1, v1, Lero;->q:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v1, p0, Lerb;->a:Lero;

    const/4 v2, 0x0

    iput-object v2, v1, Lero;->q:Ljava/net/HttpURLConnection;

    :cond_1
    iget-object v1, p0, Lerb;->a:Lero;

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lero;->q:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v0, v0, Lero;->q:Ljava/net/HttpURLConnection;

    .line 5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v0, v0, Lero;->e:Ljava/util/Map;

    .line 6
    const-string v2, "User-Agent"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v3, v0, Lero;->e:Ljava/util/Map;

    iget-object v0, v0, Lero;->d:Ljava/lang/String;

    .line 7
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v0, v0, Lero;->e:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lerb;->a:Lero;

    iget-object v3, v3, Lero;->q:Ljava/net/HttpURLConnection;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v2, v0, Lero;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "GET"

    iput-object v2, v0, Lero;->i:Ljava/lang/String;

    :cond_4
    iget-object v2, v0, Lero;->q:Ljava/net/HttpURLConnection;

    iget-object v0, v0, Lero;->i:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v8, v0, Lero;->j:Lerx;

    if-eqz v8, :cond_6

    new-instance v2, Leqn;

    iget-object v5, v0, Lero;->k:Ljava/util/concurrent/Executor;

    iget-object v6, v0, Lero;->c:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Lero;->q:Ljava/net/HttpURLConnection;

    .line 11
    move-object v3, v2

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Leqn;-><init>(Lero;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/net/HttpURLConnection;Lerx;)V

    iput-object v2, v0, Lero;->r:Leqn;

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v2, v0, Lero;->r:Leqn;

    iget-object v0, v0, Lero;->f:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    nop

    .line 12
    :goto_1
    new-instance v0, Leqm;

    .line 13
    invoke-direct {v0, v2, v1}, Leqm;-><init>(Leqn;Z)V

    invoke-virtual {v2, v0}, Leqn;->a(Lerp;)V

    return-void

    :cond_6
    const/16 v1, 0xa

    iput v1, v0, Lero;->l:I

    iget-object v0, p0, Lerb;->a:Lero;

    iget-object v0, v0, Lero;->q:Ljava/net/HttpURLConnection;

    .line 14
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lerb;->a:Lero;

    .line 15
    invoke-virtual {v0}, Lero;->a()V

    return-void
.end method
