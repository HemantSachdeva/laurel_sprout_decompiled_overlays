.class public final enum Lawa;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum A:Lawa;

.field public static final enum B:Lawa;

.field public static final enum C:Lawa;

.field private static final synthetic E:[Lawa;

.field public static final enum a:Lawa;

.field public static final enum b:Lawa;

.field public static final enum c:Lawa;

.field public static final enum d:Lawa;

.field public static final enum e:Lawa;

.field public static final enum f:Lawa;

.field public static final enum g:Lawa;

.field public static final enum h:Lawa;

.field public static final enum i:Lawa;

.field public static final enum j:Lawa;

.field public static final enum k:Lawa;

.field public static final enum l:Lawa;

.field public static final enum m:Lawa;

.field public static final enum n:Lawa;

.field public static final enum o:Lawa;

.field public static final enum p:Lawa;

.field public static final enum q:Lawa;

.field public static final enum r:Lawa;

.field public static final enum s:Lawa;

.field public static final enum t:Lawa;

.field public static final enum u:Lawa;

.field public static final enum v:Lawa;

.field public static final enum w:Lawa;

.field public static final enum x:Lawa;

.field public static final enum y:Lawa;

.field public static final enum z:Lawa;


# instance fields
.field private final D:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lawa;

    .line 1
    const-string v1, "BACKUP_ERROR_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lawa;->a:Lawa;

    new-instance v1, Lawa;

    .line 2
    const-string v3, "DISABLED_BY_GSERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lawa;->b:Lawa;

    new-instance v3, Lawa;

    .line 3
    const-string v5, "ACCOUNT_NOT_INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lawa;->c:Lawa;

    new-instance v5, Lawa;

    .line 4
    const-string v7, "NO_ACCOUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lawa;->d:Lawa;

    new-instance v7, Lawa;

    .line 5
    const-string v9, "NO_API_KEY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lawa;->e:Lawa;

    new-instance v9, Lawa;

    .line 6
    const-string v11, "KV_RATE_LIMITED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lawa;->f:Lawa;

    new-instance v11, Lawa;

    .line 7
    const-string v13, "NOT_SCHEDULED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lawa;->g:Lawa;

    new-instance v13, Lawa;

    .line 8
    const-string v15, "FRAGMENTER_IO_EXCEPTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lawa;->h:Lawa;

    new-instance v15, Lawa;

    .line 9
    const-string v14, "INIT_REQUEST_GENERATOR_FAILED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lawa;->i:Lawa;

    new-instance v14, Lawa;

    .line 10
    const-string v12, "PACKAGE_NOT_FOUND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lawa;->j:Lawa;

    new-instance v12, Lawa;

    .line 11
    const-string v10, "ALREADY_IN_PROGRESS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lawa;->k:Lawa;

    new-instance v10, Lawa;

    .line 12
    const-string v8, "TRANSPORT_COMPONENT_IS_DISABLED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lawa;->l:Lawa;

    new-instance v8, Lawa;

    .line 13
    const-string v6, "ILLEGAL_STATE_EXCEPTION_IN_REQUEST_BACKUP_TIME"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lawa;->m:Lawa;

    new-instance v6, Lawa;

    .line 14
    const-string v4, "ENCRYPTED_INIT_IO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lawa;->n:Lawa;

    new-instance v4, Lawa;

    .line 15
    const-string v2, "NON_INCREMENTAL_BACKUP_REQUIRED"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lawa;->o:Lawa;

    new-instance v2, Lawa;

    .line 16
    const-string v6, "SERVER_UNINITIALIZED"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lawa;->p:Lawa;

    new-instance v6, Lawa;

    .line 17
    const-string v4, "OTHER_ENCRYPTED_EXCEPTION"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lawa;->q:Lawa;

    new-instance v4, Lawa;

    .line 18
    const-string v2, "INVALID_SECONDARY_KEY_STATE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lawa;->r:Lawa;

    new-instance v2, Lawa;

    .line 19
    const-string v6, "SECONDARY_KEY_ALIAS_LOAD_FAILED"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lawa;->s:Lawa;

    new-instance v6, Lawa;

    .line 20
    const-string v4, "SET_SECONDARY_KEY_ALIAS_FAILED"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lawa;->t:Lawa;

    new-instance v4, Lawa;

    .line 21
    const-string v2, "SECONDARY_KEY_DESTROYED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lawa;->u:Lawa;

    new-instance v2, Lawa;

    .line 22
    const-string v6, "SECONDARY_KEY_ALIAS_MISSING"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lawa;->v:Lawa;

    new-instance v6, Lawa;

    .line 23
    const-string v4, "SECONDARY_KEY_MISSING"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lawa;->w:Lawa;

    new-instance v2, Lawa;

    .line 24
    const-string v4, "SECONDARY_KEY_LOAD_FAILED"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lawa;->x:Lawa;

    new-instance v4, Lawa;

    .line 25
    const-string v6, "SECONDARY_KEY_UNRECOVERABLE"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lawa;->y:Lawa;

    new-instance v2, Lawa;

    .line 26
    const-string v6, "GENERATE_SECONDARY_KEY_FAILED"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lawa;->z:Lawa;

    new-instance v4, Lawa;

    .line 27
    const-string v6, "UNEXPECTED_ENCRYPTED_BACKUP_NO_RE_INIT"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lawa;->A:Lawa;

    new-instance v2, Lawa;

    .line 28
    const-string v6, "UNEXPECTED_ENCRYPTED_BACKUP_RE_INIT"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lawa;->B:Lawa;

    new-instance v4, Lawa;

    .line 29
    const-string v6, "INVALID_SALT"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lawa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lawa;->C:Lawa;

    const/16 v2, 0x1d

    new-array v2, v2, [Lawa;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Lawa;->E:[Lawa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lawa;->D:I

    return-void
.end method

.method public static a(I)Lawa;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lawa;->C:Lawa;

    return-object p0

    :pswitch_1
    sget-object p0, Lawa;->B:Lawa;

    return-object p0

    :pswitch_2
    sget-object p0, Lawa;->A:Lawa;

    return-object p0

    :pswitch_3
    sget-object p0, Lawa;->z:Lawa;

    return-object p0

    :pswitch_4
    sget-object p0, Lawa;->y:Lawa;

    return-object p0

    :pswitch_5
    sget-object p0, Lawa;->x:Lawa;

    return-object p0

    :pswitch_6
    sget-object p0, Lawa;->w:Lawa;

    return-object p0

    :pswitch_7
    sget-object p0, Lawa;->v:Lawa;

    return-object p0

    :pswitch_8
    sget-object p0, Lawa;->u:Lawa;

    return-object p0

    :pswitch_9
    sget-object p0, Lawa;->t:Lawa;

    return-object p0

    :pswitch_a
    sget-object p0, Lawa;->s:Lawa;

    return-object p0

    :pswitch_b
    sget-object p0, Lawa;->r:Lawa;

    return-object p0

    :pswitch_c
    sget-object p0, Lawa;->q:Lawa;

    return-object p0

    :pswitch_d
    sget-object p0, Lawa;->p:Lawa;

    return-object p0

    :pswitch_e
    sget-object p0, Lawa;->o:Lawa;

    return-object p0

    :pswitch_f
    sget-object p0, Lawa;->n:Lawa;

    return-object p0

    :pswitch_10
    sget-object p0, Lawa;->m:Lawa;

    return-object p0

    :pswitch_11
    sget-object p0, Lawa;->l:Lawa;

    return-object p0

    :pswitch_12
    sget-object p0, Lawa;->k:Lawa;

    return-object p0

    :pswitch_13
    sget-object p0, Lawa;->j:Lawa;

    return-object p0

    :pswitch_14
    sget-object p0, Lawa;->i:Lawa;

    return-object p0

    :pswitch_15
    sget-object p0, Lawa;->h:Lawa;

    return-object p0

    :pswitch_16
    sget-object p0, Lawa;->g:Lawa;

    return-object p0

    :pswitch_17
    sget-object p0, Lawa;->f:Lawa;

    return-object p0

    :pswitch_18
    sget-object p0, Lawa;->e:Lawa;

    return-object p0

    :pswitch_19
    sget-object p0, Lawa;->d:Lawa;

    return-object p0

    :pswitch_1a
    sget-object p0, Lawa;->c:Lawa;

    return-object p0

    :pswitch_1b
    sget-object p0, Lawa;->b:Lawa;

    return-object p0

    :pswitch_1c
    sget-object p0, Lawa;->a:Lawa;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lavz;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lawa;
    .locals 1

    sget-object v0, Lawa;->E:[Lawa;

    .line 38
    invoke-virtual {v0}, [Lawa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawa;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lawa;->D:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lawa;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Lawa;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
