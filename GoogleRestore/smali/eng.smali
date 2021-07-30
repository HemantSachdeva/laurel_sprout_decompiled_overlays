.class public final enum Leng;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Leng;

.field public static final enum b:Leng;

.field public static final enum c:Leng;

.field public static final enum d:Leng;

.field public static final enum e:Leng;

.field public static final enum f:Leng;

.field public static final enum g:Leng;

.field public static final enum h:Leng;

.field private static final synthetic j:[Leng;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Leng;

    .line 1
    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v0, Leng;->a:Leng;

    new-instance v1, Leng;

    .line 2
    const-string v4, "CHAR"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v1, Leng;->b:Leng;

    new-instance v4, Leng;

    .line 3
    const-string v7, "FLOAT"

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-direct {v4, v7, v8, v9}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v4, Leng;->c:Leng;

    new-instance v7, Leng;

    .line 4
    const-string v10, "DOUBLE"

    const/4 v11, 0x3

    const/4 v12, 0x7

    invoke-direct {v7, v10, v11, v12}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v7, Leng;->d:Leng;

    new-instance v10, Leng;

    .line 5
    const-string v13, "BYTE"

    const/16 v14, 0x8

    invoke-direct {v10, v13, v3, v14}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v10, Leng;->e:Leng;

    new-instance v13, Leng;

    .line 6
    const-string v15, "SHORT"

    const/16 v3, 0x9

    invoke-direct {v13, v15, v6, v3}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v13, Leng;->f:Leng;

    new-instance v3, Leng;

    .line 7
    const-string v15, "INT"

    const/16 v6, 0xa

    invoke-direct {v3, v15, v9, v6}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v3, Leng;->g:Leng;

    new-instance v6, Leng;

    .line 8
    const-string v15, "LONG"

    const/16 v9, 0xb

    invoke-direct {v6, v15, v12, v9}, Leng;-><init>(Ljava/lang/String;II)V

    sput-object v6, Leng;->h:Leng;

    new-array v9, v14, [Leng;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v8

    aput-object v7, v9, v11

    const/4 v0, 0x4

    aput-object v10, v9, v0

    const/4 v0, 0x5

    aput-object v13, v9, v0

    const/4 v0, 0x6

    aput-object v3, v9, v0

    aput-object v6, v9, v12

    sput-object v9, Leng;->j:[Leng;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Leng;->i:I

    return-void
.end method

.method public static a(I)Leng;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Leng;->h:Leng;

    return-object p0

    :pswitch_1
    sget-object p0, Leng;->g:Leng;

    return-object p0

    :pswitch_2
    sget-object p0, Leng;->f:Leng;

    return-object p0

    :pswitch_3
    sget-object p0, Leng;->e:Leng;

    return-object p0

    :pswitch_4
    sget-object p0, Leng;->d:Leng;

    return-object p0

    :pswitch_5
    sget-object p0, Leng;->c:Leng;

    return-object p0

    :pswitch_6
    sget-object p0, Leng;->b:Leng;

    return-object p0

    :pswitch_7
    sget-object p0, Leng;->a:Leng;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
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

    sget-object v0, Lenf;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Leng;
    .locals 1

    sget-object v0, Leng;->j:[Leng;

    .line 17
    invoke-virtual {v0}, [Leng;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leng;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Leng;->i:I

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

    iget v1, p0, Leng;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Leng;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
