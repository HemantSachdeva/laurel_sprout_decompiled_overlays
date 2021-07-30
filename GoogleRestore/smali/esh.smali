.class public final Lesh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lesl;->a(Ljava/lang/String;)V

    .line 2
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lesl;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected static a(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static a([I[I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 3
    array-length v2, v1

    if-ne v2, v3, :cond_1

    .line 4
    nop

    .line 5
    const/4 v2, 0x0

    aget v3, v0, v2

    .line 6
    const/4 v4, 0x1

    aget v5, v0, v4

    .line 7
    const/4 v6, 0x2

    aget v7, v0, v6

    .line 8
    const/4 v8, 0x3

    aget v9, v0, v8

    .line 9
    const/4 v10, 0x4

    aget v11, v0, v10

    .line 10
    const/4 v12, 0x5

    aget v13, v0, v12

    .line 11
    const/4 v14, 0x6

    aget v15, v0, v14

    .line 12
    const/4 v14, 0x7

    aget v16, v0, v14

    .line 13
    const/16 v17, 0x8

    aget v18, v0, v17

    .line 14
    const/16 v12, 0x9

    aget v19, v0, v12

    .line 15
    const/16 v20, 0xa

    aget v21, v0, v20

    .line 16
    const/16 v22, 0xb

    aget v23, v0, v22

    .line 17
    const/16 v24, 0xc

    aget v25, v0, v24

    .line 18
    const/16 v10, 0xd

    aget v26, v0, v10

    .line 19
    const/16 v27, 0xe

    aget v28, v0, v27

    .line 20
    const/16 v29, 0xf

    aget v30, v0, v29

    const/16 v31, 0x8

    :goto_0
    if-lez v31, :cond_0

    add-int v8, v3, v25

    invoke-static {v8, v14}, Lesh;->a(II)I

    move-result v8

    xor-int/2addr v8, v11

    add-int v11, v8, v3

    invoke-static {v11, v12}, Lesh;->a(II)I

    move-result v11

    xor-int v11, v18, v11

    add-int v6, v11, v8

    invoke-static {v6, v10}, Lesh;->a(II)I

    move-result v6

    xor-int v6, v25, v6

    add-int v4, v6, v11

    const/16 v2, 0x12

    invoke-static {v4, v2}, Lesh;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    add-int v4, v13, v5

    invoke-static {v4, v14}, Lesh;->a(II)I

    move-result v4

    xor-int v4, v19, v4

    add-int v14, v4, v13

    invoke-static {v14, v12}, Lesh;->a(II)I

    move-result v14

    xor-int v14, v26, v14

    add-int v12, v14, v4

    invoke-static {v12, v10}, Lesh;->a(II)I

    move-result v12

    xor-int/2addr v5, v12

    add-int v12, v5, v14

    invoke-static {v12, v2}, Lesh;->a(II)I

    move-result v12

    xor-int/2addr v12, v13

    add-int v13, v21, v15

    const/4 v2, 0x7

    invoke-static {v13, v2}, Lesh;->a(II)I

    move-result v13

    xor-int v2, v28, v13

    add-int v13, v2, v21

    const/16 v10, 0x9

    invoke-static {v13, v10}, Lesh;->a(II)I

    move-result v13

    xor-int/2addr v7, v13

    add-int v10, v7, v2

    const/16 v13, 0xd

    invoke-static {v10, v13}, Lesh;->a(II)I

    move-result v10

    xor-int/2addr v10, v15

    add-int v13, v10, v7

    const/16 v15, 0x12

    invoke-static {v13, v15}, Lesh;->a(II)I

    move-result v13

    xor-int v13, v21, v13

    add-int v15, v30, v23

    const/4 v1, 0x7

    invoke-static {v15, v1}, Lesh;->a(II)I

    move-result v15

    xor-int v1, v9, v15

    add-int v9, v1, v30

    const/16 v15, 0x9

    invoke-static {v9, v15}, Lesh;->a(II)I

    move-result v9

    xor-int v9, v16, v9

    add-int v15, v9, v1

    const/16 v0, 0xd

    invoke-static {v15, v0}, Lesh;->a(II)I

    move-result v15

    xor-int v0, v23, v15

    add-int v15, v0, v9

    move/from16 v19, v14

    const/16 v14, 0x12

    invoke-static {v15, v14}, Lesh;->a(II)I

    move-result v15

    xor-int v14, v30, v15

    add-int v15, v3, v1

    move/from16 v25, v6

    const/4 v6, 0x7

    invoke-static {v15, v6}, Lesh;->a(II)I

    move-result v15

    xor-int/2addr v5, v15

    add-int v6, v5, v3

    const/16 v15, 0x9

    invoke-static {v6, v15}, Lesh;->a(II)I

    move-result v6

    xor-int/2addr v7, v6

    add-int v6, v7, v5

    const/16 v15, 0xd

    invoke-static {v6, v15}, Lesh;->a(II)I

    move-result v6

    xor-int/2addr v1, v6

    add-int v6, v1, v7

    const/16 v15, 0x12

    invoke-static {v6, v15}, Lesh;->a(II)I

    move-result v6

    xor-int/2addr v3, v6

    add-int v6, v12, v8

    const/4 v15, 0x7

    invoke-static {v6, v15}, Lesh;->a(II)I

    move-result v6

    xor-int v15, v10, v6

    add-int v6, v15, v12

    const/16 v10, 0x9

    invoke-static {v6, v10}, Lesh;->a(II)I

    move-result v6

    xor-int v16, v9, v6

    add-int v6, v16, v15

    const/16 v9, 0xd

    invoke-static {v6, v9}, Lesh;->a(II)I

    move-result v6

    xor-int/2addr v6, v8

    add-int v8, v6, v16

    const/16 v9, 0x12

    invoke-static {v8, v9}, Lesh;->a(II)I

    move-result v8

    xor-int/2addr v8, v12

    add-int v9, v13, v4

    const/4 v10, 0x7

    invoke-static {v9, v10}, Lesh;->a(II)I

    move-result v9

    xor-int v23, v0, v9

    add-int v0, v23, v13

    const/16 v9, 0x9

    invoke-static {v0, v9}, Lesh;->a(II)I

    move-result v0

    xor-int/2addr v0, v11

    add-int v9, v0, v23

    const/16 v10, 0xd

    invoke-static {v9, v10}, Lesh;->a(II)I

    move-result v9

    xor-int/2addr v4, v9

    add-int v9, v4, v0

    const/16 v10, 0x12

    invoke-static {v9, v10}, Lesh;->a(II)I

    move-result v9

    xor-int v21, v13, v9

    add-int v9, v14, v2

    const/4 v10, 0x7

    invoke-static {v9, v10}, Lesh;->a(II)I

    move-result v9

    xor-int v25, v25, v9

    add-int v9, v25, v14

    const/16 v10, 0x9

    invoke-static {v9, v10}, Lesh;->a(II)I

    move-result v9

    xor-int v26, v19, v9

    add-int v9, v26, v25

    const/16 v10, 0xd

    invoke-static {v9, v10}, Lesh;->a(II)I

    move-result v9

    xor-int v28, v2, v9

    add-int v2, v28, v26

    const/16 v9, 0x12

    invoke-static {v2, v9}, Lesh;->a(II)I

    move-result v2

    xor-int v30, v14, v2

    add-int/lit8 v31, v31, -0x2

    move/from16 v18, v0

    move v9, v1

    move/from16 v19, v4

    move v11, v6

    move v13, v8

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x3

    const/16 v10, 0xd

    const/16 v12, 0x9

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/2addr v3, v1

    aput v3, p1, v0

    .line 22
    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/2addr v5, v1

    aput v5, p1, v0

    .line 23
    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr v7, v1

    aput v7, p1, v0

    .line 24
    const/4 v0, 0x3

    aget v1, p0, v0

    add-int/2addr v9, v1

    aput v9, p1, v0

    .line 25
    const/4 v0, 0x4

    aget v1, p0, v0

    add-int/2addr v11, v1

    aput v11, p1, v0

    .line 26
    const/4 v0, 0x5

    aget v1, p0, v0

    add-int/2addr v13, v1

    aput v13, p1, v0

    .line 27
    const/4 v0, 0x6

    aget v1, p0, v0

    add-int/2addr v15, v1

    aput v15, p1, v0

    .line 28
    const/4 v0, 0x7

    aget v1, p0, v0

    add-int v16, v16, v1

    aput v16, p1, v0

    .line 29
    aget v0, p0, v17

    add-int v18, v18, v0

    aput v18, p1, v17

    .line 30
    const/16 v0, 0x9

    aget v1, p0, v0

    add-int v19, v19, v1

    aput v19, p1, v0

    .line 31
    aget v0, p0, v20

    add-int v21, v21, v0

    aput v21, p1, v20

    .line 32
    aget v0, p0, v22

    add-int v23, v23, v0

    aput v23, p1, v22

    .line 33
    aget v0, p0, v24

    add-int v25, v25, v0

    aput v25, p1, v24

    .line 34
    const/16 v0, 0xd

    aget v1, p0, v0

    add-int v26, v26, v1

    aput v26, p1, v0

    .line 35
    aget v0, p0, v27

    add-int v28, v28, v0

    aput v28, p1, v27

    .line 36
    aget v0, p0, v29

    add-int v30, v30, v0

    aput v30, p1, v29

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
