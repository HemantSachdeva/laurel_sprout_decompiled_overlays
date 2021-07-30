.class public final enum Ldry;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldry;

.field public static final enum b:Ldry;

.field public static final enum c:Ldry;

.field public static final enum d:Ldry;

.field public static final enum e:Ldry;

.field public static final enum f:Ldry;

.field public static final enum g:Ldry;

.field public static final enum h:Ldry;

.field public static final enum i:Ldry;

.field public static final enum j:Ldry;

.field public static final enum k:Ldry;

.field public static final enum l:Ldry;

.field public static final enum m:Ldry;

.field public static final enum n:Ldry;

.field public static final enum o:Ldry;

.field public static final enum p:Ldry;

.field public static final enum q:Ldry;

.field public static final enum r:Ldry;

.field public static final enum s:Ldry;

.field public static final enum t:Ldry;

.field public static final enum u:Ldry;

.field private static final synthetic w:[Ldry;


# instance fields
.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Ldry;

    .line 1
    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldry;->a:Ldry;

    new-instance v1, Ldry;

    .line 2
    const-string v3, "GPRS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldry;->b:Ldry;

    new-instance v3, Ldry;

    .line 3
    const-string v5, "EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldry;->c:Ldry;

    new-instance v5, Ldry;

    .line 4
    const-string v7, "UMTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldry;->d:Ldry;

    new-instance v7, Ldry;

    .line 5
    const-string v9, "CDMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldry;->e:Ldry;

    new-instance v9, Ldry;

    .line 6
    const-string v11, "EVDO_0"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldry;->f:Ldry;

    new-instance v11, Ldry;

    .line 7
    const-string v13, "EVDO_A"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldry;->g:Ldry;

    new-instance v13, Ldry;

    .line 8
    const-string v15, "RTT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ldry;->h:Ldry;

    new-instance v15, Ldry;

    .line 9
    const-string v14, "HSDPA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v15, Ldry;->i:Ldry;

    new-instance v14, Ldry;

    .line 10
    const-string v12, "HSUPA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v14, Ldry;->j:Ldry;

    new-instance v12, Ldry;

    .line 11
    const-string v10, "HSPA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ldry;->k:Ldry;

    new-instance v10, Ldry;

    .line 12
    const-string v8, "IDEN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ldry;->l:Ldry;

    new-instance v8, Ldry;

    .line 13
    const-string v6, "EVDO_B"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ldry;->m:Ldry;

    new-instance v6, Ldry;

    .line 14
    const-string v4, "LTE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldry;->n:Ldry;

    new-instance v4, Ldry;

    .line 15
    const-string v2, "EHRPD"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldry;->o:Ldry;

    new-instance v2, Ldry;

    .line 16
    const-string v6, "HSPAP"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ldry;->p:Ldry;

    new-instance v6, Ldry;

    .line 17
    const-string v4, "GSM"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldry;->q:Ldry;

    new-instance v4, Ldry;

    .line 18
    const-string v2, "TD_SCDMA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldry;->r:Ldry;

    new-instance v2, Ldry;

    .line 19
    const-string v6, "IWLAN"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ldry;->s:Ldry;

    new-instance v6, Ldry;

    .line 20
    const-string v4, "LTE_CA"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldry;->t:Ldry;

    new-instance v4, Ldry;

    .line 21
    const-string v2, "COMBINED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    move-object/from16 v23, v8

    const/16 v8, 0x64

    invoke-direct {v4, v2, v6, v8}, Ldry;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldry;->u:Ldry;

    const/16 v2, 0x15

    new-array v2, v2, [Ldry;

    const/4 v8, 0x0

    aput-object v0, v2, v8

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

    aput-object v23, v2, v0

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

    aput-object v4, v2, v6

    sput-object v2, Ldry;->w:[Ldry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldry;->v:I

    return-void
.end method

.method public static a(I)Ldry;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Ldry;->t:Ldry;

    return-object p0

    :pswitch_1
    sget-object p0, Ldry;->s:Ldry;

    return-object p0

    :pswitch_2
    sget-object p0, Ldry;->r:Ldry;

    return-object p0

    :pswitch_3
    sget-object p0, Ldry;->q:Ldry;

    return-object p0

    :pswitch_4
    sget-object p0, Ldry;->p:Ldry;

    return-object p0

    :pswitch_5
    sget-object p0, Ldry;->o:Ldry;

    return-object p0

    :pswitch_6
    sget-object p0, Ldry;->n:Ldry;

    return-object p0

    :pswitch_7
    sget-object p0, Ldry;->m:Ldry;

    return-object p0

    :pswitch_8
    sget-object p0, Ldry;->l:Ldry;

    return-object p0

    :pswitch_9
    sget-object p0, Ldry;->k:Ldry;

    return-object p0

    :pswitch_a
    sget-object p0, Ldry;->j:Ldry;

    return-object p0

    :pswitch_b
    sget-object p0, Ldry;->i:Ldry;

    return-object p0

    :pswitch_c
    sget-object p0, Ldry;->h:Ldry;

    return-object p0

    :pswitch_d
    sget-object p0, Ldry;->g:Ldry;

    return-object p0

    :pswitch_e
    sget-object p0, Ldry;->f:Ldry;

    return-object p0

    :pswitch_f
    sget-object p0, Ldry;->e:Ldry;

    return-object p0

    :pswitch_10
    sget-object p0, Ldry;->d:Ldry;

    return-object p0

    :pswitch_11
    sget-object p0, Ldry;->c:Ldry;

    return-object p0

    :pswitch_12
    sget-object p0, Ldry;->b:Ldry;

    return-object p0

    :pswitch_13
    sget-object p0, Ldry;->a:Ldry;

    return-object p0

    :cond_0
    sget-object p0, Ldry;->u:Ldry;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Ldrx;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Ldry;
    .locals 1

    sget-object v0, Ldry;->w:[Ldry;

    .line 30
    invoke-virtual {v0}, [Ldry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldry;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldry;->v:I

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

    iget v1, p0, Ldry;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ldry;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
