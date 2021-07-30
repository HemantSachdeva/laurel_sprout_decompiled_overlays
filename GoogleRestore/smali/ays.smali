.class public final enum Lays;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lays;

.field public static final enum b:Lays;

.field public static final enum c:Lays;

.field public static final enum d:Lays;

.field public static final enum e:Lays;

.field public static final enum f:Lays;

.field public static final enum g:Lays;

.field public static final enum h:Lays;

.field public static final enum i:Lays;

.field public static final enum j:Lays;

.field private static final synthetic l:[Lays;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lays;

    .line 1
    const-string v1, "MMS_BACKUP_UNSPECIFIED_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lays;->a:Lays;

    new-instance v1, Lays;

    .line 2
    const-string v3, "MMS_BACKUP_NOT_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lays;->b:Lays;

    new-instance v3, Lays;

    .line 3
    const-string v5, "ANDROID_BACKUP_NOT_ENABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lays;->c:Lays;

    new-instance v5, Lays;

    .line 4
    const-string v7, "ANDROID_VERSION_EARLIER_THAN_N"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lays;->d:Lays;

    new-instance v7, Lays;

    .line 5
    const-string v9, "MMS_BACKUP_REQUESTED_NON_G1_ACCOUNT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lays;->e:Lays;

    new-instance v9, Lays;

    .line 6
    const-string v11, "MMS_BACKUP_REQUESTED_DASHER_ACCOUNT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lays;->f:Lays;

    new-instance v11, Lays;

    .line 7
    const-string v13, "MMS_BACKUP_REQUESTED_UNICORN_ACCOUNT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lays;->g:Lays;

    new-instance v13, Lays;

    .line 8
    const-string v15, "ERROR_QUERYING_ACCOUNT_STATUS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lays;->h:Lays;

    new-instance v15, Lays;

    .line 9
    const-string v14, "ERROR_CREATING_NEW_BACKUP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lays;->i:Lays;

    new-instance v14, Lays;

    .line 10
    const-string v12, "ERROR_LISTING_FILES_FROM_BACKUP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lays;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lays;->j:Lays;

    const/16 v12, 0xa

    new-array v12, v12, [Lays;

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

    sput-object v12, Lays;->l:[Lays;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lays;->k:I

    return-void
.end method

.method public static a(I)Lays;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lays;->j:Lays;

    return-object p0

    :pswitch_1
    sget-object p0, Lays;->i:Lays;

    return-object p0

    :pswitch_2
    sget-object p0, Lays;->h:Lays;

    return-object p0

    :pswitch_3
    sget-object p0, Lays;->g:Lays;

    return-object p0

    :pswitch_4
    sget-object p0, Lays;->f:Lays;

    return-object p0

    :pswitch_5
    sget-object p0, Lays;->e:Lays;

    return-object p0

    :pswitch_6
    sget-object p0, Lays;->d:Lays;

    return-object p0

    :pswitch_7
    sget-object p0, Lays;->c:Lays;

    return-object p0

    :pswitch_8
    sget-object p0, Lays;->b:Lays;

    return-object p0

    :pswitch_9
    sget-object p0, Lays;->a:Lays;

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

    sget-object v0, Layr;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lays;
    .locals 1

    sget-object v0, Lays;->l:[Lays;

    .line 19
    invoke-virtual {v0}, [Lays;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lays;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lays;->k:I

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

    iget v1, p0, Lays;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lays;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
