.class public final enum Ldsa;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldsa;

.field public static final enum b:Ldsa;

.field public static final enum c:Ldsa;

.field public static final enum d:Ldsa;

.field public static final enum e:Ldsa;

.field public static final enum f:Ldsa;

.field public static final enum g:Ldsa;

.field public static final enum h:Ldsa;

.field public static final enum i:Ldsa;

.field public static final enum j:Ldsa;

.field public static final enum k:Ldsa;

.field public static final enum l:Ldsa;

.field public static final enum m:Ldsa;

.field public static final enum n:Ldsa;

.field public static final enum o:Ldsa;

.field public static final enum p:Ldsa;

.field public static final enum q:Ldsa;

.field public static final enum r:Ldsa;

.field public static final enum s:Ldsa;

.field private static final synthetic u:[Ldsa;


# instance fields
.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Ldsa;

    .line 1
    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldsa;->a:Ldsa;

    new-instance v1, Ldsa;

    .line 2
    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldsa;->b:Ldsa;

    new-instance v3, Ldsa;

    .line 3
    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldsa;->c:Ldsa;

    new-instance v5, Ldsa;

    .line 4
    const-string v7, "MOBILE_MMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldsa;->d:Ldsa;

    new-instance v7, Ldsa;

    .line 5
    const-string v9, "MOBILE_SUPL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldsa;->e:Ldsa;

    new-instance v9, Ldsa;

    .line 6
    const-string v11, "MOBILE_DUN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldsa;->f:Ldsa;

    new-instance v11, Ldsa;

    .line 7
    const-string v13, "MOBILE_HIPRI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldsa;->g:Ldsa;

    new-instance v13, Ldsa;

    .line 8
    const-string v15, "WIMAX"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ldsa;->h:Ldsa;

    new-instance v15, Ldsa;

    .line 9
    const-string v14, "BLUETOOTH"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v15, Ldsa;->i:Ldsa;

    new-instance v14, Ldsa;

    .line 10
    const-string v12, "DUMMY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v14, Ldsa;->j:Ldsa;

    new-instance v12, Ldsa;

    .line 11
    const-string v10, "ETHERNET"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ldsa;->k:Ldsa;

    new-instance v10, Ldsa;

    .line 12
    const-string v8, "MOBILE_FOTA"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ldsa;->l:Ldsa;

    new-instance v8, Ldsa;

    .line 13
    const-string v6, "MOBILE_IMS"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ldsa;->m:Ldsa;

    new-instance v6, Ldsa;

    .line 14
    const-string v4, "MOBILE_CBS"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldsa;->n:Ldsa;

    new-instance v4, Ldsa;

    .line 15
    const-string v2, "WIFI_P2P"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldsa;->o:Ldsa;

    new-instance v2, Ldsa;

    .line 16
    const-string v8, "MOBILE_IA"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ldsa;->p:Ldsa;

    new-instance v8, Ldsa;

    .line 17
    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ldsa;->q:Ldsa;

    new-instance v6, Ldsa;

    .line 18
    const-string v4, "PROXY"

    move-object/from16 v21, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldsa;->r:Ldsa;

    new-instance v4, Ldsa;

    .line 19
    const-string v2, "VPN"

    move-object/from16 v22, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Ldsa;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldsa;->s:Ldsa;

    const/16 v2, 0x13

    new-array v2, v2, [Ldsa;

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

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    aput-object v22, v2, v8

    aput-object v4, v2, v6

    sput-object v2, Ldsa;->u:[Ldsa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldsa;->t:I

    return-void
.end method

.method public static a(I)Ldsa;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Ldsa;->s:Ldsa;

    return-object p0

    :pswitch_1
    sget-object p0, Ldsa;->r:Ldsa;

    return-object p0

    :pswitch_2
    sget-object p0, Ldsa;->q:Ldsa;

    return-object p0

    :pswitch_3
    sget-object p0, Ldsa;->p:Ldsa;

    return-object p0

    :pswitch_4
    sget-object p0, Ldsa;->o:Ldsa;

    return-object p0

    :pswitch_5
    sget-object p0, Ldsa;->n:Ldsa;

    return-object p0

    :pswitch_6
    sget-object p0, Ldsa;->m:Ldsa;

    return-object p0

    :pswitch_7
    sget-object p0, Ldsa;->l:Ldsa;

    return-object p0

    :pswitch_8
    sget-object p0, Ldsa;->k:Ldsa;

    return-object p0

    :pswitch_9
    sget-object p0, Ldsa;->j:Ldsa;

    return-object p0

    :pswitch_a
    sget-object p0, Ldsa;->i:Ldsa;

    return-object p0

    :pswitch_b
    sget-object p0, Ldsa;->h:Ldsa;

    return-object p0

    :pswitch_c
    sget-object p0, Ldsa;->g:Ldsa;

    return-object p0

    :pswitch_d
    sget-object p0, Ldsa;->f:Ldsa;

    return-object p0

    :pswitch_e
    sget-object p0, Ldsa;->e:Ldsa;

    return-object p0

    :pswitch_f
    sget-object p0, Ldsa;->d:Ldsa;

    return-object p0

    :pswitch_10
    sget-object p0, Ldsa;->c:Ldsa;

    return-object p0

    :pswitch_11
    sget-object p0, Ldsa;->b:Ldsa;

    return-object p0

    :pswitch_12
    sget-object p0, Ldsa;->a:Ldsa;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
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

    sget-object v0, Ldrz;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Ldsa;
    .locals 1

    sget-object v0, Ldsa;->u:[Ldsa;

    .line 28
    invoke-virtual {v0}, [Ldsa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldsa;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldsa;->t:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldsa;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ldsa;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
