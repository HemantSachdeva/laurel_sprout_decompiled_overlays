.class public final enum Lawk;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lawk;

.field public static final enum b:Lawk;

.field public static final enum c:Lawk;

.field public static final enum d:Lawk;

.field public static final enum e:Lawk;

.field public static final enum f:Lawk;

.field public static final enum g:Lawk;

.field public static final enum h:Lawk;

.field public static final enum i:Lawk;

.field public static final enum j:Lawk;

.field public static final enum k:Lawk;

.field public static final enum l:Lawk;

.field private static final synthetic n:[Lawk;


# instance fields
.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lawk;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lawk;->a:Lawk;

    new-instance v1, Lawk;

    .line 2
    const-string v3, "CREATE_FRAGMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lawk;->b:Lawk;

    new-instance v3, Lawk;

    .line 3
    const-string v5, "TOGGLE_BACKUP_ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lawk;->c:Lawk;

    new-instance v5, Lawk;

    .line 4
    const-string v7, "TOGGLE_BACKUP_OFF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lawk;->d:Lawk;

    new-instance v7, Lawk;

    .line 5
    const-string v9, "CHANGE_BACKUP_ACCOUNT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lawk;->e:Lawk;

    new-instance v9, Lawk;

    .line 6
    const-string v11, "BACKUP_ITEM_TAP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lawk;->f:Lawk;

    new-instance v11, Lawk;

    .line 7
    const-string v13, "AUTO_RESTORE_TOGGLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lawk;->g:Lawk;

    new-instance v13, Lawk;

    .line 8
    const-string v15, "BACK_UP_NOW_TAP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lawk;->h:Lawk;

    new-instance v15, Lawk;

    .line 9
    const-string v14, "MOBILE_DATA_SETTINGS_ON"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lawk;->i:Lawk;

    new-instance v14, Lawk;

    .line 10
    const-string v12, "MOBILE_DATA_SETTINGS_OFF"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lawk;->j:Lawk;

    new-instance v12, Lawk;

    .line 11
    const-string v10, "BACK_UP_NOW_BUTTON_DISABLED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lawk;->k:Lawk;

    new-instance v10, Lawk;

    .line 12
    const-string v8, "BACK_UP_NOW_UNLOCK"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lawk;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lawk;->l:Lawk;

    const/16 v8, 0xc

    new-array v8, v8, [Lawk;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

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

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lawk;->n:[Lawk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lawk;->m:I

    return-void
.end method

.method public static a(I)Lawk;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lawk;->l:Lawk;

    return-object p0

    :pswitch_1
    sget-object p0, Lawk;->k:Lawk;

    return-object p0

    :pswitch_2
    sget-object p0, Lawk;->j:Lawk;

    return-object p0

    :pswitch_3
    sget-object p0, Lawk;->i:Lawk;

    return-object p0

    :pswitch_4
    sget-object p0, Lawk;->h:Lawk;

    return-object p0

    :pswitch_5
    sget-object p0, Lawk;->g:Lawk;

    return-object p0

    :pswitch_6
    sget-object p0, Lawk;->f:Lawk;

    return-object p0

    :pswitch_7
    sget-object p0, Lawk;->e:Lawk;

    return-object p0

    :pswitch_8
    sget-object p0, Lawk;->d:Lawk;

    return-object p0

    :pswitch_9
    sget-object p0, Lawk;->c:Lawk;

    return-object p0

    :pswitch_a
    sget-object p0, Lawk;->b:Lawk;

    return-object p0

    :pswitch_b
    sget-object p0, Lawk;->a:Lawk;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lawj;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lawk;
    .locals 1

    sget-object v0, Lawk;->n:[Lawk;

    .line 21
    invoke-virtual {v0}, [Lawk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawk;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lawk;->m:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lawk;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lawk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
