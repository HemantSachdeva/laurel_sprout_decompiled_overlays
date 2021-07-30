.class public final enum Lemp;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lemp;

.field public static final enum b:Lemp;

.field public static final enum c:Lemp;

.field public static final enum d:Lemp;

.field public static final enum e:Lemp;

.field public static final enum f:Lemp;

.field public static final enum g:Lemp;

.field public static final enum h:Lemp;

.field public static final enum i:Lemp;

.field public static final enum j:Lemp;

.field public static final enum k:Lemp;

.field public static final enum l:Lemp;

.field public static final enum m:Lemp;

.field private static final synthetic o:[Lemp;


# instance fields
.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lemp;

    .line 1
    const-string v1, "REQUEST_FAILED_REASON_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lemp;->a:Lemp;

    new-instance v1, Lemp;

    .line 2
    const-string v3, "LISTENER_EXCEPTION_THROWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lemp;->b:Lemp;

    new-instance v3, Lemp;

    .line 3
    const-string v5, "HOSTNAME_NOT_RESOLVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lemp;->c:Lemp;

    new-instance v5, Lemp;

    .line 4
    const-string v7, "INTERNET_DISCONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lemp;->d:Lemp;

    new-instance v7, Lemp;

    .line 5
    const-string v9, "NETWORK_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lemp;->e:Lemp;

    new-instance v9, Lemp;

    .line 6
    const-string v11, "TIMED_OUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lemp;->f:Lemp;

    new-instance v11, Lemp;

    .line 7
    const-string v13, "CONNECTION_CLOSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lemp;->g:Lemp;

    new-instance v13, Lemp;

    .line 8
    const-string v15, "CONNECTION_TIMED_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lemp;->h:Lemp;

    new-instance v15, Lemp;

    .line 9
    const-string v14, "CONNECTION_REFUSED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lemp;->i:Lemp;

    new-instance v14, Lemp;

    .line 10
    const-string v12, "CONNECTION_RESET"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lemp;->j:Lemp;

    new-instance v12, Lemp;

    .line 11
    const-string v10, "ADDRESS_UNREACHABLE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lemp;->k:Lemp;

    new-instance v10, Lemp;

    .line 12
    const-string v8, "QUIC_PROTOCOL_FAILED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lemp;->l:Lemp;

    new-instance v8, Lemp;

    .line 13
    const-string v6, "OTHER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lemp;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lemp;->m:Lemp;

    const/16 v6, 0xd

    new-array v6, v6, [Lemp;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lemp;->o:[Lemp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lemp;->n:I

    return-void
.end method

.method public static a(I)Lemp;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lemp;->m:Lemp;

    return-object p0

    :pswitch_1
    sget-object p0, Lemp;->l:Lemp;

    return-object p0

    :pswitch_2
    sget-object p0, Lemp;->k:Lemp;

    return-object p0

    :pswitch_3
    sget-object p0, Lemp;->j:Lemp;

    return-object p0

    :pswitch_4
    sget-object p0, Lemp;->i:Lemp;

    return-object p0

    :pswitch_5
    sget-object p0, Lemp;->h:Lemp;

    return-object p0

    :pswitch_6
    sget-object p0, Lemp;->g:Lemp;

    return-object p0

    :pswitch_7
    sget-object p0, Lemp;->f:Lemp;

    return-object p0

    :pswitch_8
    sget-object p0, Lemp;->e:Lemp;

    return-object p0

    :pswitch_9
    sget-object p0, Lemp;->d:Lemp;

    return-object p0

    :pswitch_a
    sget-object p0, Lemp;->c:Lemp;

    return-object p0

    :pswitch_b
    sget-object p0, Lemp;->b:Lemp;

    return-object p0

    :pswitch_c
    sget-object p0, Lemp;->a:Lemp;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lemo;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lemp;
    .locals 1

    sget-object v0, Lemp;->o:[Lemp;

    .line 22
    invoke-virtual {v0}, [Lemp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lemp;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lemp;->n:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lemp;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lemp;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
