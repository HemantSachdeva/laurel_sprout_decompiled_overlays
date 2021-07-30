.class public final Lacm;
.super Ljava/io/ByteArrayOutputStream;
.source "PG"


# instance fields
.field private final a:Labx;


# direct methods
.method public constructor <init>(Labx;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lacm;->a:Labx;

    .line 2
    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Labx;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lacm;->buf:[B

    return-void
.end method

.method private final a(I)V
    .locals 3

    .line 5
    iget v0, p0, Lacm;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lacm;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lacm;->a:Labx;

    .line 6
    iget v1, p0, Lacm;->count:I

    add-int/2addr v1, p1

    add-int/2addr v1, v1

    invoke-virtual {v0, v1}, Labx;->a(I)[B

    move-result-object p1

    .line 7
    iget-object v0, p0, Lacm;->buf:[B

    iget v1, p0, Lacm;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lacm;->a:Labx;

    .line 8
    iget-object v1, p0, Lacm;->buf:[B

    invoke-virtual {v0, v1}, Labx;->a([B)V

    iput-object p1, p0, Lacm;->buf:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lacm;->a:Labx;

    .line 3
    iget-object v1, p0, Lacm;->buf:[B

    invoke-virtual {v0, v1}, Labx;->a([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lacm;->buf:[B

    .line 4
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public final finalize()V
    .locals 2

    iget-object v0, p0, Lacm;->a:Labx;

    .line 9
    iget-object v1, p0, Lacm;->buf:[B

    invoke-virtual {v0, v1}, Labx;->a([B)V

    return-void
.end method

.method public final declared-synchronized write(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 10
    :try_start_0
    invoke-direct {p0, v0}, Lacm;->a(I)V

    .line 11
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 0

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-direct {p0, p3}, Lacm;->a(I)V

    .line 13
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
