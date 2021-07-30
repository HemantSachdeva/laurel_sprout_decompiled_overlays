.class public final enum Leth;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Leth;

.field public static final enum b:Leth;

.field public static final enum c:Leth;

.field public static final enum d:Leth;

.field public static final enum e:Leth;

.field public static final enum f:Leth;

.field public static final enum g:Leth;

.field public static final enum h:Leth;

.field public static final enum i:Leth;

.field private static final synthetic k:[Leth;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Leth;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Leth;->a:Leth;

    new-instance v1, Leth;

    .line 2
    const-string v3, "DOWNLOADS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v1, Leth;->b:Leth;

    new-instance v3, Leth;

    .line 3
    const-string v5, "CAMERA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v3, Leth;->c:Leth;

    new-instance v5, Leth;

    .line 4
    const-string v7, "DIALER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v5, Leth;->d:Leth;

    new-instance v7, Leth;

    .line 5
    const-string v9, "MESSAGING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v7, Leth;->e:Leth;

    new-instance v9, Leth;

    .line 6
    const-string v11, "SETTINGS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v9, Leth;->f:Leth;

    new-instance v11, Leth;

    .line 7
    const-string v13, "AUDIO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v11, Leth;->g:Leth;

    new-instance v13, Leth;

    .line 8
    const-string v15, "IMAGE_VIDEO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v13, Leth;->h:Leth;

    new-instance v15, Leth;

    .line 9
    const-string v14, "CONTACTS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Leth;-><init>(Ljava/lang/String;II)V

    sput-object v15, Leth;->i:Leth;

    const/16 v14, 0x9

    new-array v14, v14, [Leth;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Leth;->k:[Leth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Leth;->j:I

    return-void
.end method

.method public static a(I)Leth;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Leth;->i:Leth;

    return-object p0

    :pswitch_1
    sget-object p0, Leth;->h:Leth;

    return-object p0

    :pswitch_2
    sget-object p0, Leth;->g:Leth;

    return-object p0

    :pswitch_3
    sget-object p0, Leth;->f:Leth;

    return-object p0

    :pswitch_4
    sget-object p0, Leth;->e:Leth;

    return-object p0

    :pswitch_5
    sget-object p0, Leth;->d:Leth;

    return-object p0

    :pswitch_6
    sget-object p0, Leth;->c:Leth;

    return-object p0

    :pswitch_7
    sget-object p0, Leth;->b:Leth;

    return-object p0

    :pswitch_8
    sget-object p0, Leth;->a:Leth;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Letg;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Leth;
    .locals 1

    sget-object v0, Leth;->k:[Leth;

    .line 18
    invoke-virtual {v0}, [Leth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leth;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Leth;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leth;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Leth;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
