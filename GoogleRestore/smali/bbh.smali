.class public final enum Lbbh;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbbh;

.field public static final enum b:Lbbh;

.field public static final enum c:Lbbh;

.field public static final enum d:Lbbh;

.field public static final enum e:Lbbh;

.field public static final enum f:Lbbh;

.field public static final enum g:Lbbh;

.field public static final enum h:Lbbh;

.field public static final enum i:Lbbh;

.field public static final enum j:Lbbh;

.field public static final enum k:Lbbh;

.field public static final enum l:Lbbh;

.field public static final enum m:Lbbh;

.field public static final enum n:Lbbh;

.field public static final enum o:Lbbh;

.field private static final synthetic q:[Lbbh;


# instance fields
.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lbbh;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbbh;->a:Lbbh;

    new-instance v1, Lbbh;

    .line 2
    const-string v3, "HANDSHAKE_TIMEOUT_NOT_YET_CLASSIFIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbbh;->b:Lbbh;

    new-instance v3, Lbbh;

    .line 3
    const-string v5, "HANDSHAKE_TIMEOUT_NEW_DEVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbbh;->c:Lbbh;

    new-instance v5, Lbbh;

    .line 4
    const-string v7, "HANDSHAKE_TIMEOUT_EXISTING_DEVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbbh;->d:Lbbh;

    new-instance v7, Lbbh;

    .line 5
    const-string v9, "HANDSHAKE_MAGIC_MISMATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbbh;->e:Lbbh;

    new-instance v9, Lbbh;

    .line 6
    const-string v11, "HANDSHAKE_MAJOR_VERSION_MISMATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbbh;->f:Lbbh;

    new-instance v11, Lbbh;

    .line 7
    const-string v13, "IOS_FLOW_DISABLED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbbh;->g:Lbbh;

    new-instance v13, Lbbh;

    .line 8
    const-string v15, "DEVICE_NOT_WHITELISTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbbh;->h:Lbbh;

    new-instance v15, Lbbh;

    .line 9
    const-string v14, "IOS_PAIRING_DISALLOWED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbbh;->i:Lbbh;

    new-instance v14, Lbbh;

    .line 10
    const-string v12, "BAD_CABLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbbh;->j:Lbbh;

    new-instance v12, Lbbh;

    .line 11
    const-string v10, "DEVICE_CHANGED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbbh;->k:Lbbh;

    new-instance v10, Lbbh;

    .line 12
    const-string v8, "UNABLE_TO_PREPARE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbbh;->l:Lbbh;

    new-instance v8, Lbbh;

    .line 13
    const-string v6, "SOURCE_GMSCORE_VERSION_TOO_LOW"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbbh;->m:Lbbh;

    new-instance v6, Lbbh;

    .line 14
    const-string v4, "SOURCE_PRE_L"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbbh;->n:Lbbh;

    new-instance v4, Lbbh;

    .line 15
    const-string v2, "WRONG_PORT_ROLE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lbbh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbbh;->o:Lbbh;

    const/16 v2, 0xf

    new-array v2, v2, [Lbbh;

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

    aput-object v4, v2, v6

    sput-object v2, Lbbh;->q:[Lbbh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbbh;->p:I

    return-void
.end method

.method public static a(I)Lbbh;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lbbh;->o:Lbbh;

    return-object p0

    :pswitch_1
    sget-object p0, Lbbh;->n:Lbbh;

    return-object p0

    :pswitch_2
    sget-object p0, Lbbh;->m:Lbbh;

    return-object p0

    :pswitch_3
    sget-object p0, Lbbh;->l:Lbbh;

    return-object p0

    :pswitch_4
    sget-object p0, Lbbh;->k:Lbbh;

    return-object p0

    :pswitch_5
    sget-object p0, Lbbh;->j:Lbbh;

    return-object p0

    :pswitch_6
    sget-object p0, Lbbh;->i:Lbbh;

    return-object p0

    :pswitch_7
    sget-object p0, Lbbh;->h:Lbbh;

    return-object p0

    :pswitch_8
    sget-object p0, Lbbh;->g:Lbbh;

    return-object p0

    :pswitch_9
    sget-object p0, Lbbh;->f:Lbbh;

    return-object p0

    :pswitch_a
    sget-object p0, Lbbh;->e:Lbbh;

    return-object p0

    :pswitch_b
    sget-object p0, Lbbh;->d:Lbbh;

    return-object p0

    :pswitch_c
    sget-object p0, Lbbh;->c:Lbbh;

    return-object p0

    :pswitch_d
    sget-object p0, Lbbh;->b:Lbbh;

    return-object p0

    :pswitch_e
    sget-object p0, Lbbh;->a:Lbbh;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lbbg;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbbh;
    .locals 1

    sget-object v0, Lbbh;->q:[Lbbh;

    .line 24
    invoke-virtual {v0}, [Lbbh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbbh;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbbh;->p:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbbh;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lbbh;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
