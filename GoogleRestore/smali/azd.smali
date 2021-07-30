.class public final enum Lazd;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lazd;

.field public static final enum b:Lazd;

.field public static final enum c:Lazd;

.field public static final enum d:Lazd;

.field public static final enum e:Lazd;

.field public static final enum f:Lazd;

.field public static final enum g:Lazd;

.field public static final enum h:Lazd;

.field public static final enum i:Lazd;

.field public static final enum j:Lazd;

.field private static final synthetic l:[Lazd;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lazd;

    .line 1
    const-string v1, "MMS_RESTORE_UNSPECIFIED_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lazd;->a:Lazd;

    new-instance v1, Lazd;

    .line 2
    const-string v3, "MMS_RESTORE_NOT_ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lazd;->b:Lazd;

    new-instance v3, Lazd;

    .line 3
    const-string v5, "MMS_RESTORE_ALREADY_FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lazd;->c:Lazd;

    new-instance v5, Lazd;

    .line 4
    const-string v7, "MMS_RESTORE_NO_ANCESTOR_ID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lazd;->d:Lazd;

    new-instance v7, Lazd;

    .line 5
    const-string v9, "MMS_RESTORE_NOT_ENOUGH_SPACE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lazd;->e:Lazd;

    new-instance v9, Lazd;

    .line 6
    const-string v11, "MMS_RESTORE_UNABLE_TO_FINISH_DOWNLOADING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lazd;->f:Lazd;

    new-instance v11, Lazd;

    .line 7
    const-string v13, "MMS_RESTORE_BUGLE_APP_NEEDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lazd;->g:Lazd;

    new-instance v13, Lazd;

    .line 8
    const-string v15, "MMS_RESTORE_BUGLE_APP_NOT_GOOGLE_SIGNED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lazd;->h:Lazd;

    new-instance v15, Lazd;

    .line 9
    const-string v14, "MMS_RESTORE_UNABLE_TO_LIST_FILES_IN_MANIFEST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lazd;->i:Lazd;

    new-instance v14, Lazd;

    .line 10
    const-string v12, "MMS_RESTORE_REQUESTED_FOR_NON_G1_MEMBER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lazd;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lazd;->j:Lazd;

    const/16 v12, 0xa

    new-array v12, v12, [Lazd;

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

    sput-object v12, Lazd;->l:[Lazd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lazd;->k:I

    return-void
.end method

.method public static a(I)Lazd;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lazd;->j:Lazd;

    return-object p0

    :pswitch_1
    sget-object p0, Lazd;->i:Lazd;

    return-object p0

    :pswitch_2
    sget-object p0, Lazd;->h:Lazd;

    return-object p0

    :pswitch_3
    sget-object p0, Lazd;->g:Lazd;

    return-object p0

    :pswitch_4
    sget-object p0, Lazd;->f:Lazd;

    return-object p0

    :pswitch_5
    sget-object p0, Lazd;->e:Lazd;

    return-object p0

    :pswitch_6
    sget-object p0, Lazd;->d:Lazd;

    return-object p0

    :pswitch_7
    sget-object p0, Lazd;->c:Lazd;

    return-object p0

    :pswitch_8
    sget-object p0, Lazd;->b:Lazd;

    return-object p0

    :pswitch_9
    sget-object p0, Lazd;->a:Lazd;

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

    sget-object v0, Lazc;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lazd;
    .locals 1

    sget-object v0, Lazd;->l:[Lazd;

    .line 19
    invoke-virtual {v0}, [Lazd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lazd;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lazd;->k:I

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

    iget v1, p0, Lazd;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lazd;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
