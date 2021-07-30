.class public final Lafa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "LskfHashGenerator"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lafa;->a:Lacw;

    return-void
.end method

.method public static a(Lafb;[B)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lafb;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    sget-object v2, Lafa;->a:Lacw;

    new-array v6, v4, [Ljava/lang/Object;

    .line 2
    const-string v7, "Use Scrypt to hash lockscreen"

    invoke-virtual {v2, v7, v6}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lafb;->b:[B

    iget v0, v0, Lafb;->c:I

    if-eqz v1, :cond_6

    .line 3
    if-le v0, v3, :cond_5

    .line 4
    const/16 v6, 0x400

    .line 5
    invoke-static {v1, v2, v6}, Ldzh;->a([B[BI)[B

    move-result-object v2

    :try_start_0
    array-length v6, v2

    const/4 v7, 0x2

    ushr-int/2addr v6, v7

    new-array v8, v6, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x10

    if-ge v9, v6, :cond_0

    .line 6
    :try_start_1
    aget-byte v12, v2, v10

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v10, 0x1

    .line 7
    aget-byte v14, v2, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v12, v14

    add-int/lit8 v13, v13, 0x1

    .line 8
    aget-byte v14, v2, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v11, v14, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0x1

    .line 9
    aget-byte v12, v2, v13

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    .line 10
    aput v11, v8, v9

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 10
    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_3

    new-array v10, v11, [I

    new-array v12, v11, [I

    const/16 v13, 0x100

    new-array v14, v13, [I

    new-array v15, v13, [I

    new-array v11, v0, [[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {v8, v9, v15, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_1

    new-array v3, v13, [I

    .line 12
    invoke-static {v15, v4, v3, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    aput-object v3, v11, v7

    .line 14
    invoke-static {v15, v10, v12, v14}, Ldzh;->a([I[I[I[I)V

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, -0x1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v0, :cond_2

    const/16 v16, 0xf0

    aget v16, v15, v16

    and-int v16, v16, v3

    .line 15
    aget-object v5, v11, v16

    invoke-static {v15, v5, v4, v15}, Ldzh;->a([I[II[I)V

    .line 16
    invoke-static {v15, v10, v12, v14}, Ldzh;->a([I[I[I[I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    nop

    .line 17
    invoke-static {v15, v4, v8, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :try_start_3
    invoke-static {v11}, Ldzh;->a([[I)V

    const/4 v3, 0x4

    new-array v3, v3, [[I

    aput-object v15, v3, v4

    const/4 v5, 0x1

    aput-object v10, v3, v5

    const/4 v5, 0x2

    aput-object v12, v3, v5

    const/4 v5, 0x3

    aput-object v14, v3, v5

    .line 19
    invoke-static {v3}, Ldzh;->a([[I)V

    add-int/lit16 v9, v9, 0x100

    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/16 v11, 0x10

    goto :goto_1

    .line 27
    :catchall_1
    move-exception v0

    .line 18
    invoke-static {v11}, Ldzh;->a([[I)V

    const/4 v1, 0x4

    new-array v1, v1, [[I

    aput-object v15, v1, v4

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v12, v1, v3

    const/4 v3, 0x3

    aput-object v14, v1, v3

    .line 19
    invoke-static {v1}, Ldzh;->a([[I)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v4, v6, :cond_4

    .line 20
    aget v3, v8, v4

    int-to-byte v5, v3

    .line 21
    aput-byte v5, v2, v0

    add-int/lit8 v5, v0, 0x1

    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    .line 22
    aput-byte v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    ushr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    .line 23
    aput-byte v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 24
    aput-byte v3, v2, v5

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const/16 v0, 0x20

    .line 25
    invoke-static {v1, v2, v0}, Ldzh;->a([B[BI)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    invoke-static {v2}, Ldzh;->a([B)V

    .line 27
    invoke-static {v8}, Ldzh;->a([I)V

    return-object v0

    .line 41
    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    .line 26
    :goto_5
    invoke-static {v2}, Ldzh;->a([B)V

    .line 27
    invoke-static {v8}, Ldzh;->a([I)V

    throw v0

    .line 3
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string v1, "Cost parameter N must be > 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string v1, "Passphrase P must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_7
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Lafb;->a:I

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 41
    const-string v0, "Lock screen hash algorithm %d not supported"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_8
    sget-object v2, Lafa;->a:Lacw;

    new-array v3, v4, [Ljava/lang/Object;

    .line 28
    const-string v4, "Use salted SHA256 to hash lockscreen"

    invoke-virtual {v2, v4, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iget-object v0, v0, Lafb;->b:[B

    array-length v3, v0

    .line 30
    array-length v4, v1

    add-int v5, v3, v4

    add-int/lit8 v5, v5, 0x8

    .line 31
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 32
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method
