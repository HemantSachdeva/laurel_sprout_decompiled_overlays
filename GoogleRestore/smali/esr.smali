.class public final enum Lesr;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lesr;

.field public static final enum b:Lesr;

.field public static final enum c:Lesr;

.field public static final enum d:Lesr;

.field public static final enum e:Lesr;

.field public static final enum f:Lesr;

.field public static final enum g:Lesr;

.field public static final enum h:Lesr;

.field public static final enum i:Lesr;

.field public static final enum j:Lesr;

.field private static final synthetic l:[Lesr;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lesr;

    .line 1
    const-string v1, "REASON_UNSPECIFIED_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lesr;->a:Lesr;

    new-instance v1, Lesr;

    .line 2
    const-string v3, "TIMEOUT_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lesr;->b:Lesr;

    new-instance v3, Lesr;

    .line 3
    const-string v5, "TRANSIENT_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lesr;->c:Lesr;

    new-instance v5, Lesr;

    .line 4
    const-string v7, "NOT_FOUND_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lesr;->d:Lesr;

    new-instance v7, Lesr;

    .line 5
    const-string v9, "NOT_COMPATIBLE_WITH_DEVICE_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lesr;->e:Lesr;

    new-instance v9, Lesr;

    .line 6
    const-string v11, "NOT_APPROVED_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lesr;->f:Lesr;

    new-instance v11, Lesr;

    .line 7
    const-string v13, "PERMISSIONS_NOT_ACCEPTED_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lesr;->g:Lesr;

    new-instance v13, Lesr;

    .line 8
    const-string v15, "NOT_AVAILABLE_IN_COUNTRY_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lesr;->h:Lesr;

    new-instance v15, Lesr;

    .line 9
    const-string v14, "NO_LICENSES_REMAINING_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lesr;->i:Lesr;

    new-instance v14, Lesr;

    .line 10
    const-string v12, "NOT_ENROLLED_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lesr;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lesr;->j:Lesr;

    const/16 v12, 0xa

    new-array v12, v12, [Lesr;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lesr;->l:[Lesr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lesr;->k:I

    return-void
.end method

.method public static a(I)Lesr;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lesr;->j:Lesr;

    return-object p0

    :pswitch_1
    sget-object p0, Lesr;->i:Lesr;

    return-object p0

    :pswitch_2
    sget-object p0, Lesr;->h:Lesr;

    return-object p0

    :pswitch_3
    sget-object p0, Lesr;->g:Lesr;

    return-object p0

    :pswitch_4
    sget-object p0, Lesr;->f:Lesr;

    return-object p0

    :pswitch_5
    sget-object p0, Lesr;->e:Lesr;

    return-object p0

    :pswitch_6
    sget-object p0, Lesr;->d:Lesr;

    return-object p0

    :pswitch_7
    sget-object p0, Lesr;->c:Lesr;

    return-object p0

    :pswitch_8
    sget-object p0, Lesr;->b:Lesr;

    return-object p0

    :pswitch_9
    sget-object p0, Lesr;->a:Lesr;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lesq;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lesr;
    .locals 1

    sget-object v0, Lesr;->l:[Lesr;

    .line 19
    invoke-virtual {v0}, [Lesr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lesr;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lesr;->k:I

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

    iget v1, p0, Lesr;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lesr;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
