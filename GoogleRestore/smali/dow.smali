.class public final enum Ldow;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldow;

.field public static final enum b:Ldow;

.field public static final enum c:Ldow;

.field public static final enum d:Ldow;

.field public static final enum e:Ldow;

.field public static final enum f:Ldow;

.field public static final enum g:Ldow;

.field public static final enum h:Ldow;

.field public static final i:Ldkg;

.field private static final synthetic k:[Ldow;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ldow;

    .line 1
    const-string v1, "DF_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldow;->a:Ldow;

    new-instance v1, Ldow;

    .line 2
    const-string v3, "DF_HTTPHEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldow;->b:Ldow;

    new-instance v3, Ldow;

    .line 3
    const-string v5, "DF_COOKIE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldow;->c:Ldow;

    new-instance v5, Ldow;

    .line 4
    const-string v7, "DF_URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldow;->d:Ldow;

    new-instance v7, Ldow;

    .line 5
    const-string v9, "DF_CGI_ARGS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldow;->e:Ldow;

    new-instance v9, Ldow;

    .line 6
    const-string v11, "DF_HOST_ORDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldow;->f:Ldow;

    new-instance v11, Ldow;

    .line 7
    const-string v13, "DF_BYTE_SWAPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldow;->g:Ldow;

    new-instance v13, Ldow;

    .line 8
    const-string v15, "DF_LOGGING_ELEMENT_TYPE_ID"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Ldow;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ldow;->h:Ldow;

    const/16 v15, 0x8

    new-array v15, v15, [Ldow;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Ldow;->k:[Ldow;

    new-instance v0, Ldov;

    invoke-direct {v0}, Ldov;-><init>()V

    sput-object v0, Ldow;->i:Ldkg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldow;->j:I

    return-void
.end method

.method public static a(I)Ldow;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Ldow;->h:Ldow;

    return-object p0

    :pswitch_1
    sget-object p0, Ldow;->g:Ldow;

    return-object p0

    :pswitch_2
    sget-object p0, Ldow;->f:Ldow;

    return-object p0

    :pswitch_3
    sget-object p0, Ldow;->e:Ldow;

    return-object p0

    :pswitch_4
    sget-object p0, Ldow;->d:Ldow;

    return-object p0

    :pswitch_5
    sget-object p0, Ldow;->c:Ldow;

    return-object p0

    :pswitch_6
    sget-object p0, Ldow;->b:Ldow;

    return-object p0

    :pswitch_7
    sget-object p0, Ldow;->a:Ldow;

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

.method public static values()[Ldow;
    .locals 1

    sget-object v0, Ldow;->k:[Ldow;

    .line 17
    invoke-virtual {v0}, [Ldow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldow;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldow;->j:I

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

    iget v1, p0, Ldow;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ldow;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
