.class public final enum Lemr;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lemr;

.field public static final enum b:Lemr;

.field public static final enum c:Lemr;

.field public static final enum d:Lemr;

.field public static final enum e:Lemr;

.field public static final enum f:Lemr;

.field public static final enum g:Lemr;

.field public static final enum h:Lemr;

.field private static final synthetic j:[Lemr;


# instance fields
.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lemr;

    .line 1
    const-string v1, "REQUEST_NEGOTIATED_PROTOCOL_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lemr;->a:Lemr;

    new-instance v1, Lemr;

    .line 2
    const-string v3, "REQUEST_NEGOTIATED_PROTOCOL_HTTP11"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lemr;->b:Lemr;

    new-instance v3, Lemr;

    .line 3
    const-string v5, "REQUEST_NEGOTIATED_PROTOCOL_SPDY2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lemr;->c:Lemr;

    new-instance v5, Lemr;

    .line 4
    const-string v7, "REQUEST_NEGOTIATED_PROTOCOL_SPDY3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lemr;->d:Lemr;

    new-instance v7, Lemr;

    .line 5
    const-string v9, "REQUEST_NEGOTIATED_PROTOCOL_SPDY31"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lemr;->e:Lemr;

    new-instance v9, Lemr;

    .line 6
    const-string v11, "REQUEST_NEGOTIATED_PROTOCOL_SPDY4"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lemr;->f:Lemr;

    new-instance v11, Lemr;

    .line 7
    const-string v13, "REQUEST_NEGOTIATED_PROTOCOL_QUIC1_SPDY3"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lemr;->g:Lemr;

    new-instance v13, Lemr;

    .line 8
    const-string v15, "REQUEST_NEGOTIATED_PROTOCOL_HTTP2_QUIC43"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lemr;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lemr;->h:Lemr;

    const/16 v15, 0x8

    new-array v15, v15, [Lemr;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lemr;->j:[Lemr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lemr;->i:I

    return-void
.end method

.method public static a(I)Lemr;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lemr;->h:Lemr;

    return-object p0

    :pswitch_1
    sget-object p0, Lemr;->g:Lemr;

    return-object p0

    :pswitch_2
    sget-object p0, Lemr;->f:Lemr;

    return-object p0

    :pswitch_3
    sget-object p0, Lemr;->e:Lemr;

    return-object p0

    :pswitch_4
    sget-object p0, Lemr;->d:Lemr;

    return-object p0

    :pswitch_5
    sget-object p0, Lemr;->c:Lemr;

    return-object p0

    :pswitch_6
    sget-object p0, Lemr;->b:Lemr;

    return-object p0

    :pswitch_7
    sget-object p0, Lemr;->a:Lemr;

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

    sget-object v0, Lemq;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lemr;
    .locals 1

    sget-object v0, Lemr;->j:[Lemr;

    .line 17
    invoke-virtual {v0}, [Lemr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lemr;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lemr;->i:I

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

    iget v1, p0, Lemr;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lemr;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
