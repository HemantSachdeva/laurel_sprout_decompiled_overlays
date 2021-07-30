.class public final enum Lazv;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum A:Lazv;

.field public static final enum B:Lazv;

.field public static final enum C:Lazv;

.field public static final enum D:Lazv;

.field public static final enum E:Lazv;

.field public static final enum F:Lazv;

.field public static final enum G:Lazv;

.field public static final enum H:Lazv;

.field private static final synthetic J:[Lazv;

.field public static final enum a:Lazv;

.field public static final enum b:Lazv;

.field public static final enum c:Lazv;

.field public static final enum d:Lazv;

.field public static final enum e:Lazv;

.field public static final enum f:Lazv;

.field public static final enum g:Lazv;

.field public static final enum h:Lazv;

.field public static final enum i:Lazv;

.field public static final enum j:Lazv;

.field public static final enum k:Lazv;

.field public static final enum l:Lazv;

.field public static final enum m:Lazv;

.field public static final enum n:Lazv;

.field public static final enum o:Lazv;

.field public static final enum p:Lazv;

.field public static final enum q:Lazv;

.field public static final enum r:Lazv;

.field public static final enum s:Lazv;

.field public static final enum t:Lazv;

.field public static final enum u:Lazv;

.field public static final enum v:Lazv;

.field public static final enum w:Lazv;

.field public static final enum x:Lazv;

.field public static final enum y:Lazv;

.field public static final enum z:Lazv;


# instance fields
.field private final I:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v0, Lazv;

    .line 1
    const-string v1, "RESTORE_ERROR_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lazv;->a:Lazv;

    new-instance v1, Lazv;

    .line 2
    const-string v3, "RESTORE_ALREADY_IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lazv;->b:Lazv;

    new-instance v3, Lazv;

    .line 3
    const-string v5, "RESTORE_ALREADY_ABORTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lazv;->c:Lazv;

    new-instance v5, Lazv;

    .line 4
    const-string v7, "INITIAL_REQUEST_FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lazv;->d:Lazv;

    new-instance v7, Lazv;

    .line 5
    const-string v9, "FINISH_LAST_PACKAGE_REQUEST_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lazv;->e:Lazv;

    new-instance v9, Lazv;

    .line 6
    const-string v11, "RESTORE_DATA_REQUEST_FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lazv;->f:Lazv;

    new-instance v11, Lazv;

    .line 7
    const-string v13, "APP_FINGERPRINT_CHANGED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lazv;->g:Lazv;

    new-instance v13, Lazv;

    .line 8
    const-string v15, "PACKAGE_NOT_FOUND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lazv;->h:Lazv;

    new-instance v15, Lazv;

    .line 9
    const-string v14, "INVALID_DATA_EXCEPTION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lazv;->i:Lazv;

    new-instance v14, Lazv;

    .line 10
    const-string v12, "DATA_REASSEMBLER_IO_EXCEPTION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lazv;->j:Lazv;

    new-instance v12, Lazv;

    .line 11
    const-string v10, "CACHE_OPEN_INPUT_STREAM_IO_EXCEPTION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lazv;->k:Lazv;

    new-instance v10, Lazv;

    .line 12
    const-string v8, "CACHE_COPY_FILE_IO_EXCEPTION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lazv;->l:Lazv;

    new-instance v8, Lazv;

    .line 13
    const-string v6, "ENCRYPTED_EXCEPTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lazv;->m:Lazv;

    new-instance v6, Lazv;

    .line 14
    const-string v4, "MISSING_SECONDARY_KEY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lazv;->n:Lazv;

    new-instance v4, Lazv;

    .line 15
    const-string v2, "DIGEST_MISMATCH"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->o:Lazv;

    new-instance v2, Lazv;

    .line 16
    const-string v6, "CHUNK_OUTPUT_INVALID_KEY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->p:Lazv;

    new-instance v6, Lazv;

    .line 17
    const-string v4, "CHUNK_DECRYPT_INIT_FAILED"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lazv;->q:Lazv;

    new-instance v4, Lazv;

    .line 18
    const-string v2, "CHUNK_DECRYPT_FAILED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->r:Lazv;

    new-instance v2, Lazv;

    .line 19
    const-string v6, "ORDERING_DECRYPT_INIT_FAILED"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->s:Lazv;

    new-instance v6, Lazv;

    .line 20
    const-string v4, "ORDERING_DECRYPT_FAILED"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lazv;->t:Lazv;

    new-instance v4, Lazv;

    .line 21
    const-string v2, "UNSUPPORTED_CHECKSUM_TYPE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->u:Lazv;

    new-instance v2, Lazv;

    .line 22
    const-string v6, "UNSUPPORTED_CIPHER_TYPE"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->v:Lazv;

    new-instance v6, Lazv;

    .line 23
    const-string v4, "METADATA_OUT_OF_BOUNDS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lazv;->w:Lazv;

    new-instance v2, Lazv;

    .line 24
    const-string v4, "METADATA_PARSE_FAILED"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->x:Lazv;

    new-instance v4, Lazv;

    .line 25
    const-string v6, "TERTIARY_KEY_UNWRAP_INVALID_KEY"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->y:Lazv;

    new-instance v2, Lazv;

    .line 26
    const-string v6, "SECONDARY_KEY_RETRIEVAL_FAILED"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->z:Lazv;

    new-instance v4, Lazv;

    .line 27
    const-string v6, "MISSING_PLAINTEXT_TERTIARY_KEY"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->A:Lazv;

    new-instance v2, Lazv;

    .line 28
    const-string v6, "UNSUPPORTED_PLAINTEXT_TERTIARY_KEY"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->B:Lazv;

    new-instance v4, Lazv;

    .line 29
    const-string v6, "UNSUPPORTED_CRYPTO"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->C:Lazv;

    new-instance v2, Lazv;

    .line 30
    const-string v6, "IO_EXCEPTION"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->D:Lazv;

    new-instance v4, Lazv;

    .line 31
    const-string v6, "UNSUPPORTED_CHUNK_ORDERING_TYPE"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->E:Lazv;

    new-instance v2, Lazv;

    .line 32
    const-string v6, "CHUNK_LENGTH_NOT_POSITIVE"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->F:Lazv;

    new-instance v4, Lazv;

    .line 33
    const-string v6, "CHUNK_LENGTH_TOO_LONG"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v8, v2}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lazv;->G:Lazv;

    new-instance v2, Lazv;

    .line 34
    const-string v6, "FORMAT_TOO_NEW"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v8, v4}, Lazv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lazv;->H:Lazv;

    const/16 v4, 0x22

    new-array v4, v4, [Lazv;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v2, v4, v0

    sput-object v4, Lazv;->J:[Lazv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lazv;->I:I

    return-void
.end method

.method public static a(I)Lazv;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lazv;->H:Lazv;

    return-object p0

    :pswitch_1
    sget-object p0, Lazv;->G:Lazv;

    return-object p0

    :pswitch_2
    sget-object p0, Lazv;->F:Lazv;

    return-object p0

    :pswitch_3
    sget-object p0, Lazv;->E:Lazv;

    return-object p0

    :pswitch_4
    sget-object p0, Lazv;->D:Lazv;

    return-object p0

    :pswitch_5
    sget-object p0, Lazv;->C:Lazv;

    return-object p0

    :pswitch_6
    sget-object p0, Lazv;->B:Lazv;

    return-object p0

    :pswitch_7
    sget-object p0, Lazv;->A:Lazv;

    return-object p0

    :pswitch_8
    sget-object p0, Lazv;->z:Lazv;

    return-object p0

    :pswitch_9
    sget-object p0, Lazv;->y:Lazv;

    return-object p0

    :pswitch_a
    sget-object p0, Lazv;->x:Lazv;

    return-object p0

    :pswitch_b
    sget-object p0, Lazv;->w:Lazv;

    return-object p0

    :pswitch_c
    sget-object p0, Lazv;->v:Lazv;

    return-object p0

    :pswitch_d
    sget-object p0, Lazv;->u:Lazv;

    return-object p0

    :pswitch_e
    sget-object p0, Lazv;->t:Lazv;

    return-object p0

    :pswitch_f
    sget-object p0, Lazv;->s:Lazv;

    return-object p0

    :pswitch_10
    sget-object p0, Lazv;->r:Lazv;

    return-object p0

    :pswitch_11
    sget-object p0, Lazv;->q:Lazv;

    return-object p0

    :pswitch_12
    sget-object p0, Lazv;->p:Lazv;

    return-object p0

    :pswitch_13
    sget-object p0, Lazv;->o:Lazv;

    return-object p0

    :pswitch_14
    sget-object p0, Lazv;->n:Lazv;

    return-object p0

    :pswitch_15
    sget-object p0, Lazv;->m:Lazv;

    return-object p0

    :pswitch_16
    sget-object p0, Lazv;->l:Lazv;

    return-object p0

    :pswitch_17
    sget-object p0, Lazv;->k:Lazv;

    return-object p0

    :pswitch_18
    sget-object p0, Lazv;->j:Lazv;

    return-object p0

    :pswitch_19
    sget-object p0, Lazv;->i:Lazv;

    return-object p0

    :pswitch_1a
    sget-object p0, Lazv;->h:Lazv;

    return-object p0

    :pswitch_1b
    sget-object p0, Lazv;->g:Lazv;

    return-object p0

    :pswitch_1c
    sget-object p0, Lazv;->f:Lazv;

    return-object p0

    :pswitch_1d
    sget-object p0, Lazv;->e:Lazv;

    return-object p0

    :pswitch_1e
    sget-object p0, Lazv;->d:Lazv;

    return-object p0

    :pswitch_1f
    sget-object p0, Lazv;->c:Lazv;

    return-object p0

    :pswitch_20
    sget-object p0, Lazv;->b:Lazv;

    return-object p0

    :pswitch_21
    sget-object p0, Lazv;->a:Lazv;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lazu;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lazv;
    .locals 1

    sget-object v0, Lazv;->J:[Lazv;

    .line 43
    invoke-virtual {v0}, [Lazv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lazv;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lazv;->I:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lazv;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lazv;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
