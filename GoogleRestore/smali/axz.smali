.class public final enum Laxz;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Laxz;

.field public static final enum b:Laxz;

.field public static final enum c:Laxz;

.field public static final enum d:Laxz;

.field private static final synthetic f:[Laxz;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Laxz;

    .line 1
    const-string v1, "UNKNOWN_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Laxz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxz;->a:Laxz;

    new-instance v1, Laxz;

    .line 2
    const-string v3, "TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Laxz;-><init>(Ljava/lang/String;II)V

    sput-object v1, Laxz;->b:Laxz;

    new-instance v3, Laxz;

    .line 3
    const-string v5, "EXCEPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Laxz;-><init>(Ljava/lang/String;II)V

    sput-object v3, Laxz;->c:Laxz;

    new-instance v5, Laxz;

    .line 4
    const-string v7, "CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Laxz;-><init>(Ljava/lang/String;II)V

    sput-object v5, Laxz;->d:Laxz;

    const/4 v7, 0x4

    new-array v7, v7, [Laxz;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Laxz;->f:[Laxz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laxz;->e:I

    return-void
.end method

.method public static a(I)Laxz;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Laxz;->d:Laxz;

    return-object p0

    :cond_1
    sget-object p0, Laxz;->c:Laxz;

    return-object p0

    :cond_2
    sget-object p0, Laxz;->b:Laxz;

    return-object p0

    :cond_3
    sget-object p0, Laxz;->a:Laxz;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Laxy;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Laxz;
    .locals 1

    sget-object v0, Laxz;->f:[Laxz;

    .line 13
    invoke-virtual {v0}, [Laxz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxz;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Laxz;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laxz;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Laxz;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
