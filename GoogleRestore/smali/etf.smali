.class public final enum Letf;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Letf;

.field public static final enum b:Letf;

.field public static final enum c:Letf;

.field public static final enum d:Letf;

.field public static final enum e:Letf;

.field public static final enum f:Letf;

.field public static final enum g:Letf;

.field public static final enum h:Letf;

.field private static final synthetic j:[Letf;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Letf;

    .line 1
    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Letf;->a:Letf;

    new-instance v1, Letf;

    .line 2
    const-string v3, "ERROR_SERVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Letf;->b:Letf;

    new-instance v3, Letf;

    .line 3
    const-string v5, "ERROR_TRANSIENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Letf;->c:Letf;

    new-instance v5, Letf;

    .line 4
    const-string v7, "ERROR_DEVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Letf;->d:Letf;

    new-instance v7, Letf;

    .line 5
    const-string v9, "ERROR_POLICY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Letf;->e:Letf;

    new-instance v9, Letf;

    .line 6
    const-string v11, "ERROR_NETWORK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Letf;->f:Letf;

    new-instance v11, Letf;

    .line 7
    const-string v13, "ERROR_USER_CANCEL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v11, Letf;->g:Letf;

    new-instance v13, Letf;

    .line 8
    const-string v15, "ERROR_SETUP_ACTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Letf;-><init>(Ljava/lang/String;II)V

    sput-object v13, Letf;->h:Letf;

    const/16 v15, 0x8

    new-array v15, v15, [Letf;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Letf;->j:[Letf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Letf;->i:I

    return-void
.end method

.method public static a(I)Letf;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Letf;->h:Letf;

    return-object p0

    :pswitch_1
    sget-object p0, Letf;->g:Letf;

    return-object p0

    :pswitch_2
    sget-object p0, Letf;->f:Letf;

    return-object p0

    :pswitch_3
    sget-object p0, Letf;->e:Letf;

    return-object p0

    :pswitch_4
    sget-object p0, Letf;->d:Letf;

    return-object p0

    :pswitch_5
    sget-object p0, Letf;->c:Letf;

    return-object p0

    :pswitch_6
    sget-object p0, Letf;->b:Letf;

    return-object p0

    :pswitch_7
    sget-object p0, Letf;->a:Letf;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lete;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Letf;
    .locals 1

    sget-object v0, Letf;->j:[Letf;

    .line 17
    invoke-virtual {v0}, [Letf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Letf;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Letf;->i:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Letf;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Letf;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
