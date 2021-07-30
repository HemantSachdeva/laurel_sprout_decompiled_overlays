.class public final Legc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;
.implements Lebq;


# instance fields
.field public a:Lefz;

.field public b:I

.field public c:Ldwd;

.field public d:Lebl;

.field public e:Z

.field public volatile f:Z

.field private final g:Leht;

.field private final h:Leib;

.field private i:I

.field private j:Z

.field private k:Lebl;

.field private l:J

.field private m:Z

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lefz;Ldwd;ILeht;Leib;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput p3, p0, Legc;->p:I

    const/4 p3, 0x5

    iput p3, p0, Legc;->i:I

    new-instance p3, Lebl;

    .line 1
    invoke-direct {p3}, Lebl;-><init>()V

    iput-object p3, p0, Legc;->d:Lebl;

    const/4 p3, 0x0

    iput-boolean p3, p0, Legc;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Legc;->n:I

    iput-boolean p3, p0, Legc;->e:Z

    iput-boolean p3, p0, Legc;->f:Z

    iput-object p1, p0, Legc;->a:Lefz;

    iput-object p2, p0, Legc;->c:Ldwd;

    const/high16 p1, 0x400000

    iput p1, p0, Legc;->b:I

    .line 2
    const-string p1, "statsTraceCtx"

    invoke-static {p4, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Legc;->g:Leht;

    iput-object p5, p0, Legc;->h:Leib;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 42
    const/4 v0, 0x1

    const-string v1, "numMessages must be > 0"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Legc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Legc;->l:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Legc;->l:J

    .line 43
    invoke-virtual {p0}, Legc;->d()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Legc;->d:Lebl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Legc;->d:Lebl;

    iget v0, v0, Lebl;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 3

    invoke-virtual {p0}, Legc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Legc;->k:Lebl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lebl;->a:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    goto :goto_0

    .line 5
    :cond_2
    nop

    .line 0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Legc;->d:Lebl;

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v2}, Leaa;->close()V

    :cond_3
    iget-object v2, p0, Legc;->k:Lebl;

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Leaa;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-object v0, p0, Legc;->d:Lebl;

    iput-object v0, p0, Legc;->k:Lebl;

    iget-object v0, p0, Legc;->a:Lefz;

    .line 6
    invoke-interface {v0, v1}, Lefz;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Legc;->d:Lebl;

    iput-object v0, p0, Legc;->k:Lebl;

    .line 5
    throw v1
.end method

