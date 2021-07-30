.class public final Legg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ledi;


# instance fields
.field public a:I

.field public final b:Ldzt;

.field private final c:Legf;

.field private d:Ldvv;

.field private final e:Z

.field private final f:Lege;

.field private final g:[B

.field private final h:Leht;

.field private i:Z

.field private j:I

.field private k:I

.field private l:J

.field private m:Ldzs;


# direct methods
.method public constructor <init>(Legf;Ldzt;Leht;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Legg;->a:I

    sget-object v1, Ldvt;->a:Ldvu;

    iput-object v1, p0, Legg;->d:Ldvv;

    const/4 v1, 0x1

    iput-boolean v1, p0, Legg;->e:Z

    new-instance v1, Lege;

    .line 1
    invoke-direct {v1, p0}, Lege;-><init>(Legg;)V

    iput-object v1, p0, Legg;->f:Lege;

    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Legg;->g:[B

    iput v0, p0, Legg;->k:I

    iput-object p1, p0, Legg;->c:Legf;

    iput-object p2, p0, Legg;->b:Ldzt;

    .line 2
    const-string p1, "statsTraceCtx"

    invoke-static {p3, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Legg;->h:Leht;

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4

    check-cast p0, Leic;

    iget-object v0, p0, Leic;->a:Ldlj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Ldlj;->h()I

    move-result v0

    iget-object v2, p0, Leic;->a:Ldlj;

    .line 68
    invoke-interface {v2, p1}, Ldlj;->a(Ljava/io/OutputStream;)V

    iput-object v1, p0, Leic;->a:Ldlj;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 69
    invoke-static {v0, p1}, Leie;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    long-to-int v0, v2

    iput-object v1, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0
.end method

.method private final a(Legd;Z)V
    .locals 6

    iget-object v0, p0, Legg;->g:[B

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p2, p1, Legd;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ldzs;

    .line 11
    invoke-virtual {v5}, Ldzs;->b()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p2, 0x5

    .line 13
    invoke-static {p2}, Ldzt;->a(I)Ldzs;

    move-result-object p2

    iget-object v1, p0, Legg;->g:[B

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2, v1, v2, v0}, Ldzs;->a([BII)V

    if-nez v4, :cond_1

    iput-object p2, p0, Legg;->m:Ldzs;

    return-void

    :cond_1
    iget-object v0, p0, Legg;->c:Legf;

    .line 15
    invoke-interface {v0, p2, v2, v2}, Legf;->a(Ldzs;ZZ)V

    const/4 p2, 0x1

    iput p2, p0, Legg;->j:I

    iget-object p1, p1, Legd;->a:Ljava/util/List;

    const/4 p2, 0x0

    .line 16
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Legg;->c:Legf;

    .line 17
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldzs;

    invoke-interface {v0, v1, v2, v2}, Legf;->a(Ldzs;ZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldzs;

    iput-object p1, p0, Legg;->m:Ldzs;

    int-to-long p1, v4

    iput-wide p1, p0, Legg;->l:J

    return-void
.end method

.method private final a(ZZ)V
    .locals 2

    iget-object v0, p0, Legg;->m:Ldzs;

    const/4 v1, 0x0

    iput-object v1, p0, Legg;->m:Ldzs;

    iget-object v1, p0, Legg;->c:Legf;

    .line 5
    invoke-interface {v1, v0, p1, p2}, Legf;->a(Ldzs;ZZ)V

    const/4 p1, 0x0

    iput p1, p0, Legg;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Legg;->m:Ldzs;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ldzs;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, v0, v1}, Legg;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ldvv;)V
    .locals 0

    iput-object p1, p0, Legg;->d:Ldvv;

    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 10

    const-string v0, "Failed to frame message"

    iget-boolean v1, p0, Legg;->i:Z

    if-nez v1, :cond_11

    iget v1, p0, Legg;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Legg;->j:I

    iget v1, p0, Legg;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Legg;->k:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Legg;->l:J

    iget-object v1, p0, Legg;->h:Leht;

    iget-object v1, v1, Leht;->c:[Lehc;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 19
    aget-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Legg;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Legg;->d:Ldvv;

    sget-object v3, Ldvt;->a:Ldvu;

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 20
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    const-string v6, "message too large %d > %d"

    const/4 v7, 0x2

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    :try_start_1
    new-instance v1, Legd;

    .line 38
    invoke-direct {v1, p0}, Legd;-><init>(Legg;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :try_start_2
    invoke-static {p1, v1}, Legg;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget v8, p0, Legg;->a:I

    if-ltz v8, :cond_4

    if-gt p1, v8, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    sget-object v1, Ldyv;->g:Ldyv;

    new-array v3, v7, [Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    iget p1, p0, Legg;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1

    :cond_4
    :goto_2
    nop

    .line 46
    invoke-direct {p0, v1, v2}, Legg;->a(Legd;Z)V

    goto/16 :goto_5

    .line 50
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 41
    throw p1

    .line 58
    :cond_5
    if-eq v3, v5, :cond_9

    int-to-long v8, v3

    iput-wide v8, p0, Legg;->l:J

    iget v1, p0, Legg;->a:I

    if-ltz v1, :cond_7

    if-gt v3, v1, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    sget-object p1, Ldyv;->g:Ldyv;

    new-array v1, v7, [Ljava/lang/Object;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, p0, Legg;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1

    :cond_7
    :goto_3
    iget-object v1, p0, Legg;->g:[B

    .line 25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Legg;->m:Ldzs;

    if-nez v6, :cond_8

    .line 28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ldzt;->a(I)Ldzs;

    move-result-object v6

    iput-object v6, p0, Legg;->m:Ldzs;

    :cond_8
    iget-object v6, p0, Legg;->g:[B

    .line 29
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v6, v4, v1}, Legg;->a([BII)V

    iget-object v1, p0, Legg;->f:Lege;

    .line 30
    invoke-static {p1, v1}, Legg;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    goto :goto_5

    :cond_9
    new-instance v1, Legd;

    .line 31
    invoke-direct {v1, p0}, Legd;-><init>(Legg;)V

    .line 32
    invoke-static {p1, v1}, Legg;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p1

    iget v8, p0, Legg;->a:I

    if-ltz v8, :cond_b

    if-gt p1, v8, :cond_a

    goto :goto_4

    .line 33
    :cond_a
    sget-object v1, Ldyv;->g:Ldyv;

    new-array v3, v7, [Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    iget p1, p0, Legg;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1

    :cond_b
    :goto_4
    nop

    .line 37
    invoke-direct {p0, v1, v4}, Legg;->a(Legd;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 46
    :goto_5
    if-eq v3, v5, :cond_d

    if-ne p1, v3, :cond_c

    goto :goto_6

    .line 37
    :cond_c
    new-array v0, v7, [Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Message length inaccurate %s != %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    sget-object v0, Ldyv;->h:Ldyv;

    invoke-virtual {v0, p1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1

    .line 46
    :cond_d
    :goto_6
    iget-object p1, p0, Legg;->h:Leht;

    iget-object p1, p1, Leht;->c:[Lehc;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_e

    .line 55
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    iget-object p1, p0, Legg;->h:Leht;

    iget-object p1, p1, Leht;->c:[Lehc;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_f

    .line 56
    aget-object v2, p1, v1

    .line 57
    invoke-virtual {v2}, Lehc;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    iget-object p1, p0, Legg;->h:Leht;

    iget-object p1, p1, Leht;->c:[Lehc;

    array-length v0, p1

    :goto_9
    if-ge v4, v0, :cond_10

    .line 58
    aget-object v1, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    return-void

    .line 54
    :catch_0
    move-exception p1

    .line 47
    sget-object v1, Ldyv;->h:Ldyv;

    .line 48
    invoke-virtual {v1, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1

    .line 61
    :catch_1
    move-exception p1

    .line 51
    sget-object v1, Ldyv;->h:Ldyv;

    .line 52
    invoke-virtual {v1, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ldyv;->b()Ldyx;

    move-result-object p1

    throw p1

    .line 60
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    const-string v0, "Framer already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public final a([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Legg;->m:Ldzs;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ldzs;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Legg;->a(ZZ)V

    :cond_0
    iget-object v0, p0, Legg;->m:Ldzs;

    if-nez v0, :cond_1

    .line 64
    invoke-static {p3}, Ldzt;->a(I)Ldzs;

    move-result-object v0

    iput-object v0, p0, Legg;->m:Ldzs;

    :cond_1
    iget-object v0, p0, Legg;->m:Ldzs;

    .line 65
    invoke-virtual {v0}, Ldzs;->a()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Legg;->m:Ldzs;

    .line 66
    invoke-virtual {v1, p1, p2, v0}, Ldzs;->a([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Legg;->i:Z

    return v0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Legg;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Legg;->i:Z

    iget-object v1, p0, Legg;->m:Ldzs;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ldzs;->b()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Legg;->m:Ldzs;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Legg;->m:Ldzs;

    :cond_0
    nop

    .line 4
    invoke-direct {p0, v0, v0}, Legg;->a(ZZ)V

    :cond_1
    return-void
.end method
