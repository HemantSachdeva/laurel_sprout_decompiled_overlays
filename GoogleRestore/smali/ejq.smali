.class public final enum Lejq;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lejq;

.field public static final enum b:Lejq;

.field public static final enum c:Lejq;

.field public static final enum d:Lejq;

.field public static final enum e:Lejq;

.field public static final enum f:Lejq;

.field public static final enum g:Lejq;

.field public static final enum h:Lejq;

.field public static final enum i:Lejq;

.field public static final enum j:Lejq;

.field public static final enum k:Lejq;

.field private static final synthetic m:[Lejq;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lejq;

    .line 1
    const-string v1, "LEVEL_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lejq;->a:Lejq;

    new-instance v1, Lejq;

    .line 2
    const-string v3, "FINEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lejq;->b:Lejq;

    new-instance v3, Lejq;

    .line 3
    const-string v5, "FINER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lejq;->c:Lejq;

    new-instance v5, Lejq;

    .line 4
    const-string v7, "FINE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lejq;->d:Lejq;

    new-instance v7, Lejq;

    .line 5
    const-string v9, "CONFIG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lejq;->e:Lejq;

    new-instance v9, Lejq;

    .line 6
    const-string v11, "INFO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lejq;->f:Lejq;

    new-instance v11, Lejq;

    .line 7
    const-string v13, "NOTICE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lejq;->g:Lejq;

    new-instance v13, Lejq;

    .line 8
    const-string v15, "WARNING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lejq;->h:Lejq;

    new-instance v15, Lejq;

    .line 9
    const-string v14, "ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lejq;->i:Lejq;

    new-instance v14, Lejq;

    .line 10
    const-string v12, "SEVERE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lejq;->j:Lejq;

    new-instance v12, Lejq;

    .line 11
    const-string v10, "FATAL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lejq;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lejq;->k:Lejq;

    const/16 v10, 0xb

    new-array v10, v10, [Lejq;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lejq;->m:[Lejq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lejq;->l:I

    return-void
.end method

.method public static a(I)Lejq;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lejq;->k:Lejq;

    return-object p0

    :pswitch_1
    sget-object p0, Lejq;->j:Lejq;

    return-object p0

    :pswitch_2
    sget-object p0, Lejq;->i:Lejq;

    return-object p0

    :pswitch_3
    sget-object p0, Lejq;->h:Lejq;

    return-object p0

    :pswitch_4
    sget-object p0, Lejq;->g:Lejq;

    return-object p0

    :pswitch_5
    sget-object p0, Lejq;->f:Lejq;

    return-object p0

    :pswitch_6
    sget-object p0, Lejq;->e:Lejq;

    return-object p0

    :pswitch_7
    sget-object p0, Lejq;->d:Lejq;

    return-object p0

    :pswitch_8
    sget-object p0, Lejq;->c:Lejq;

    return-object p0

    :pswitch_9
    sget-object p0, Lejq;->b:Lejq;

    return-object p0

    :pswitch_a
    sget-object p0, Lejq;->a:Lejq;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lejp;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lejq;
    .locals 1

    sget-object v0, Lejq;->m:[Lejq;

    .line 20
    invoke-virtual {v0}, [Lejq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lejq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lejq;->l:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lejq;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lejq;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
