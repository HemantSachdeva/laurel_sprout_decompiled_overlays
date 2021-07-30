.class public final enum Lban;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lban;

.field public static final enum b:Lban;

.field public static final enum c:Lban;

.field public static final enum d:Lban;

.field public static final enum e:Lban;

.field public static final enum f:Lban;

.field public static final enum g:Lban;

.field public static final enum h:Lban;

.field private static final synthetic j:[Lban;


# instance fields
.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lban;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lban;->a:Lban;

    new-instance v1, Lban;

    .line 2
    const-string v3, "IOS_SESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lban;->b:Lban;

    new-instance v3, Lban;

    .line 3
    const-string v5, "ANDROID_USB_SOURCE_SESSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lban;->c:Lban;

    new-instance v5, Lban;

    .line 4
    const-string v7, "ANDROID_USB_TARGET_SESSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lban;->d:Lban;

    new-instance v7, Lban;

    .line 5
    const-string v9, "APP_FETCHING_SESSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lban;->e:Lban;

    new-instance v9, Lban;

    .line 6
    const-string v11, "OPT_IN_SESSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lban;->f:Lban;

    new-instance v11, Lban;

    .line 7
    const-string v13, "ANDROID_WIFI_SOURCE_SESSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lban;->g:Lban;

    new-instance v13, Lban;

    .line 8
    const-string v15, "ANDROID_WIFI_TARGET_SESSION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lban;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lban;->h:Lban;

    const/16 v15, 0x8

    new-array v15, v15, [Lban;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lban;->j:[Lban;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lban;->i:I

    return-void
.end method

.method public static values()[Lban;
    .locals 1

    sget-object v0, Lban;->j:[Lban;

    .line 17
    invoke-virtual {v0}, [Lban;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lban;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lban;->i:I

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

    iget v1, p0, Lban;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lban;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
