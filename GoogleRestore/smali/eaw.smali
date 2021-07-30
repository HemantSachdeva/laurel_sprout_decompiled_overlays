.class final Leaw;
.super Lebp;
.source "PG"


# instance fields
.field final synthetic a:Leaz;

.field final synthetic b:Lega;


# direct methods
.method public constructor <init>(Leaz;Lega;)V
    .locals 0

    iput-object p1, p0, Leaw;->a:Leaz;

    iput-object p2, p0, Leaw;->b:Lega;

    iget-object p1, p1, Leaz;->c:Lebb;

    iget-object p1, p1, Lebb;->e:Ldwb;

    .line 1
    invoke-direct {p0, p1}, Lebp;-><init>(Ldwb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 2
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Leaw;->a:Leaz;

    iget-object v0, v0, Leaz;->b:Ldyv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_c

    :goto_0
    :try_start_1
    iget-object v0, p0, Leaw;->b:Lega;

    .line 3
    invoke-virtual {v0}, Lega;->a()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_b

    :try_start_2
    iget-object v1, p0, Leaw;->a:Leaz;

    iget-object v2, v1, Leaz;->a:Ldvk;

    iget-object v1, v1, Leaz;->c:Lebb;

    iget-object v1, v1, Lebb;->b:Ldxx;

    iget-object v1, v1, Ldxx;->e:Ldxv;

    .line 4
    instance-of v3, v0, Leic;

    if-eqz v3, :cond_1

    .line 5
    move-object v3, v0

    check-cast v3, Leic;

    iget-object v4, v3, Leic;->b:Ldlq;

    move-object v5, v1

    check-cast v5, Leid;

    iget-object v5, v5, Leid;->b:Ldlq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v5, :cond_1

    :try_start_3
    iget-object v3, v3, Leic;->a:Ldlj;

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "message not available"

    .line 6
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :catch_0
    move-exception v3

    .line 7
    :cond_1
    :try_start_4
    instance-of v3, v0, Ldwu;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_7

    const/high16 v5, 0x400000

    if-gt v3, v5, :cond_7

    sget-object v4, Leid;->a:Ljava/lang/ThreadLocal;

    .line 9
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v5, v3, :cond_3

    :cond_2
    new-array v4, v3, [B

    sget-object v5, Leid;->a:Ljava/lang/ThreadLocal;

    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    move v5, v3

    :goto_1
    if-lez v5, :cond_5

    sub-int v6, v3, v5

    .line 11
    invoke-virtual {v0, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    sub-int/2addr v5, v6

    goto :goto_1

    .line 11
    :cond_5
    :goto_2
    if-nez v5, :cond_6

    .line 12
    invoke-static {v4, v3}, Ldie;->a([BI)Ldie;

    move-result-object v4

    goto :goto_3

    .line 11
    :cond_6
    sub-int v1, v3, v5

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2b

    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "size inaccurate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_7
    if-nez v3, :cond_8

    check-cast v1, Leid;

    iget-object v3, v1, Leid;->c:Ldlj;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_8
    nop

    .line 12
    :goto_3
    if-nez v4, :cond_9

    :try_start_5
    new-instance v4, Ldid;

    .line 13
    invoke-direct {v4, v0}, Ldid;-><init>(Ljava/io/InputStream;)V

    :cond_9
    const v3, 0x7fffffff

    iput v3, v4, Ldie;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    check-cast v1, Leid;

    iget-object v1, v1, Leid;->b:Ldlq;

    .line 14
    sget-object v3, Leie;->a:Ldjr;

    invoke-interface {v1, v4, v3}, Ldlq;->a(Ldie;Ldjr;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ldlj;
    :try_end_6
    .catch Ldkn; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x0

    .line 15
    :try_start_7
    invoke-virtual {v4, v1}, Ldie;->a(I)V
    :try_end_7
    .catch Ldkn; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5
    :goto_4
    :try_start_8
    iget-object v1, v2, Ldvk;->b:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 23
    iput-object v3, v2, Ldvk;->b:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 16
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 22
    :cond_a
    :try_start_a
    sget-object v1, Ldyv;->h:Ldyv;

    const-string v2, "More than one value received for unary call"

    invoke-virtual {v1, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ldyv;->b()Ldyx;

    move-result-object v1

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 19
    :catch_1
    move-exception v1

    :try_start_b
    throw v1
    :try_end_b
    .catch Ldkn; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 18
    :catch_2
    move-exception v1

    .line 20
    :try_start_c
    sget-object v2, Ldyv;->h:Ldyv;

    const-string v3, "Invalid protobuf byte sequence"

    invoke-virtual {v2, v3}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v1

    invoke-virtual {v1}, Ldyv;->b()Ldyx;

    move-result-object v1

    throw v1

    .line 6
    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 18
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 29
    :catchall_0
    move-exception v1

    .line 24
    :try_start_d
    invoke-static {v0}, Ledp;->a(Ljava/io/Closeable;)V

    .line 25
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 15
    :cond_b
    return-void

    .line 31
    :catchall_1
    move-exception v0

    :try_start_e
    iget-object v1, p0, Leaw;->b:Lega;

    .line 26
    invoke-static {v1}, Ledp;->a(Lega;)V

    iget-object v1, p0, Leaw;->a:Leaz;

    .line 27
    sget-object v2, Ldyv;->c:Ldyv;

    .line 28
    invoke-virtual {v2, v0}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v0

    const-string v2, "Failed to read message."

    invoke-virtual {v0, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    iput-object v0, v1, Leaz;->b:Ldyv;

    iget-object v1, v1, Leaz;->c:Lebb;

    iget-object v1, v1, Lebb;->f:Lebc;

    .line 29
    invoke-interface {v1, v0}, Lebc;->b(Ldyv;)V

    return-void

    .line 15
    :cond_c
    iget-object v0, p0, Leaw;->b:Lega;

    .line 30
    invoke-static {v0}, Ledp;->a(Lega;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 31
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
