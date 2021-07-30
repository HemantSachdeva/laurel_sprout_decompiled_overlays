.class public final enum Laab;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Laab;

.field public static final enum b:Laab;

.field public static final enum c:Laab;

.field public static final enum d:Laab;

.field public static final enum e:Laab;

.field public static final enum f:Laab;

.field public static final enum g:Laab;

.field public static final enum h:Laab;

.field public static final enum i:Laab;

.field public static final enum j:Laab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum k:Laab;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final synthetic m:[Laab;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Laab;

    .line 1
    const-string v1, "UNKNOWN_ANNOTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laab;->a:Laab;

    new-instance v1, Laab;

    .line 2
    const-string v3, "IS_TABLET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v1, Laab;->b:Laab;

    new-instance v3, Laab;

    .line 3
    const-string v5, "IS_NATIVE_SAPI"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v3, Laab;->c:Laab;

    new-instance v5, Laab;

    .line 4
    const-string v8, "IS_VIEWIFIED_CONV"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v7, v9}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v5, Laab;->d:Laab;

    new-instance v8, Laab;

    .line 5
    const-string v10, "IS_FIRST_SAVE"

    const/4 v11, 0x6

    invoke-direct {v8, v10, v9, v11}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v8, Laab;->e:Laab;

    new-instance v10, Laab;

    .line 6
    const-string v12, "IS_DARK_THEME_ACTIVE"

    const/4 v13, 0x5

    const/4 v14, 0x7

    invoke-direct {v10, v12, v13, v14}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v10, Laab;->f:Laab;

    new-instance v12, Laab;

    .line 7
    const-string v15, "IS_PURCHASES_IN_GMAIL_ACTIVE"

    const/16 v9, 0x8

    invoke-direct {v12, v15, v11, v9}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v12, Laab;->g:Laab;

    new-instance v15, Laab;

    .line 8
    const-string v11, "IS_TRAVEL_IN_GMAIL_ACTIVE"

    const/16 v7, 0x9

    invoke-direct {v15, v11, v14, v7}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v15, Laab;->h:Laab;

    new-instance v11, Laab;

    .line 9
    const-string v14, "IS_GENERIC_SMARTMAIL_CARDS_ACTIVE"

    const/16 v4, 0xa

    invoke-direct {v11, v14, v9, v4}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v11, Laab;->i:Laab;

    new-instance v14, Laab;

    .line 10
    const-string v9, "EXPERIMENT_START_ADS_BEFORE_CRITICAL_STARTUP"

    invoke-direct {v14, v9, v7, v6}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v14, Laab;->j:Laab;

    new-instance v9, Laab;

    .line 11
    const-string v7, "IS_TRAVEL"

    invoke-direct {v9, v7, v4, v13}, Laab;-><init>(Ljava/lang/String;II)V

    sput-object v9, Laab;->k:Laab;

    const/16 v7, 0xb

    new-array v7, v7, [Laab;

    aput-object v0, v7, v2

    const/4 v0, 0x1

    aput-object v1, v7, v0

    aput-object v3, v7, v6

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    aput-object v10, v7, v13

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v15, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    const/16 v0, 0x9

    aput-object v14, v7, v0

    aput-object v9, v7, v4

    sput-object v7, Laab;->m:[Laab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laab;->l:I

    return-void
.end method

.method public static a(I)Laab;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Laab;->i:Laab;

    return-object p0

    :pswitch_1
    sget-object p0, Laab;->h:Laab;

    return-object p0

    :pswitch_2
    sget-object p0, Laab;->g:Laab;

    return-object p0

    :pswitch_3
    sget-object p0, Laab;->f:Laab;

    return-object p0

    :pswitch_4
    sget-object p0, Laab;->e:Laab;

    return-object p0

    :pswitch_5
    sget-object p0, Laab;->k:Laab;

    return-object p0

    :pswitch_6
    sget-object p0, Laab;->d:Laab;

    return-object p0

    :pswitch_7
    sget-object p0, Laab;->c:Laab;

    return-object p0

    :pswitch_8
    sget-object p0, Laab;->j:Laab;

    return-object p0

    :pswitch_9
    sget-object p0, Laab;->b:Laab;

    return-object p0

    :pswitch_a
    sget-object p0, Laab;->a:Laab;

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

    sget-object v0, Laaa;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Laab;
    .locals 1

    sget-object v0, Laab;->m:[Laab;

    .line 20
    invoke-virtual {v0}, [Laab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laab;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Laab;->l:I

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

    iget v1, p0, Laab;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Laab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
