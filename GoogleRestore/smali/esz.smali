.class public final enum Lesz;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lesz;

.field public static final enum b:Lesz;

.field public static final enum c:Lesz;

.field public static final enum d:Lesz;

.field public static final enum e:Lesz;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum f:Lesz;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum g:Lesz;

.field public static final enum h:Lesz;

.field public static final enum i:Lesz;

.field public static final enum j:Lesz;

.field public static final enum k:Lesz;

.field public static final enum l:Lesz;

.field public static final enum m:Lesz;

.field public static final enum n:Lesz;

.field private static final synthetic p:[Lesz;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lesz;

    .line 1
    const-string v1, "UNSPECIFIED_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lesz;->a:Lesz;

    new-instance v1, Lesz;

    .line 2
    const-string v3, "ARC_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lesz;->b:Lesz;

    new-instance v3, Lesz;

    .line 3
    const-string v5, "ARC_KIOSK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lesz;->c:Lesz;

    new-instance v5, Lesz;

    .line 4
    const-string v7, "ARC_ACTIVE_DIRECTORY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lesz;->d:Lesz;

    new-instance v7, Lesz;

    .line 5
    const-string v9, "COMP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lesz;->e:Lesz;

    new-instance v9, Lesz;

    .line 6
    const-string v11, "DEVICE_ADMIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lesz;->f:Lesz;

    new-instance v11, Lesz;

    .line 7
    const-string v13, "DEVICE_OWNER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lesz;->g:Lesz;

    new-instance v13, Lesz;

    .line 8
    const-string v15, "EDU_USER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lesz;->h:Lesz;

    new-instance v15, Lesz;

    .line 9
    const-string v14, "MANAGED_PROFILE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lesz;->i:Lesz;

    new-instance v14, Lesz;

    .line 10
    const-string v12, "KIOSK_USER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lesz;->j:Lesz;

    new-instance v12, Lesz;

    .line 11
    const-string v10, "ARC_CHILD_USER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lesz;->k:Lesz;

    new-instance v10, Lesz;

    .line 12
    const-string v8, "ARC_OFFLINE_DEMO_MODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lesz;->l:Lesz;

    new-instance v8, Lesz;

    .line 13
    const-string v6, "USER_SELECTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lesz;->m:Lesz;

    new-instance v6, Lesz;

    .line 14
    const-string v4, "COPE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lesz;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lesz;->n:Lesz;

    const/16 v4, 0xe

    new-array v4, v4, [Lesz;

    const/16 v16, 0x0

    aput-object v0, v4, v16

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

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lesz;->p:[Lesz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lesz;->o:I

    return-void
.end method

.method public static a(I)Lesz;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lesz;->n:Lesz;

    return-object p0

    :pswitch_1
    sget-object p0, Lesz;->m:Lesz;

    return-object p0

    :pswitch_2
    sget-object p0, Lesz;->l:Lesz;

    return-object p0

    :pswitch_3
    sget-object p0, Lesz;->k:Lesz;

    return-object p0

    :pswitch_4
    sget-object p0, Lesz;->j:Lesz;

    return-object p0

    :pswitch_5
    sget-object p0, Lesz;->i:Lesz;

    return-object p0

    :pswitch_6
    sget-object p0, Lesz;->h:Lesz;

    return-object p0

    :pswitch_7
    sget-object p0, Lesz;->g:Lesz;

    return-object p0

    :pswitch_8
    sget-object p0, Lesz;->f:Lesz;

    return-object p0

    :pswitch_9
    sget-object p0, Lesz;->e:Lesz;

    return-object p0

    :pswitch_a
    sget-object p0, Lesz;->d:Lesz;

    return-object p0

    :pswitch_b
    sget-object p0, Lesz;->c:Lesz;

    return-object p0

    :pswitch_c
    sget-object p0, Lesz;->b:Lesz;

    return-object p0

    :pswitch_d
    sget-object p0, Lesz;->a:Lesz;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lesy;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lesz;
    .locals 1

    sget-object v0, Lesz;->p:[Lesz;

    .line 23
    invoke-virtual {v0}, [Lesz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lesz;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lesz;->o:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lesz;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lesz;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
