.class public Lcom/android/dynsystem/SparseInputStream;
.super Ljava/io/InputStream;
.source "SparseInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dynsystem/SparseInputStream$SparseChunk;
    }
.end annotation


# static fields
.field static final CHUNK_HDR_SIZE:I = 0xc

.field static final FILE_HDR_SIZE:I = 0x1c


# instance fields
.field private mBlockSize:J

.field private mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

.field private mCurChunks:I

.field private mIn:Ljava/io/BufferedInputStream;

.field private mIsSparse:Z

.field private mLeft:J

.field private mTotalBlocks:J

.field private mTotalChunks:J


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 10
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    .line 90
    const/16 v0, 0x38

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 91
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Lcom/android/dynsystem/SparseInputStream;->readBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, -0x12d900c6

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/dynsystem/SparseInputStream;->mIsSparse:Z

    .line 93
    if-nez v2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    .line 95
    return-void

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 98
    .local v2, "major":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 100
    .local v5, "minor":I
    if-gt v2, v3, :cond_5

    if-gtz v5, :cond_5

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    if-ne v3, v1, :cond_4

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_3

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, p0, Lcom/android/dynsystem/SparseInputStream;->mBlockSize:J

    .line 111
    const-wide/16 v8, 0x3

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, p0, Lcom/android/dynsystem/SparseInputStream;->mTotalBlocks:J

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, p0, Lcom/android/dynsystem/SparseInputStream;->mTotalChunks:J

    .line 116
    iput v4, p0, Lcom/android/dynsystem/SparseInputStream;->mCurChunks:I

    int-to-long v3, v4

    iput-wide v3, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    .line 117
    return-void

    .line 112
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Illegal block size, must be a multiple of 4"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Illegal chunk header size"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Illegal file header size"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported sparse version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private prepareChunk()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    cmp-long v0, v4, v1

    if-gtz v0, :cond_3

    .line 126
    :cond_0
    iget v0, p0, Lcom/android/dynsystem/SparseInputStream;->mCurChunks:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/dynsystem/SparseInputStream;->mCurChunks:I

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/android/dynsystem/SparseInputStream;->mTotalChunks:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    return v3

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Lcom/android/dynsystem/SparseInputStream;->readChunk(Ljava/io/InputStream;)Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    .line 128
    iget-short v0, v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkType:S

    const/16 v4, -0x353e

    if-ne v0, v4, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    iget-object v4, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lcom/android/dynsystem/SparseInputStream;->readFull(Ljava/io/InputStream;I)[B

    move-result-object v4

    iput-object v4, v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->fill:[B

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    iget v0, v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkSize:I

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/android/dynsystem/SparseInputStream;->mBlockSize:J

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    .line 133
    :cond_3
    iget-wide v4, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private readBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/dynsystem/SparseInputStream;->readFull(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private readChunk(Ljava/io/InputStream;)Lcom/android/dynsystem/SparseInputStream$SparseChunk;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dynsystem/SparseInputStream$SparseChunk;-><init>(Lcom/android/dynsystem/SparseInputStream;Lcom/android/dynsystem/SparseInputStream$1;)V

    .line 71
    .local v0, "chunk":Lcom/android/dynsystem/SparseInputStream$SparseChunk;
    const/16 v1, 0xc

    invoke-direct {p0, p1, v1}, Lcom/android/dynsystem/SparseInputStream;->readBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkType:S

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 74
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkSize:I

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mTotalSize:I

    .line 76
    return-object v0
.end method

.method private readFull(Ljava/io/InputStream;I)[B
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-array v0, p2, [B

    .line 57
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "done":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 58
    sub-int v3, p2, v1

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_0

    .line 57
    add-int/2addr v1, v2

    goto :goto_0

    .line 59
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to readFull"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v1    # "done":I
    .end local v2    # "n":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getUnsparseSize()J
    .locals 4

    .line 194
    iget-boolean v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIsSparse:Z

    if-nez v0, :cond_0

    .line 195
    const-wide/16 v0, -0x1

    return-wide v0

    .line 197
    :cond_0
    iget-wide v0, p0, Lcom/android/dynsystem/SparseInputStream;->mBlockSize:J

    iget-wide v2, p0, Lcom/android/dynsystem/SparseInputStream;->mTotalBlocks:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIsSparse:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    return v0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/dynsystem/SparseInputStream;->prepareChunk()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 171
    :cond_1
    const/4 v0, -0x1

    .line 172
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    iget-short v1, v1, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkType:S

    packed-switch v1, :pswitch_data_0

    .line 183
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Chunk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    invoke-virtual {v3}, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :pswitch_0
    const/4 v0, 0x0

    .line 178
    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    iget-object v1, v1, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->fill:[B

    iget-wide v2, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3

    aget-byte v0, v1, v2

    .line 181
    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v1, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 175
    nop

    .line 185
    :goto_0
    iget-wide v1, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    .line 186
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x353f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)I
    .locals 7
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIsSparse:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    return v0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/dynsystem/SparseInputStream;->prepareChunk()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 144
    :cond_1
    const/4 v0, -0x1

    .line 145
    .local v0, "n":I
    iget-object v1, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    iget-short v1, v1, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkType:S

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 159
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Chunk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dynsystem/SparseInputStream;->mCur:Lcom/android/dynsystem/SparseInputStream$SparseChunk;

    invoke-virtual {v3}, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :pswitch_0
    iget-wide v3, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    array-length v1, p1

    int-to-long v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    .line 152
    add-int/lit8 v1, v0, -0x1

    invoke-static {p1, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 153
    iget-wide v1, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    .line 154
    return v0

    .line 157
    :pswitch_1
    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    return v1

    .line 147
    :pswitch_2
    iget-object v1, p0, Lcom/android/dynsystem/SparseInputStream;->mIn:Ljava/io/BufferedInputStream;

    iget-wide v3, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    array-length v5, p1

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 148
    iget-wide v1, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/dynsystem/SparseInputStream;->mLeft:J

    .line 149
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x353f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
