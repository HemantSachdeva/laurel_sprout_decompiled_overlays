.class public final enum Lcoq;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lcoq;

.field public static final enum b:Lcoq;

.field public static final enum c:Lcoq;

.field public static final enum d:Lcoq;

.field public static final enum e:Lcoq;

.field public static final enum f:Lcoq;

.field public static final enum g:Lcoq;

.field public static final enum h:Lcoq;

.field public static final enum i:Lcoq;

.field public static final enum j:Lcoq;

.field private static final synthetic l:[Lcoq;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcoq;

    .line 1
    const-string v1, "UNKNOWN_PROTOCOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcoq;->a:Lcoq;

    new-instance v1, Lcoq;

    .line 2
    const-string v3, "GOOGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcoq;->b:Lcoq;

    new-instance v3, Lcoq;

    .line 3
    const-string v5, "IMAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcoq;->c:Lcoq;

    new-instance v5, Lcoq;

    .line 4
    const-string v7, "EXCHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcoq;->d:Lcoq;

    new-instance v7, Lcoq;

    .line 5
    const-string v9, "POP3"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcoq;->e:Lcoq;

    new-instance v9, Lcoq;

    .line 6
    const-string v11, "GMAIL_LEGACY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcoq;->f:Lcoq;

    new-instance v11, Lcoq;

    .line 7
    const-string v13, "EXCHANGE_LEGACY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcoq;->g:Lcoq;

    new-instance v13, Lcoq;

    .line 8
    const-string v15, "IMAP_LEGACY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcoq;->h:Lcoq;

    new-instance v15, Lcoq;

    .line 9
    const-string v14, "POP3_LEGACY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcoq;->i:Lcoq;

    new-instance v14, Lcoq;

    .line 10
    const-string v12, "ALL_PROTOCOLS"

    const/16 v10, 0x9

    const/16 v8, 0x64

    invoke-direct {v14, v12, v10, v8}, Lcoq;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcoq;->j:Lcoq;

    const/16 v8, 0xa

    new-array v8, v8, [Lcoq;

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

    aput-object v15, v8, v0

    aput-object v14, v8, v10

    sput-object v8, Lcoq;->l:[Lcoq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcoq;->k:I

    return-void
.end method

.method public static a(I)Lcoq;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcoq;->i:Lcoq;

    return-object p0

    :pswitch_1
    sget-object p0, Lcoq;->h:Lcoq;

    return-object p0

    :pswitch_2
    sget-object p0, Lcoq;->g:Lcoq;

    return-object p0

    :pswitch_3
    sget-object p0, Lcoq;->f:Lcoq;

    return-object p0

    :pswitch_4
    sget-object p0, Lcoq;->e:Lcoq;

    return-object p0

    :pswitch_5
    sget-object p0, Lcoq;->d:Lcoq;

    return-object p0

    :pswitch_6
    sget-object p0, Lcoq;->c:Lcoq;

    return-object p0

    :pswitch_7
    sget-object p0, Lcoq;->b:Lcoq;

    return-object p0

    :pswitch_8
    sget-object p0, Lcoq;->a:Lcoq;

    return-object p0

    :cond_0
    sget-object p0, Lcoq;->j:Lcoq;

    return-object p0

    nop

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

    sget-object v0, Lcop;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lcoq;
    .locals 1

    sget-object v0, Lcoq;->l:[Lcoq;

    .line 19
    invoke-virtual {v0}, [Lcoq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoq;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcoq;->k:I

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

    iget v1, p0, Lcoq;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcoq;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
