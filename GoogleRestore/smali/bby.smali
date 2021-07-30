.class public final enum Lbby;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbby;

.field public static final enum b:Lbby;

.field public static final enum c:Lbby;

.field public static final enum d:Lbby;

.field public static final enum e:Lbby;

.field public static final enum f:Lbby;

.field public static final enum g:Lbby;

.field public static final enum h:Lbby;

.field public static final enum i:Lbby;

.field public static final enum j:Lbby;

.field public static final enum k:Lbby;

.field public static final enum l:Lbby;

.field public static final enum m:Lbby;

.field public static final enum n:Lbby;

.field public static final enum o:Lbby;

.field public static final enum p:Lbby;

.field public static final enum q:Lbby;

.field public static final enum r:Lbby;

.field private static final synthetic t:[Lbby;


# instance fields
.field public final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lbby;

    .line 1
    const-string v1, "STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbby;->a:Lbby;

    new-instance v1, Lbby;

    .line 2
    const-string v3, "WELCOME_SCREEN"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbby;->b:Lbby;

    new-instance v3, Lbby;

    .line 3
    const-string v6, "HANDSHAKE_INITIATED"

    const/4 v7, 0x2

    const/16 v8, 0xf

    invoke-direct {v3, v6, v7, v8}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbby;->c:Lbby;

    new-instance v6, Lbby;

    .line 4
    const-string v9, "SMART_SETUP_SCREEN"

    const/4 v10, 0x3

    const/16 v11, 0x14

    invoke-direct {v6, v9, v10, v11}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbby;->d:Lbby;

    new-instance v9, Lbby;

    .line 5
    const-string v11, "SMART_SETUP_SKIPPED"

    const/4 v12, 0x4

    const/16 v13, 0x17

    invoke-direct {v9, v11, v12, v13}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbby;->e:Lbby;

    new-instance v11, Lbby;

    .line 6
    const-string v13, "AWAITING_ADD_ACCOUNT"

    const/4 v14, 0x5

    const/16 v15, 0x1a

    invoke-direct {v11, v13, v14, v15}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbby;->f:Lbby;

    new-instance v13, Lbby;

    .line 7
    const-string v15, "INDEXING"

    const/4 v14, 0x6

    const/16 v12, 0x1e

    invoke-direct {v13, v15, v14, v12}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbby;->g:Lbby;

    new-instance v12, Lbby;

    .line 8
    const-string v15, "INDEXING_OFF_SCREEN"

    const/4 v14, 0x7

    const/16 v10, 0x28

    invoke-direct {v12, v15, v14, v10}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbby;->h:Lbby;

    new-instance v10, Lbby;

    .line 9
    const-string v15, "FLAVOR_SELECTION"

    const/16 v14, 0x8

    const/16 v7, 0x32

    invoke-direct {v10, v15, v14, v7}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbby;->i:Lbby;

    new-instance v7, Lbby;

    .line 10
    const-string v15, "TRANSFERRING"

    const/16 v14, 0x9

    const/16 v4, 0x3c

    invoke-direct {v7, v15, v14, v4}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbby;->j:Lbby;

    new-instance v4, Lbby;

    .line 11
    const-string v15, "TRANSFERRING_OFF_SCREEN"

    const/16 v14, 0x46

    invoke-direct {v4, v15, v5, v14}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbby;->k:Lbby;

    new-instance v14, Lbby;

    .line 12
    const-string v15, "TRANSFER_COMPLETED"

    const/16 v5, 0xb

    const/16 v2, 0x4b

    invoke-direct {v14, v15, v5, v2}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbby;->l:Lbby;

    new-instance v2, Lbby;

    .line 13
    const-string v15, "TRANSFER_COMPLETED_OFF_SCREEN"

    const/16 v5, 0xc

    const/16 v8, 0x50

    invoke-direct {v2, v15, v5, v8}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbby;->m:Lbby;

    new-instance v8, Lbby;

    .line 14
    const-string v15, "TRANSFER_CANCELED"

    const/16 v5, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x52

    invoke-direct {v8, v15, v5, v2}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbby;->n:Lbby;

    new-instance v2, Lbby;

    .line 15
    const-string v15, "RESTORING"

    const/16 v5, 0xe

    move-object/from16 v17, v8

    const/16 v8, 0x55

    invoke-direct {v2, v15, v5, v8}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbby;->o:Lbby;

    new-instance v8, Lbby;

    .line 16
    const-string v15, "FINAL_HOLD"

    const/16 v5, 0x5a

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v8, v15, v2, v5}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbby;->p:Lbby;

    new-instance v2, Lbby;

    .line 17
    const-string v5, "AWAITING_USB"

    const/16 v15, 0x10

    move-object/from16 v19, v8

    const/16 v8, 0x64

    invoke-direct {v2, v5, v15, v8}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbby;->q:Lbby;

    new-instance v5, Lbby;

    .line 18
    const-string v8, "ERROR"

    const/16 v15, 0x11

    move-object/from16 v20, v2

    const/16 v2, 0x6e

    invoke-direct {v5, v8, v15, v2}, Lbby;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbby;->r:Lbby;

    const/16 v2, 0x12

    new-array v2, v2, [Lbby;

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v9, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v7, v2, v0

    const/16 v0, 0xa

    aput-object v4, v2, v0

    const/16 v0, 0xb

    aput-object v14, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v5, v2, v15

    sput-object v2, Lbby;->t:[Lbby;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbby;->s:I

    return-void
.end method

.method public static a(I)Lbby;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    sget-object p0, Lbby;->r:Lbby;

    return-object p0

    :sswitch_1
    sget-object p0, Lbby;->q:Lbby;

    return-object p0

    :sswitch_2
    sget-object p0, Lbby;->p:Lbby;

    return-object p0

    :sswitch_3
    sget-object p0, Lbby;->o:Lbby;

    return-object p0

    :sswitch_4
    sget-object p0, Lbby;->n:Lbby;

    return-object p0

    :sswitch_5
    sget-object p0, Lbby;->m:Lbby;

    return-object p0

    :sswitch_6
    sget-object p0, Lbby;->l:Lbby;

    return-object p0

    :sswitch_7
    sget-object p0, Lbby;->k:Lbby;

    return-object p0

    :sswitch_8
    sget-object p0, Lbby;->j:Lbby;

    return-object p0

    :sswitch_9
    sget-object p0, Lbby;->i:Lbby;

    return-object p0

    :sswitch_a
    sget-object p0, Lbby;->h:Lbby;

    return-object p0

    :sswitch_b
    sget-object p0, Lbby;->g:Lbby;

    return-object p0

    :sswitch_c
    sget-object p0, Lbby;->f:Lbby;

    return-object p0

    :sswitch_d
    sget-object p0, Lbby;->e:Lbby;

    return-object p0

    :sswitch_e
    sget-object p0, Lbby;->d:Lbby;

    return-object p0

    :sswitch_f
    sget-object p0, Lbby;->c:Lbby;

    return-object p0

    :sswitch_10
    sget-object p0, Lbby;->b:Lbby;

    return-object p0

    :sswitch_11
    sget-object p0, Lbby;->a:Lbby;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0xf -> :sswitch_f
        0x14 -> :sswitch_e
        0x17 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1e -> :sswitch_b
        0x28 -> :sswitch_a
        0x32 -> :sswitch_9
        0x3c -> :sswitch_8
        0x46 -> :sswitch_7
        0x4b -> :sswitch_6
        0x50 -> :sswitch_5
        0x52 -> :sswitch_4
        0x55 -> :sswitch_3
        0x5a -> :sswitch_2
        0x64 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lbbx;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbby;
    .locals 1

    sget-object v0, Lbby;->t:[Lbby;

    .line 27
    invoke-virtual {v0}, [Lbby;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbby;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbby;->s:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbby;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lbby;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
