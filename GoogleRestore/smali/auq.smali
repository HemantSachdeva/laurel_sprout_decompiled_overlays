.class public final enum Lauq;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lauq;

.field public static final enum b:Lauq;

.field public static final enum c:Lauq;

.field public static final enum d:Lauq;

.field public static final enum e:Lauq;

.field public static final enum f:Lauq;

.field public static final enum g:Lauq;

.field public static final enum h:Lauq;

.field public static final enum i:Lauq;

.field public static final enum j:Lauq;

.field public static final enum k:Lauq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum l:Lauq;

.field public static final enum m:Lauq;

.field public static final enum n:Lauq;

.field public static final enum o:Lauq;

.field public static final enum p:Lauq;

.field public static final enum q:Lauq;

.field public static final enum r:Lauq;

.field public static final enum s:Lauq;

.field public static final enum t:Lauq;

.field public static final enum u:Lauq;

.field private static final synthetic w:[Lauq;


# instance fields
.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lauq;

    .line 1
    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lauq;->a:Lauq;

    new-instance v1, Lauq;

    .line 2
    const-string v3, "AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lauq;->b:Lauq;

    new-instance v3, Lauq;

    .line 3
    const-string v5, "UNAVAILABLE_COUNTRY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lauq;->c:Lauq;

    new-instance v5, Lauq;

    .line 4
    const-string v7, "UNAVAILABLE_UNKNOWN_REASON"

    const/4 v8, 0x3

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lauq;->d:Lauq;

    new-instance v7, Lauq;

    .line 5
    const-string v10, "UNAVAILABLE_UNLESS_PURCHASED"

    const/4 v11, 0x4

    const/4 v12, 0x7

    invoke-direct {v7, v10, v11, v12}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lauq;->e:Lauq;

    new-instance v10, Lauq;

    .line 6
    const-string v13, "UNAVAILABLE_UNLESS_IN_GROUP"

    const/4 v14, 0x5

    const/16 v15, 0x8

    invoke-direct {v10, v13, v14, v15}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lauq;->f:Lauq;

    new-instance v13, Lauq;

    .line 7
    const-string v14, "UNAVAILABLE_DEVICE_HARDWARE"

    const/16 v11, 0x9

    invoke-direct {v13, v14, v9, v11}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lauq;->g:Lauq;

    new-instance v14, Lauq;

    .line 8
    const-string v9, "UNAVAILABLE_DEVICE_CARRIER"

    const/16 v8, 0xa

    invoke-direct {v14, v9, v12, v8}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lauq;->h:Lauq;

    new-instance v9, Lauq;

    .line 9
    const-string v12, "UNAVAILABLE_COUNTRY_OR_CARRIER"

    const/16 v6, 0xb

    invoke-direct {v9, v12, v15, v6}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lauq;->i:Lauq;

    new-instance v12, Lauq;

    .line 10
    const-string v15, "UNAVAILABLE_SAFE_SEARCH_LEVEL"

    const/16 v4, 0xc

    invoke-direct {v12, v15, v11, v4}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lauq;->j:Lauq;

    new-instance v15, Lauq;

    .line 11
    const-string v11, "UNAVAILABLE_ALBUM_ONLY"

    const/16 v2, 0xd

    invoke-direct {v15, v11, v8, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lauq;->k:Lauq;

    new-instance v11, Lauq;

    .line 12
    const-string v8, "UNAVAILABLE_DOMAIN"

    const/16 v2, 0xe

    invoke-direct {v11, v8, v6, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lauq;->l:Lauq;

    new-instance v8, Lauq;

    .line 13
    const-string v6, "UNAVAILABLE_REMOVED"

    const/16 v2, 0xf

    invoke-direct {v8, v6, v4, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lauq;->m:Lauq;

    new-instance v6, Lauq;

    .line 14
    const-string v4, "BLACKLISTED"

    const/16 v2, 0x10

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lauq;->n:Lauq;

    new-instance v4, Lauq;

    .line 15
    const-string v8, "UNAVAILABLE_LANGUAGE"

    const/16 v2, 0x11

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v8, v6, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lauq;->o:Lauq;

    new-instance v6, Lauq;

    .line 16
    const-string v8, "UNAVAILABLE_DISCONTINUED"

    const/16 v2, 0x12

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v6, v8, v4, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lauq;->p:Lauq;

    new-instance v4, Lauq;

    .line 17
    const-string v8, "UNAVAILABLE_UNLESS_IN_GAIA_GROUP"

    const/16 v2, 0x14

    move-object/from16 v19, v6

    const/16 v6, 0x10

    invoke-direct {v4, v8, v6, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lauq;->q:Lauq;

    new-instance v6, Lauq;

    .line 18
    const-string v8, "UNAVAILABLE_FOR_MANAGED_ACCOUNT"

    const/16 v2, 0x15

    move-object/from16 v20, v4

    const/16 v4, 0x11

    invoke-direct {v6, v8, v4, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lauq;->r:Lauq;

    new-instance v4, Lauq;

    .line 19
    const-string v8, "UNAVAILABLE_MISSING_PERMISSION"

    const/16 v2, 0x16

    move-object/from16 v21, v6

    const/16 v6, 0x12

    invoke-direct {v4, v8, v6, v2}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lauq;->s:Lauq;

    new-instance v2, Lauq;

    .line 20
    const-string v6, "UNAVAILABLE_APPROVAL_TYPE"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x17

    invoke-direct {v2, v6, v8, v4}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lauq;->t:Lauq;

    new-instance v4, Lauq;

    .line 21
    const-string v6, "UNAVAILABLE_MANAGED_UNAPPROVED"

    const/16 v8, 0x18

    move-object/from16 v23, v2

    const/16 v2, 0x14

    invoke-direct {v4, v6, v2, v8}, Lauq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lauq;->u:Lauq;

    const/16 v2, 0x15

    new-array v2, v2, [Lauq;

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

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v12, v2, v0

    const/16 v0, 0xa

    aput-object v15, v2, v0

    const/16 v0, 0xb

    aput-object v11, v2, v0

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

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v4, v2, v0

    sput-object v2, Lauq;->w:[Lauq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lauq;->v:I

    return-void
.end method

.method public static a(I)Lauq;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lauq;->u:Lauq;

    return-object p0

    :pswitch_2
    sget-object p0, Lauq;->t:Lauq;

    return-object p0

    :pswitch_3
    sget-object p0, Lauq;->s:Lauq;

    return-object p0

    :pswitch_4
    sget-object p0, Lauq;->r:Lauq;

    return-object p0

    :pswitch_5
    sget-object p0, Lauq;->q:Lauq;

    return-object p0

    :pswitch_6
    sget-object p0, Lauq;->p:Lauq;

    return-object p0

    :pswitch_7
    sget-object p0, Lauq;->o:Lauq;

    return-object p0

    :pswitch_8
    sget-object p0, Lauq;->n:Lauq;

    return-object p0

    :pswitch_9
    sget-object p0, Lauq;->m:Lauq;

    return-object p0

    :pswitch_a
    sget-object p0, Lauq;->l:Lauq;

    return-object p0

    :pswitch_b
    sget-object p0, Lauq;->k:Lauq;

    return-object p0

    :pswitch_c
    sget-object p0, Lauq;->j:Lauq;

    return-object p0

    :pswitch_d
    sget-object p0, Lauq;->i:Lauq;

    return-object p0

    :pswitch_e
    sget-object p0, Lauq;->h:Lauq;

    return-object p0

    :pswitch_f
    sget-object p0, Lauq;->g:Lauq;

    return-object p0

    :pswitch_10
    sget-object p0, Lauq;->f:Lauq;

    return-object p0

    :pswitch_11
    sget-object p0, Lauq;->e:Lauq;

    return-object p0

    :pswitch_12
    sget-object p0, Lauq;->d:Lauq;

    return-object p0

    :pswitch_13
    sget-object p0, Lauq;->c:Lauq;

    return-object p0

    :pswitch_14
    sget-object p0, Lauq;->b:Lauq;

    return-object p0

    :pswitch_15
    sget-object p0, Lauq;->a:Lauq;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Laup;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lauq;
    .locals 1

    sget-object v0, Lauq;->w:[Lauq;

    .line 30
    invoke-virtual {v0}, [Lauq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lauq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lauq;->v:I

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

    iget v1, p0, Lauq;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lauq;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
