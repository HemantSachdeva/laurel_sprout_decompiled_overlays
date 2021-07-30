.class public final enum Layh;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Layh;

.field public static final enum b:Layh;

.field public static final enum c:Layh;

.field public static final enum d:Layh;

.field public static final enum e:Layh;

.field public static final enum f:Layh;

.field public static final enum g:Layh;

.field public static final enum h:Layh;

.field public static final enum i:Layh;

.field public static final enum j:Layh;

.field public static final enum k:Layh;

.field private static final synthetic m:[Layh;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Layh;

    .line 1
    const-string v1, "INELIGIBILITY_REASON_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Layh;->a:Layh;

    new-instance v1, Layh;

    .line 2
    const-string v3, "BLACKLISTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Layh;->b:Layh;

    new-instance v3, Layh;

    .line 3
    const-string v5, "FULL_MIN_SDK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Layh;->c:Layh;

    new-instance v5, Layh;

    .line 4
    const-string v7, "KV_NO_AGENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v5, Layh;->d:Layh;

    new-instance v7, Layh;

    .line 5
    const-string v9, "KV_FULL_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v7, Layh;->e:Layh;

    new-instance v9, Layh;

    .line 6
    const-string v11, "SIDEWINDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v9, Layh;->f:Layh;

    new-instance v11, Layh;

    .line 7
    const-string v13, "DOLLY_CONSENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v11, Layh;->g:Layh;

    new-instance v13, Layh;

    .line 8
    const-string v15, "PACKAGE_CONSENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v13, Layh;->h:Layh;

    new-instance v15, Layh;

    .line 9
    const-string v14, "FIRST_PARTY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v15, Layh;->i:Layh;

    new-instance v14, Layh;

    .line 10
    const-string v12, "GCM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v14, Layh;->j:Layh;

    new-instance v12, Layh;

    .line 11
    const-string v10, "UNSELECTED_CLOUD_RESTORE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Layh;-><init>(Ljava/lang/String;II)V

    sput-object v12, Layh;->k:Layh;

    const/16 v10, 0xb

    new-array v10, v10, [Layh;

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

    sput-object v10, Layh;->m:[Layh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Layh;->l:I

    return-void
.end method

.method public static a(I)Layh;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Layh;->k:Layh;

    return-object p0

    :pswitch_1
    sget-object p0, Layh;->j:Layh;

    return-object p0

    :pswitch_2
    sget-object p0, Layh;->i:Layh;

    return-object p0

    :pswitch_3
    sget-object p0, Layh;->h:Layh;

    return-object p0

    :pswitch_4
    sget-object p0, Layh;->g:Layh;

    return-object p0

    :pswitch_5
    sget-object p0, Layh;->f:Layh;

    return-object p0

    :pswitch_6
    sget-object p0, Layh;->e:Layh;

    return-object p0

    :pswitch_7
    sget-object p0, Layh;->d:Layh;

    return-object p0

    :pswitch_8
    sget-object p0, Layh;->c:Layh;

    return-object p0

    :pswitch_9
    sget-object p0, Layh;->b:Layh;

    return-object p0

    :pswitch_a
    sget-object p0, Layh;->a:Layh;

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

    sget-object v0, Layg;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Layh;
    .locals 1

    sget-object v0, Layh;->m:[Layh;

    .line 20
    invoke-virtual {v0}, [Layh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Layh;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Layh;->l:I

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

    iget v1, p0, Layh;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Layh;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
