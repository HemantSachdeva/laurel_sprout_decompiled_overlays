.class public final enum Letj;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum A:Letj;

.field public static final enum B:Letj;

.field public static final enum C:Letj;

.field public static final enum D:Letj;

.field public static final enum E:Letj;

.field private static final synthetic G:[Letj;

.field public static final enum a:Letj;

.field public static final enum b:Letj;

.field public static final enum c:Letj;

.field public static final enum d:Letj;

.field public static final enum e:Letj;

.field public static final enum f:Letj;

.field public static final enum g:Letj;

.field public static final enum h:Letj;

.field public static final enum i:Letj;

.field public static final enum j:Letj;

.field public static final enum k:Letj;

.field public static final enum l:Letj;

.field public static final enum m:Letj;

.field public static final enum n:Letj;

.field public static final enum o:Letj;

.field public static final enum p:Letj;

.field public static final enum q:Letj;

.field public static final enum r:Letj;

.field public static final enum s:Letj;

.field public static final enum t:Letj;

.field public static final enum u:Letj;

.field public static final enum v:Letj;

.field public static final enum w:Letj;

.field public static final enum x:Letj;

.field public static final enum y:Letj;

.field public static final enum z:Letj;


# instance fields
.field private final F:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v0, Letj;

    .line 1
    const-string v1, "FAILURE_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Letj;->a:Letj;

    new-instance v1, Letj;

    .line 2
    const-string v3, "FAILURE_REASON_TIMEOUT"

    const/4 v4, 0x1

    const/16 v5, 0xd

    invoke-direct {v1, v3, v4, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Letj;->b:Letj;

    new-instance v3, Letj;

    .line 3
    const-string v6, "FAILURE_REASON_NETWORK_UNAVAILABLE"

    const/4 v7, 0x2

    const/16 v8, 0xe

    invoke-direct {v3, v6, v7, v8}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Letj;->c:Letj;

    new-instance v6, Letj;

    .line 4
    const-string v9, "FAILURE_REASON_USER_CANCEL"

    const/4 v10, 0x3

    const/16 v11, 0x10

    invoke-direct {v6, v9, v10, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v6, Letj;->d:Letj;

    new-instance v9, Letj;

    .line 5
    const-string v12, "FAILURE_REASON_INVALID_SETUP_ACTION"

    const/4 v13, 0x4

    const/16 v14, 0x15

    invoke-direct {v9, v12, v13, v14}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v9, Letj;->e:Letj;

    new-instance v12, Letj;

    .line 6
    const-string v15, "FAILURE_REASON_CLOUD_DPS_CLIENT"

    const/4 v2, 0x5

    const/4 v13, 0x7

    invoke-direct {v12, v15, v2, v13}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v12, Letj;->f:Letj;

    new-instance v15, Letj;

    .line 7
    const-string v2, "FAILURE_REASON_ENROLLMENT_TOKEN_INVALID"

    const/4 v14, 0x6

    const/16 v7, 0x8

    invoke-direct {v15, v2, v14, v7}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v15, Letj;->g:Letj;

    new-instance v2, Letj;

    .line 8
    const-string v14, "FAILURE_REASON_DEVICE_QUOTA_EXCEEDED"

    const/16 v4, 0x9

    invoke-direct {v2, v14, v13, v4}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v2, Letj;->h:Letj;

    new-instance v14, Letj;

    .line 9
    const-string v13, "FAILURE_REASON_ENTERPRISE_INVALID"

    const/16 v11, 0xf

    invoke-direct {v14, v13, v7, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v14, Letj;->i:Letj;

    new-instance v13, Letj;

    .line 10
    const-string v7, "FAILURE_REASON_SERVER_OTHER"

    const/16 v11, 0x17

    invoke-direct {v13, v7, v4, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v13, Letj;->j:Letj;

    new-instance v7, Letj;

    .line 11
    const-string v4, "FAILURE_REASON_ACCOUNT_NOT_READY"

    const/16 v11, 0xa

    invoke-direct {v7, v4, v11, v10}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v7, Letj;->k:Letj;

    new-instance v4, Letj;

    .line 12
    const-string v11, "FAILURE_REASON_ADD_ACCOUNT_FAILED"

    const/16 v10, 0xb

    invoke-direct {v4, v11, v10, v10}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v4, Letj;->l:Letj;

    new-instance v11, Letj;

    .line 13
    const-string v10, "FAILURE_REASON_NO_ACCOUNT_IN_WORK_PROFILE"

    const/16 v8, 0xc

    const/16 v5, 0x11

    invoke-direct {v11, v10, v8, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v11, Letj;->m:Letj;

    new-instance v10, Letj;

    .line 14
    const-string v8, "FAILURE_REASON_ACCOUNT_NOT_WHITELISTED"

    const/16 v5, 0x13

    move-object/from16 v16, v11

    const/16 v11, 0xd

    invoke-direct {v10, v8, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v10, Letj;->n:Letj;

    new-instance v8, Letj;

    .line 15
    const-string v11, "FAILURE_REASON_REMOVE_ACCOUNT"

    const/16 v5, 0x18

    move-object/from16 v17, v10

    const/16 v10, 0xe

    invoke-direct {v8, v11, v10, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->o:Letj;

    new-instance v10, Letj;

    .line 16
    const-string v11, "FAILURE_REASON_OAUTH_TOKEN"

    const/16 v5, 0x19

    move-object/from16 v18, v8

    const/16 v8, 0xf

    invoke-direct {v10, v11, v8, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v10, Letj;->p:Letj;

    new-instance v8, Letj;

    .line 17
    const-string v11, "FAILURE_REASON_OAUTH_TOKEN_AUTHENTICATOR_EXCEPTION"

    const/16 v5, 0x1a

    move-object/from16 v19, v10

    const/16 v10, 0x10

    invoke-direct {v8, v11, v10, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->q:Letj;

    new-instance v5, Letj;

    .line 18
    const-string v10, "FAILURE_REASON_OAUTH_TOKEN_IO_EXCEPTION"

    const/16 v11, 0x1b

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v5, v10, v8, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->r:Letj;

    new-instance v8, Letj;

    .line 19
    const-string v10, "FAILURE_REASON_OAUTH_TOKEN_OPERATION_CANCELED_EXCEPTION"

    const/16 v11, 0x12

    move-object/from16 v21, v5

    const/16 v5, 0x1c

    invoke-direct {v8, v10, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->s:Letj;

    new-instance v5, Letj;

    .line 20
    const-string v10, "FAILURE_REASON_ACCOUNT"

    move-object/from16 v22, v8

    const/4 v8, 0x1

    const/16 v11, 0x13

    invoke-direct {v5, v10, v11, v8}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->t:Letj;

    new-instance v8, Letj;

    .line 21
    const-string v10, "FAILURE_REASON_ANDROID_ID"

    const/16 v11, 0x14

    move-object/from16 v23, v5

    const/4 v5, 0x2

    invoke-direct {v8, v10, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->u:Letj;

    new-instance v5, Letj;

    .line 22
    const-string v10, "FAILURE_REASON_CHECKIN"

    move-object/from16 v24, v8

    const/4 v8, 0x4

    const/16 v11, 0x15

    invoke-direct {v5, v10, v11, v8}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->v:Letj;

    new-instance v8, Letj;

    .line 23
    const-string v10, "FAILURE_REASON_DPC_SUPPORT"

    const/16 v11, 0x16

    move-object/from16 v25, v5

    const/4 v5, 0x5

    invoke-direct {v8, v10, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->w:Letj;

    new-instance v5, Letj;

    .line 24
    const-string v10, "FAILURE_REASON_MANAGED_PROVISIONING_FAILED"

    const/16 v11, 0x14

    move-object/from16 v26, v8

    const/16 v8, 0x17

    invoke-direct {v5, v10, v8, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->x:Letj;

    new-instance v8, Letj;

    .line 25
    const-string v10, "FAILURE_REASON_FCM_REGISTRATION_FAILED"

    const/16 v11, 0x1d

    move-object/from16 v27, v5

    const/16 v5, 0x18

    invoke-direct {v8, v10, v5, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->y:Letj;

    new-instance v5, Letj;

    .line 26
    const-string v10, "FAILURE_REASON_FCM_TOO_MANY_REGISTRATIONS"

    const/16 v11, 0x1f

    move-object/from16 v28, v8

    const/16 v8, 0x19

    invoke-direct {v5, v10, v8, v11}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->z:Letj;

    new-instance v8, Letj;

    .line 27
    const-string v10, "FAILURE_REASON_POLICY_UPDATE"

    const/16 v11, 0x1a

    move-object/from16 v29, v5

    const/4 v5, 0x6

    invoke-direct {v8, v10, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->A:Letj;

    new-instance v5, Letj;

    .line 28
    const-string v10, "FAILURE_REASON_QUARANTINE"

    const/16 v11, 0x1b

    move-object/from16 v30, v8

    const/16 v8, 0xc

    invoke-direct {v5, v10, v11, v8}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->B:Letj;

    new-instance v8, Letj;

    .line 29
    const-string v10, "FAILURE_REASON_JSON"

    const/16 v11, 0x1c

    move-object/from16 v31, v5

    const/16 v5, 0x16

    invoke-direct {v8, v10, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->C:Letj;

    new-instance v5, Letj;

    .line 30
    const-string v10, "FAILURE_REASON_INVALID_POLICY_STATE"

    const/16 v11, 0x1d

    move-object/from16 v32, v8

    const/16 v8, 0x12

    invoke-direct {v5, v10, v11, v8}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letj;->D:Letj;

    new-instance v8, Letj;

    .line 31
    const-string v10, "FAILURE_REASON_PERSONAL_USAGE_DISALLOWED"

    const/16 v11, 0x1e

    move-object/from16 v33, v5

    const/16 v5, 0x1e

    invoke-direct {v8, v10, v11, v5}, Letj;-><init>(Ljava/lang/String;II)V

    sput-object v8, Letj;->E:Letj;

    const/16 v5, 0x1f

    new-array v5, v5, [Letj;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v15, v5, v0

    const/4 v0, 0x7

    aput-object v2, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v7, v5, v0

    const/16 v0, 0xb

    aput-object v4, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v29, v5, v0

    const/16 v0, 0x1a

    aput-object v30, v5, v0

    const/16 v0, 0x1b

    aput-object v31, v5, v0

    const/16 v0, 0x1c

    aput-object v32, v5, v0

    const/16 v0, 0x1d

    aput-object v33, v5, v0

    const/16 v0, 0x1e

    aput-object v8, v5, v0

    sput-object v5, Letj;->G:[Letj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Letj;->F:I

    return-void
.end method

.method public static a(I)Letj;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Letj;->z:Letj;

    return-object p0

    :pswitch_2
    sget-object p0, Letj;->E:Letj;

    return-object p0

    :pswitch_3
    sget-object p0, Letj;->y:Letj;

    return-object p0

    :pswitch_4
    sget-object p0, Letj;->s:Letj;

    return-object p0

    :pswitch_5
    sget-object p0, Letj;->r:Letj;

    return-object p0

    :pswitch_6
    sget-object p0, Letj;->q:Letj;

    return-object p0

    :pswitch_7
    sget-object p0, Letj;->p:Letj;

    return-object p0

    :pswitch_8
    sget-object p0, Letj;->o:Letj;

    return-object p0

    :pswitch_9
    sget-object p0, Letj;->j:Letj;

    return-object p0

    :pswitch_a
    sget-object p0, Letj;->C:Letj;

    return-object p0

    :pswitch_b
    sget-object p0, Letj;->e:Letj;

    return-object p0

    :pswitch_c
    sget-object p0, Letj;->x:Letj;

    return-object p0

    :pswitch_d
    sget-object p0, Letj;->n:Letj;

    return-object p0

    :pswitch_e
    sget-object p0, Letj;->D:Letj;

    return-object p0

    :pswitch_f
    sget-object p0, Letj;->m:Letj;

    return-object p0

    :pswitch_10
    sget-object p0, Letj;->d:Letj;

    return-object p0

    :pswitch_11
    sget-object p0, Letj;->i:Letj;

    return-object p0

    :pswitch_12
    sget-object p0, Letj;->c:Letj;

    return-object p0

    :pswitch_13
    sget-object p0, Letj;->b:Letj;

    return-object p0

    :pswitch_14
    sget-object p0, Letj;->B:Letj;

    return-object p0

    :pswitch_15
    sget-object p0, Letj;->l:Letj;

    return-object p0

    :pswitch_16
    sget-object p0, Letj;->h:Letj;

    return-object p0

    :pswitch_17
    sget-object p0, Letj;->g:Letj;

    return-object p0

    :pswitch_18
    sget-object p0, Letj;->f:Letj;

    return-object p0

    :pswitch_19
    sget-object p0, Letj;->A:Letj;

    return-object p0

    :pswitch_1a
    sget-object p0, Letj;->w:Letj;

    return-object p0

    :pswitch_1b
    sget-object p0, Letj;->v:Letj;

    return-object p0

    :pswitch_1c
    sget-object p0, Letj;->k:Letj;

    return-object p0

    :pswitch_1d
    sget-object p0, Letj;->u:Letj;

    return-object p0

    :pswitch_1e
    sget-object p0, Letj;->t:Letj;

    return-object p0

    :pswitch_1f
    sget-object p0, Letj;->a:Letj;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
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
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Leti;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Letj;
    .locals 1

    sget-object v0, Letj;->G:[Letj;

    .line 40
    invoke-virtual {v0}, [Letj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Letj;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Letj;->F:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Letj;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Letj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
