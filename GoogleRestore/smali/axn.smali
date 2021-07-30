.class public final enum Laxn;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Laxn;

.field public static final enum b:Laxn;

.field public static final enum c:Laxn;

.field public static final enum d:Laxn;

.field public static final enum e:Laxn;

.field public static final enum f:Laxn;

.field public static final enum g:Laxn;

.field public static final enum h:Laxn;

.field private static final synthetic j:[Laxn;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Laxn;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxn;->a:Laxn;

    new-instance v1, Laxn;

    .line 2
    const-string v3, "DEVICE_BACKUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Laxn;->b:Laxn;

    new-instance v3, Laxn;

    .line 3
    const-string v5, "TOGGLE_BACKUP_SETTINGS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v3, Laxn;->c:Laxn;

    new-instance v5, Laxn;

    .line 4
    const-string v7, "APPS_BACKUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v5, Laxn;->d:Laxn;

    new-instance v7, Laxn;

    .line 5
    const-string v9, "DRIVE_BACKUP_SETTINGS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v7, Laxn;->e:Laxn;

    new-instance v9, Laxn;

    .line 6
    const-string v11, "BACKUP_SETTINGS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v9, Laxn;->f:Laxn;

    new-instance v11, Laxn;

    .line 7
    const-string v13, "BACKUP_AND_RESET"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v11, Laxn;->g:Laxn;

    new-instance v13, Laxn;

    .line 8
    const-string v15, "DEVICE_BACKUP_DETAIL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Laxn;-><init>(Ljava/lang/String;II)V

    sput-object v13, Laxn;->h:Laxn;

    const/16 v15, 0x8

    new-array v15, v15, [Laxn;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Laxn;->j:[Laxn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laxn;->i:I

    return-void
.end method

.method public static a(I)Laxn;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Laxn;->h:Laxn;

    return-object p0

    :pswitch_1
    sget-object p0, Laxn;->g:Laxn;

    return-object p0

    :pswitch_2
    sget-object p0, Laxn;->f:Laxn;

    return-object p0

    :pswitch_3
    sget-object p0, Laxn;->e:Laxn;

    return-object p0

    :pswitch_4
    sget-object p0, Laxn;->d:Laxn;

    return-object p0

    :pswitch_5
    sget-object p0, Laxn;->c:Laxn;

    return-object p0

    :pswitch_6
    sget-object p0, Laxn;->b:Laxn;

    return-object p0

    :pswitch_7
    sget-object p0, Laxn;->a:Laxn;

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

    sget-object v0, Laxm;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Laxn;
    .locals 1

    sget-object v0, Laxn;->j:[Laxn;

    .line 17
    invoke-virtual {v0}, [Laxn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxn;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Laxn;->i:I

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

    iget v1, p0, Laxn;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Laxn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