.method public final d()V
    .locals 7

    iget-boolean v0, p0, Legc;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Legc;->m:Z

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Legc;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_11

    const/4 v2, 0x2

    :try_start_1
    iget-object v3, p0, Legc;->k:Lebl;

    if-nez v3, :cond_1

    new-instance v3, Lebl;

    .line 7
    invoke-direct {v3}, Lebl;-><init>()V

    iput-object v3, p0, Legc;->k:Lebl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    goto :goto_1

    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    :try_start_2
    iget v4, p0, Legc;->i:I

    iget-object v5, p0, Legc;->k:Lebl;

    iget v5, v5, Lebl;->a:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    iget-object v5, p0, Legc;->d:Lebl;

    iget v5, v5, Lebl;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    if-lez v3, :cond_11

    :try_start_3
    iget-object v0, p0, Legc;->a:Lefz;

    .line 10
    invoke-interface {v0, v3}, Lefz;->a(I)V

    iget v0, p0, Legc;->p:I

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Legc;->g:Leht;

    .line 11
    invoke-virtual {v0}, Leht;->b()V

    iget v0, p0, Legc;->o:I

    add-int/2addr v0, v3

    iput v0, p0, Legc;->o:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_8

    .line 8
    :cond_2
    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v5, p0, Legc;->k:Lebl;

    iget-object v6, p0, Legc;->d:Lebl;

    .line 9
    invoke-virtual {v6, v4}, Lebl;->b(I)Lebl;

    move-result-object v4

    invoke-virtual {v5, v4}, Lebl;->a(Legs;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    :try_start_5
    iget-object v4, p0, Legc;->a:Lefz;

    .line 10
    invoke-interface {v4, v3}, Lefz;->a(I)V

    iget v4, p0, Legc;->p:I

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Legc;->g:Leht;

    .line 11
    invoke-virtual {v4}, Leht;->b()V

    iget v4, p0, Legc;->o:I

    add-int/2addr v4, v3

    iput v4, p0, Legc;->o:I

    :cond_4
    iget v3, p0, Legc;->p:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_f

    if-eqz v4, :cond_a

    if-eq v4, v0, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    if-eq v3, v0, :cond_5

    const-string v0, "BODY"

    goto :goto_2

    .line 39
    :cond_5
    const-string v0, "HEADER"

    .line 40
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid state: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 20
    :cond_6
    iget-object v2, p0, Legc;->g:Leht;

    iget-object v2, v2, Leht;->c:[Lehc;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 21
    aget-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iput v1, p0, Legc;->o:I

    iget-boolean v2, p0, Legc;->j:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Legc;->c:Ldwd;

    sget-object v3, Ldvt;->a:Ldvu;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v2, v3, :cond_8

    .line 38
    :try_start_6
    iget-object v2, p0, Legc;->c:Ldwd;

    iget-object v3, p0, Legc;->k:Lebl;

    .line 24
    invoke-static {v3}, Legw;->a(Legs;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v2, v3}, Ldwd;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Legb;

    iget v4, p0, Legc;->b:I

    iget-object v6, p0, Legc;->g:Leht;

    .line 25
    invoke-direct {v3, v2, v4, v6}, Legb;-><init>(Ljava/io/InputStream;ILeht;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 30
    :catch_0
    move-exception v0

    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    .line 39
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 37
    :cond_8
    sget-object v0, Ldyv;->h:Ldyv;

    const-string v2, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ldyv;->b()Ldyx;

    move-result-object v0

    throw v0

    .line 27
    :cond_9
    iget-object v2, p0, Legc;->g:Leht;

    .line 22
    invoke-virtual {v2}, Leht;->a()V

    iget-object v2, p0, Legc;->k:Lebl;

    .line 23
    invoke-static {v2}, Legw;->a(Legs;)Ljava/io/InputStream;

    move-result-object v3

    .line 25
    :goto_4
    iput-object v5, p0, Legc;->k:Lebl;

    iget-object v2, p0, Legc;->a:Lefz;

    new-instance v4, Lega;

    .line 26
    invoke-direct {v4, v3}, Lega;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-interface {v2, v4}, Lefz;->a(Lega;)V

    iput v0, p0, Legc;->p:I

    const/4 v2, 0x5

    iput v2, p0, Legc;->i:I

    iget-wide v2, p0, Legc;->l:J

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Legc;->l:J

    goto/16 :goto_0

    .line 40
    :cond_a
    iget-object v3, p0, Legc;->k:Lebl;

    .line 12
    invoke-virtual {v3}, Lebl;->b()I

    move-result v3

    and-int/lit16 v4, v3, 0xfe

    if-nez v4, :cond_e

    .line 32
    and-int/lit8 v3, v3, 0x1

    if-eq v0, v3, :cond_b

    const/4 v3, 0x0

    goto :goto_5

    .line 20
    :cond_b
    const/4 v3, 0x1

    .line 32
    :goto_5
    iput-boolean v3, p0, Legc;->j:Z

    iget-object v3, p0, Legc;->k:Lebl;

    .line 13
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Leaa;->a(I)V

    .line 14
    invoke-virtual {v3}, Leaa;->b()I

    move-result v4

    .line 15
    invoke-virtual {v3}, Leaa;->b()I

    move-result v5

    .line 16
    invoke-virtual {v3}, Leaa;->b()I

    move-result v6

    .line 17
    invoke-virtual {v3}, Leaa;->b()I

    move-result v3

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Legc;->i:I

    if-ltz v3, :cond_d

    iget v4, p0, Legc;->b:I

    if-gt v3, v4, :cond_d

    .line 36
    iget v3, p0, Legc;->n:I

    add-int/2addr v3, v0

    iput v3, p0, Legc;->n:I

    iget-object v3, p0, Legc;->g:Leht;

    iget-object v3, v3, Leht;->c:[Lehc;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_c

    .line 18
    aget-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    iget-object v3, p0, Legc;->h:Leib;

    iget-object v4, v3, Leib;->e:Leer;

    .line 19
    invoke-interface {v4}, Leer;->a()V

    iget-object v4, v3, Leib;->b:Lehx;

    .line 20
    invoke-interface {v4}, Lehx;->a()J

    move-result-wide v4

    iput-wide v4, v3, Leib;->f:J

    iput v2, p0, Legc;->p:I

    goto/16 :goto_0

    .line 33
    :cond_d
    sget-object v3, Ldyv;->g:Ldyv;

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Legc;->b:I

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    iget v4, p0, Legc;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "gRPC message exceeds maximum size %d: %d"

    .line 35
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v3, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ldyv;->b()Ldyx;

    move-result-object v0

    throw v0

    .line 31
    :cond_e
    sget-object v0, Ldyv;->h:Ldyv;

    const-string v2, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v2}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ldyv;->b()Ldyx;

    move-result-object v0

    throw v0

    .line 28
    :cond_f
    nop

    .line 30
    throw v5

    .line 28
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 41
    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_7
    if-lez v3, :cond_10

    iget-object v4, p0, Legc;->a:Lefz;

    .line 10
    invoke-interface {v4, v3}, Lefz;->a(I)V

    iget v4, p0, Legc;->p:I

    if-ne v4, v2, :cond_10

    iget-object v2, p0, Legc;->g:Leht;

    .line 11
    invoke-virtual {v2}, Leht;->b()V

    iget v2, p0, Legc;->o:I

    add-int/2addr v2, v3

    iput v2, p0, Legc;->o:I

    .line 28
    :cond_10
    throw v0

    .line 11
    :cond_11
    :goto_8
    iget-boolean v0, p0, Legc;->e:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Legc;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 29
    invoke-virtual {p0}, Legc;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_12
    iput-boolean v1, p0, Legc;->m:Z

    return-void

    .line 23
    :catchall_2
    move-exception v0

    iput-boolean v1, p0, Legc;->m:Z

    .line 41
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
