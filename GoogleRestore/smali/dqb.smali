.class public final enum Ldqb;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldqb;

.field public static final enum b:Ldqb;

.field public static final enum c:Ldqb;

.field public static final enum d:Ldqb;

.field public static final enum e:Ldqb;

.field public static final enum f:Ldqb;

.field public static final enum g:Ldqb;

.field public static final enum h:Ldqb;

.field private static final synthetic j:[Ldqb;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ldqb;

    .line 1
    const-string v1, "CLIENT_ID_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldqb;->a:Ldqb;

    new-instance v1, Ldqb;

    .line 2
    const-string v3, "CLIENT_ID_G1_ANDROID_APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldqb;->b:Ldqb;

    new-instance v3, Ldqb;

    .line 3
    const-string v5, "CLIENT_ID_GMSCORE_BACKUP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldqb;->c:Ldqb;

    new-instance v5, Ldqb;

    .line 4
    const-string v7, "CLIENT_ID_DRIVE_BACKUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldqb;->d:Ldqb;

    new-instance v7, Ldqb;

    .line 5
    const-string v9, "CLIENT_ID_MANUAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldqb;->e:Ldqb;

    new-instance v9, Ldqb;

    .line 6
    const-string v11, "CLIENT_ID_PROBER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldqb;->f:Ldqb;

    new-instance v11, Ldqb;

    .line 7
    const-string v13, "CLIENT_ID_PIXELMIGRATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldqb;->g:Ldqb;

    new-instance v13, Ldqb;

    .line 8
    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Ldqb;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ldqb;->h:Ldqb;

    const/16 v12, 0x8

    new-array v12, v12, [Ldqb;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Ldqb;->j:[Ldqb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldqb;->i:I

    return-void
.end method

.method public static values()[Ldqb;
    .locals 1

    sget-object v0, Ldqb;->j:[Ldqb;

    .line 18
    invoke-virtual {v0}, [Ldqb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldqb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget-object v0, Ldqb;->h:Ldqb;

    if-eq p0, v0, :cond_0

    .line 10
    iget v0, p0, Ldqb;->i:I

    return v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ldqb;->h:Ldqb;

    if-eq p0, v1, :cond_0

    .line 15
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldqb;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    nop

    .line 16
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ldqb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
