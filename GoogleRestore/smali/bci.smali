.class public final enum Lbci;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbci;

.field public static final enum b:Lbci;

.field public static final enum c:Lbci;

.field public static final enum d:Lbci;

.field public static final enum e:Lbci;

.field public static final enum f:Lbci;

.field public static final enum g:Lbci;

.field public static final enum h:Lbci;

.field public static final enum i:Lbci;

.field public static final enum j:Lbci;

.field public static final enum k:Lbci;

.field public static final enum l:Lbci;

.field public static final enum m:Lbci;

.field public static final enum n:Lbci;

.field public static final enum o:Lbci;

.field public static final enum p:Lbci;

.field public static final enum q:Lbci;

.field public static final enum r:Lbci;

.field public static final enum s:Lbci;

.field public static final enum t:Lbci;

.field public static final enum u:Lbci;

.field private static final synthetic w:[Lbci;


# instance fields
.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lbci;

    .line 1
    const-string v1, "EVENT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbci;->a:Lbci;

    new-instance v1, Lbci;

    .line 2
    const-string v3, "EVENT_PERPARE_APP_DATA_TRANSFER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbci;->b:Lbci;

    new-instance v3, Lbci;

    .line 3
    const-string v5, "EVENT_TRY_STOP_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbci;->c:Lbci;

    new-instance v5, Lbci;

    .line 4
    const-string v7, "EVENT_ENTER_COOLDOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbci;->d:Lbci;

    new-instance v7, Lbci;

    .line 5
    const-string v9, "EVENT_EXIT_COOLDOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbci;->e:Lbci;

    new-instance v9, Lbci;

    .line 6
    const-string v11, "EVENT_SWITCHING_TRANSPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbci;->f:Lbci;

    new-instance v11, Lbci;

    .line 7
    const-string v13, "EVENT_SWITCH_COMPLETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbci;->g:Lbci;

    new-instance v13, Lbci;

    .line 8
    const-string v15, "EVENT_PREPARE_DRIVER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbci;->h:Lbci;

    new-instance v15, Lbci;

    .line 9
    const-string v14, "EVENT_REQUEST_DRIVER_SHUTDOWN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbci;->i:Lbci;

    new-instance v14, Lbci;

    .line 10
    const-string v12, "EVENT_DRIVER_SHUTDOWN_COMPLETE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbci;->j:Lbci;

    new-instance v12, Lbci;

    .line 11
    const-string v10, "EVENT_ON_START_COMMAND_TRY_STOP_SERVICE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbci;->k:Lbci;

    new-instance v10, Lbci;

    .line 12
    const-string v8, "EVENT_ON_DEVICE_DISCONNECTED_TRY_STOP_SERVICE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbci;->l:Lbci;

    new-instance v8, Lbci;

    .line 13
    const-string v6, "EVENT_ON_PROTOCOL_ERROR_TRY_STOP_SERVICE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbci;->m:Lbci;

    new-instance v6, Lbci;

    .line 14
    const-string v4, "EVENT_ON_CANCEL_REQUEST_TRY_STOP_SERVICE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbci;->n:Lbci;

    new-instance v4, Lbci;

    .line 15
    const-string v2, "EVENT_PREPARE_TRANSFER_TRANSPORT_SWITCH_IN_PROGRESS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbci;->o:Lbci;

    new-instance v2, Lbci;

    .line 16
    const-string v6, "EVENT_TRY_STOP_SERVICE_TRANSPORT_SWITCH_IN_PROGRESS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbci;->p:Lbci;

    new-instance v6, Lbci;

    .line 17
    const-string v4, "EVENT_CREATE_INITIALIZE_D2D_TRANSPORT_TASK"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbci;->q:Lbci;

    new-instance v4, Lbci;

    .line 18
    const-string v2, "EVENT_STOP_SERVICE_AFTER_SWITCH_LOCKED"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbci;->r:Lbci;

    new-instance v2, Lbci;

    .line 19
    const-string v6, "EVENT_ON_MSG_INITIALIZE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbci;->s:Lbci;

    new-instance v6, Lbci;

    .line 20
    const-string v4, "EVENT_ON_MSG_SHUTDOWN"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbci;->t:Lbci;

    new-instance v4, Lbci;

    .line 21
    const-string v2, "EVENT_UNKNOWN_MSG"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lbci;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbci;->u:Lbci;

    const/16 v2, 0x15

    new-array v2, v2, [Lbci;

    const/16 v16, 0x0

    aput-object v0, v2, v16

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

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lbci;->w:[Lbci;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbci;->v:I

    return-void
.end method

.method public static a(I)Lbci;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lbci;->u:Lbci;

    return-object p0

    :pswitch_1
    sget-object p0, Lbci;->t:Lbci;

    return-object p0

    :pswitch_2
    sget-object p0, Lbci;->s:Lbci;

    return-object p0

    :pswitch_3
    sget-object p0, Lbci;->r:Lbci;

    return-object p0

    :pswitch_4
    sget-object p0, Lbci;->q:Lbci;

    return-object p0

    :pswitch_5
    sget-object p0, Lbci;->p:Lbci;

    return-object p0

    :pswitch_6
    sget-object p0, Lbci;->o:Lbci;

    return-object p0

    :pswitch_7
    sget-object p0, Lbci;->n:Lbci;

    return-object p0

    :pswitch_8
    sget-object p0, Lbci;->m:Lbci;

    return-object p0

    :pswitch_9
    sget-object p0, Lbci;->l:Lbci;

    return-object p0

    :pswitch_a
    sget-object p0, Lbci;->k:Lbci;

    return-object p0

    :pswitch_b
    sget-object p0, Lbci;->j:Lbci;

    return-object p0

    :pswitch_c
    sget-object p0, Lbci;->i:Lbci;

    return-object p0

    :pswitch_d
    sget-object p0, Lbci;->h:Lbci;

    return-object p0

    :pswitch_e
    sget-object p0, Lbci;->g:Lbci;

    return-object p0

    :pswitch_f
    sget-object p0, Lbci;->f:Lbci;

    return-object p0

    :pswitch_10
    sget-object p0, Lbci;->e:Lbci;

    return-object p0

    :pswitch_11
    sget-object p0, Lbci;->d:Lbci;

    return-object p0

    :pswitch_12
    sget-object p0, Lbci;->c:Lbci;

    return-object p0

    :pswitch_13
    sget-object p0, Lbci;->b:Lbci;

    return-object p0

    :pswitch_14
    sget-object p0, Lbci;->a:Lbci;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lbch;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbci;
    .locals 1

    sget-object v0, Lbci;->w:[Lbci;

    .line 30
    invoke-virtual {v0}, [Lbci;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbci;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbci;->v:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbci;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lbci;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
