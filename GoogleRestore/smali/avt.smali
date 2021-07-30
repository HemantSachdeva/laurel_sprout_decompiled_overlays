.class public final enum Lavt;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lavt;

.field public static final enum b:Lavt;

.field public static final enum c:Lavt;

.field public static final enum d:Lavt;

.field public static final enum e:Lavt;

.field private static final synthetic g:[Lavt;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lavt;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lavt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lavt;->a:Lavt;

    new-instance v1, Lavt;

    .line 2
    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lavt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lavt;->b:Lavt;

    new-instance v3, Lavt;

    .line 3
    const-string v5, "CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lavt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lavt;->c:Lavt;

    new-instance v5, Lavt;

    .line 4
    const-string v7, "SHOULD_SYNC_KEY_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lavt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lavt;->d:Lavt;

    new-instance v7, Lavt;

    .line 5
    const-string v9, "AUTHENTICATION_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lavt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lavt;->e:Lavt;

    const/4 v9, 0x5

    new-array v9, v9, [Lavt;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lavt;->g:[Lavt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lavt;->f:I

    return-void
.end method

.method public static a(I)Lavt;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lavt;->e:Lavt;

    return-object p0

    :cond_1
    sget-object p0, Lavt;->d:Lavt;

    return-object p0

    :cond_2
    sget-object p0, Lavt;->c:Lavt;

    return-object p0

    :cond_3
    sget-object p0, Lavt;->b:Lavt;

    return-object p0

    :cond_4
    sget-object p0, Lavt;->a:Lavt;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lavs;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lavt;
    .locals 1

    sget-object v0, Lavt;->g:[Lavt;

    .line 14
    invoke-virtual {v0}, [Lavt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lavt;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lavt;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lavt;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lavt;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
