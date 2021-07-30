.class final Legb;
.super Ljava/io/FilterInputStream;
.source "PG"


# instance fields
.field private final a:I

.field private final b:Leht;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILeht;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Legb;->e:J

    iput p2, p0, Legb;->a:I

    iput-object p3, p0, Legb;->b:Leht;

    return-void
.end method

.method private final a()V
    .locals 5

    iget-wide v0, p0, Legb;->d:J

    iget-wide v2, p0, Legb;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Legb;->b:Leht;

    .line 9
    invoke-virtual {v0}, Leht;->a()V

    iget-wide v0, p0, Legb;->d:J

    iput-wide v0, p0, Legb;->c:J

    :cond_0
    return-void
.end method

.method private final b()V
    .locals 5

    iget-wide v0, p0, Legb;->d:J

    iget v2, p0, Legb;->a:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 18
    return-void

    .line 17
    :cond_0
    sget-object v0, Ldyv;->g:Ldyv;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Legb;->a:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Legb;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 17
    const-string v2, "Compressed gRPC message exceeds maximum size %d: %d bytes read"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ldyv;->b()Ldyx;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Legb;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget-wide v0, p0, Legb;->d:J

    iput-wide v0, p0, Legb;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final read()I
    .locals 5

    .line 3
    iget-object v0, p0, Legb;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Legb;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Legb;->d:J

    .line 4
    :cond_0
    invoke-direct {p0}, Legb;->b()V

    .line 5
    invoke-direct {p0}, Legb;->a()V

    return v0
.end method

.method public final read([BII)I
    .locals 2

    .line 6
    iget-object v0, p0, Legb;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Legb;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Legb;->d:J

    .line 7
    :cond_0
    invoke-direct {p0}, Legb;->b()V

    .line 8
    invoke-direct {p0}, Legb;->a()V

    return p1
.end method

.method public final declared-synchronized reset()V
    .locals 5

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Legb;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-wide v0, p0, Legb;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 13
    iget-object v0, p0, Legb;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Legb;->e:J

    iput-wide v0, p0, Legb;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    .line 12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    .line 11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 2

    .line 14
    iget-object v0, p0, Legb;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-wide v0, p0, Legb;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Legb;->d:J

    .line 15
    invoke-direct {p0}, Legb;->b()V

    .line 16
    invoke-direct {p0}, Legb;->a()V

    return-wide p1
.end method
