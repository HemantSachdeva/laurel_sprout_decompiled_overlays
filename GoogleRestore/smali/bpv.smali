.class public final enum Lbpv;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbpv;

.field public static final enum b:Lbpv;

.field public static final enum c:Lbpv;

.field public static final enum d:Lbpv;

.field public static final enum e:Lbpv;

.field public static final enum f:Lbpv;

.field public static final enum g:Lbpv;

.field public static final enum h:Lbpv;

.field public static final enum i:Lbpv;

.field public static final enum j:Lbpv;

.field public static final enum k:Lbpv;

.field public static final enum l:Lbpv;

.field public static final enum m:Lbpv;

.field public static final enum n:Lbpv;

.field public static final enum o:Lbpv;

.field public static final enum p:Lbpv;

.field private static final synthetic r:[Lbpv;


# instance fields
.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lbpv;

    .line 1
    const-string v1, "BUILD_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbpv;->a:Lbpv;

    new-instance v1, Lbpv;

    .line 2
    const-string v3, "BUILD_TYPE_PROD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbpv;->b:Lbpv;

    new-instance v3, Lbpv;

    .line 3
    const-string v5, "BUILD_TYPE_INTERNAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbpv;->c:Lbpv;

    new-instance v5, Lbpv;

    .line 4
    const-string v7, "BUILD_TYPE_PRODLMP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbpv;->d:Lbpv;

    new-instance v7, Lbpv;

    .line 5
    const-string v9, "BUILD_TYPE_THINGS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbpv;->e:Lbpv;

    new-instance v9, Lbpv;

    .line 6
    const-string v11, "BUILD_TYPE_PRODMNC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbpv;->f:Lbpv;

    new-instance v11, Lbpv;

    .line 7
    const-string v13, "BUILD_TYPE_WEARABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbpv;->g:Lbpv;

    new-instance v13, Lbpv;

    .line 8
    const-string v15, "BUILD_TYPE_AUTO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbpv;->h:Lbpv;

    new-instance v15, Lbpv;

    .line 9
    const-string v14, "BUILD_TYPE_ATV"

    const/16 v12, 0x8

    const/16 v10, 0x9

    invoke-direct {v15, v14, v12, v10}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbpv;->i:Lbpv;

    new-instance v14, Lbpv;

    .line 10
    const-string v12, "BUILD_TYPE_PRODPIX"

    const/16 v8, 0xa

    invoke-direct {v14, v12, v10, v8}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbpv;->j:Lbpv;

    new-instance v12, Lbpv;

    .line 11
    const-string v10, "BUILD_TYPE_PRODPI"

    const/16 v6, 0xb

    invoke-direct {v12, v10, v8, v6}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbpv;->k:Lbpv;

    new-instance v10, Lbpv;

    .line 12
    const-string v8, "BUILD_TYPE_PRODGO"

    const/16 v4, 0xc

    invoke-direct {v10, v8, v6, v4}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbpv;->l:Lbpv;

    new-instance v8, Lbpv;

    .line 13
    const-string v6, "BUILD_TYPE_PRODQT"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v4, v2}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbpv;->m:Lbpv;

    new-instance v6, Lbpv;

    .line 14
    const-string v4, "BUILD_TYPE_PRODNEXT"

    move-object/from16 v16, v8

    const/16 v8, 0xf

    invoke-direct {v6, v4, v2, v8}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbpv;->n:Lbpv;

    new-instance v4, Lbpv;

    .line 15
    const-string v2, "BUILD_TYPE_PRODRVC"

    const/16 v8, 0xe

    move-object/from16 v17, v6

    const/16 v6, 0x10

    invoke-direct {v4, v2, v8, v6}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbpv;->o:Lbpv;

    new-instance v2, Lbpv;

    .line 16
    const-string v8, "BUILD_TYPE_BSTAR"

    const/16 v6, 0x11

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lbpv;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lbpv;->p:Lbpv;

    const/16 v4, 0x10

    new-array v4, v4, [Lbpv;

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

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v2, v4, v0

    sput-object v4, Lbpv;->r:[Lbpv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbpv;->q:I

    return-void
.end method

.method public static a(I)Lbpv;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lbpv;->p:Lbpv;

    return-object p0

    :pswitch_2
    sget-object p0, Lbpv;->o:Lbpv;

    return-object p0

    :pswitch_3
    sget-object p0, Lbpv;->n:Lbpv;

    return-object p0

    :pswitch_4
    sget-object p0, Lbpv;->m:Lbpv;

    return-object p0

    :pswitch_5
    sget-object p0, Lbpv;->l:Lbpv;

    return-object p0

    :pswitch_6
    sget-object p0, Lbpv;->k:Lbpv;

    return-object p0

    :pswitch_7
    sget-object p0, Lbpv;->j:Lbpv;

    return-object p0

    :pswitch_8
    sget-object p0, Lbpv;->i:Lbpv;

    return-object p0

    :pswitch_9
    sget-object p0, Lbpv;->h:Lbpv;

    return-object p0

    :pswitch_a
    sget-object p0, Lbpv;->g:Lbpv;

    return-object p0

    :pswitch_b
    sget-object p0, Lbpv;->f:Lbpv;

    return-object p0

    :pswitch_c
    sget-object p0, Lbpv;->e:Lbpv;

    return-object p0

    :pswitch_d
    sget-object p0, Lbpv;->d:Lbpv;

    return-object p0

    :pswitch_e
    sget-object p0, Lbpv;->c:Lbpv;

    return-object p0

    :pswitch_f
    sget-object p0, Lbpv;->b:Lbpv;

    return-object p0

    :pswitch_10
    sget-object p0, Lbpv;->a:Lbpv;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lbpu;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbpv;
    .locals 1

    sget-object v0, Lbpv;->r:[Lbpv;

    .line 25
    invoke-virtual {v0}, [Lbpv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpv;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbpv;->q:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbpv;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lbpv;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
