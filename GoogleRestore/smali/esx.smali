.class public final enum Lesx;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lesx;

.field public static final enum b:Lesx;

.field public static final enum c:Lesx;

.field public static final enum d:Lesx;

.field public static final enum e:Lesx;

.field public static final enum f:Lesx;

.field public static final enum g:Lesx;

.field public static final enum h:Lesx;

.field public static final enum i:Lesx;

.field public static final enum j:Lesx;

.field public static final enum k:Lesx;

.field public static final enum l:Lesx;

.field private static final synthetic n:[Lesx;


# instance fields
.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lesx;

    .line 1
    const-string v1, "UNSPECIFIED_PROVISION_ENTRY_POINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lesx;->a:Lesx;

    new-instance v1, Lesx;

    .line 2
    const-string v3, "SUW_DIRECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lesx;->b:Lesx;

    new-instance v3, Lesx;

    .line 3
    const-string v5, "SUW_SYNC_AUTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lesx;->c:Lesx;

    new-instance v5, Lesx;

    .line 4
    const-string v7, "SUW_AFW_STRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lesx;->d:Lesx;

    new-instance v7, Lesx;

    .line 5
    const-string v9, "SETTINGS_ADD_ACCOUNT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lesx;->e:Lesx;

    new-instance v9, Lesx;

    .line 6
    const-string v11, "EASY_WORK_SETUP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lesx;->f:Lesx;

    new-instance v11, Lesx;

    .line 7
    const-string v13, "ENROLLMENT_LINK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lesx;->g:Lesx;

    new-instance v13, Lesx;

    .line 8
    const-string v15, "MANUAL_START_CLOUDDPC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lesx;->h:Lesx;

    new-instance v15, Lesx;

    .line 9
    const-string v14, "DPC_TRANSFER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lesx;->i:Lesx;

    new-instance v14, Lesx;

    .line 10
    const-string v12, "ADMIN_INTEGRATED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lesx;->j:Lesx;

    new-instance v12, Lesx;

    .line 11
    const-string v10, "DEVICE_ADMIN_MIGRATION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lesx;->k:Lesx;

    new-instance v10, Lesx;

    .line 12
    const-string v8, "GMS_DIRECT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lesx;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lesx;->l:Lesx;

    const/16 v8, 0xc

    new-array v8, v8, [Lesx;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lesx;->n:[Lesx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lesx;->m:I

    return-void
.end method

.method public static a(I)Lesx;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lesx;->l:Lesx;

    return-object p0

    :pswitch_1
    sget-object p0, Lesx;->k:Lesx;

    return-object p0

    :pswitch_2
    sget-object p0, Lesx;->j:Lesx;

    return-object p0

    :pswitch_3
    sget-object p0, Lesx;->i:Lesx;

    return-object p0

    :pswitch_4
    sget-object p0, Lesx;->h:Lesx;

    return-object p0

    :pswitch_5
    sget-object p0, Lesx;->g:Lesx;

    return-object p0

    :pswitch_6
    sget-object p0, Lesx;->f:Lesx;

    return-object p0

    :pswitch_7
    sget-object p0, Lesx;->e:Lesx;

    return-object p0

    :pswitch_8
    sget-object p0, Lesx;->d:Lesx;

    return-object p0

    :pswitch_9
    sget-object p0, Lesx;->c:Lesx;

    return-object p0

    :pswitch_a
    sget-object p0, Lesx;->b:Lesx;

    return-object p0

    :pswitch_b
    sget-object p0, Lesx;->a:Lesx;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lesw;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lesx;
    .locals 1

    sget-object v0, Lesx;->n:[Lesx;

    .line 21
    invoke-virtual {v0}, [Lesx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lesx;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lesx;->m:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lesx;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lesx;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
