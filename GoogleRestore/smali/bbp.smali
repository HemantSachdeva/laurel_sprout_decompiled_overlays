.class public final enum Lbbp;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbbp;

.field public static final enum b:Lbbp;

.field public static final enum c:Lbbp;

.field public static final enum d:Lbbp;

.field public static final enum e:Lbbp;

.field public static final enum f:Lbbp;

.field public static final enum g:Lbbp;

.field public static final enum h:Lbbp;

.field public static final enum i:Lbbp;

.field public static final enum j:Lbbp;

.field private static final synthetic l:[Lbbp;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbbp;

    .line 1
    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbbp;->a:Lbbp;

    new-instance v1, Lbbp;

    .line 2
    const-string v3, "DETECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbbp;->b:Lbbp;

    new-instance v3, Lbbp;

    .line 3
    const-string v5, "RISK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbbp;->c:Lbbp;

    new-instance v5, Lbbp;

    .line 4
    const-string v7, "OPEN_SETTINGS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbbp;->d:Lbbp;

    new-instance v7, Lbbp;

    .line 5
    const-string v9, "SELECT_MANAGEMENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbbp;->e:Lbbp;

    new-instance v9, Lbbp;

    .line 6
    const-string v11, "REMOVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbbp;->f:Lbbp;

    new-instance v11, Lbbp;

    .line 7
    const-string v13, "PASSCODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbbp;->g:Lbbp;

    new-instance v13, Lbbp;

    .line 8
    const-string v15, "CONFIRM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbbp;->h:Lbbp;

    new-instance v15, Lbbp;

    .line 9
    const-string v14, "VERIFYING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbbp;->i:Lbbp;

    new-instance v14, Lbbp;

    .line 10
    const-string v12, "NOT_REMOVED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lbbp;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbbp;->j:Lbbp;

    const/16 v12, 0xa

    new-array v12, v12, [Lbbp;

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

    sput-object v12, Lbbp;->l:[Lbbp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbbp;->k:I

    return-void
.end method

.method public static a(I)Lbbp;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lbbp;->j:Lbbp;

    return-object p0

    :pswitch_1
    sget-object p0, Lbbp;->i:Lbbp;

    return-object p0

    :pswitch_2
    sget-object p0, Lbbp;->h:Lbbp;

    return-object p0

    :pswitch_3
    sget-object p0, Lbbp;->g:Lbbp;

    return-object p0

    :pswitch_4
    sget-object p0, Lbbp;->f:Lbbp;

    return-object p0

    :pswitch_5
    sget-object p0, Lbbp;->e:Lbbp;

    return-object p0

    :pswitch_6
    sget-object p0, Lbbp;->d:Lbbp;

    return-object p0

    :pswitch_7
    sget-object p0, Lbbp;->c:Lbbp;

    return-object p0

    :pswitch_8
    sget-object p0, Lbbp;->b:Lbbp;

    return-object p0

    :pswitch_9
    sget-object p0, Lbbp;->a:Lbbp;

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

    sget-object v0, Lbbo;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbbp;
    .locals 1

    sget-object v0, Lbbp;->l:[Lbbp;

    .line 19
    invoke-virtual {v0}, [Lbbp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbbp;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbbp;->k:I

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

    iget v1, p0, Lbbp;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lbbp;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
