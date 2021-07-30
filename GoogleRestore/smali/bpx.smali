.class public final enum Lbpx;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbpx;

.field public static final enum b:Lbpx;

.field public static final enum c:Lbpx;

.field public static final enum d:Lbpx;

.field public static final enum e:Lbpx;

.field public static final enum f:Lbpx;

.field public static final enum g:Lbpx;

.field public static final enum h:Lbpx;

.field public static final enum i:Lbpx;

.field public static final enum j:Lbpx;

.field private static final synthetic l:[Lbpx;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbpx;

    .line 1
    const-string v1, "DENSITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbpx;->a:Lbpx;

    new-instance v1, Lbpx;

    .line 2
    const-string v3, "DENSITY_ALLDPI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbpx;->b:Lbpx;

    new-instance v3, Lbpx;

    .line 3
    const-string v5, "DENSITY_LDPI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbpx;->c:Lbpx;

    new-instance v5, Lbpx;

    .line 4
    const-string v7, "DENSITY_MDPI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbpx;->d:Lbpx;

    new-instance v7, Lbpx;

    .line 5
    const-string v9, "DENSITY_TVDPI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbpx;->e:Lbpx;

    new-instance v9, Lbpx;

    .line 6
    const-string v11, "DENSITY_HDPI"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbpx;->f:Lbpx;

    new-instance v11, Lbpx;

    .line 7
    const-string v13, "DENSITY_XHDPI"

    const/4 v14, 0x6

    const/4 v15, 0x7

    invoke-direct {v11, v13, v14, v15}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbpx;->g:Lbpx;

    new-instance v13, Lbpx;

    .line 8
    const-string v14, "DENSITY_DPI400"

    const/16 v12, 0x8

    invoke-direct {v13, v14, v15, v12}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbpx;->h:Lbpx;

    new-instance v14, Lbpx;

    .line 9
    const-string v15, "DENSITY_XXHDPI"

    const/16 v10, 0x9

    invoke-direct {v14, v15, v12, v10}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbpx;->i:Lbpx;

    new-instance v15, Lbpx;

    .line 10
    const-string v12, "DENSITY_XXXHDPI"

    const/16 v8, 0xa

    invoke-direct {v15, v12, v10, v8}, Lbpx;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbpx;->j:Lbpx;

    new-array v8, v8, [Lbpx;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

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

    aput-object v14, v8, v0

    aput-object v15, v8, v10

    sput-object v8, Lbpx;->l:[Lbpx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbpx;->k:I

    return-void
.end method

.method public static a(I)Lbpx;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lbpx;->j:Lbpx;

    return-object p0

    :pswitch_2
    sget-object p0, Lbpx;->i:Lbpx;

    return-object p0

    :pswitch_3
    sget-object p0, Lbpx;->h:Lbpx;

    return-object p0

    :pswitch_4
    sget-object p0, Lbpx;->g:Lbpx;

    return-object p0

    :pswitch_5
    sget-object p0, Lbpx;->f:Lbpx;

    return-object p0

    :pswitch_6
    sget-object p0, Lbpx;->e:Lbpx;

    return-object p0

    :pswitch_7
    sget-object p0, Lbpx;->d:Lbpx;

    return-object p0

    :pswitch_8
    sget-object p0, Lbpx;->c:Lbpx;

    return-object p0

    :pswitch_9
    sget-object p0, Lbpx;->b:Lbpx;

    return-object p0

    :pswitch_a
    sget-object p0, Lbpx;->a:Lbpx;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lbpw;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbpx;
    .locals 1

    sget-object v0, Lbpx;->l:[Lbpx;

    .line 19
    invoke-virtual {v0}, [Lbpx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpx;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbpx;->k:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbpx;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lbpx;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
