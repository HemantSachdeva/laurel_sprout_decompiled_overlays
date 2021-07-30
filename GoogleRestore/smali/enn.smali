.class public final enum Lenn;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lenn;

.field public static final enum b:Lenn;

.field public static final enum c:Lenn;

.field public static final enum d:Lenn;

.field private static final synthetic f:[Lenn;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lenn;

    .line 1
    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lenn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lenn;->a:Lenn;

    new-instance v1, Lenn;

    .line 2
    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lenn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lenn;->b:Lenn;

    new-instance v3, Lenn;

    .line 3
    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lenn;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lenn;->c:Lenn;

    new-instance v5, Lenn;

    .line 4
    const-string v7, "CANCEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lenn;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lenn;->d:Lenn;

    const/4 v7, 0x4

    new-array v7, v7, [Lenn;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lenn;->f:[Lenn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lenn;->e:I

    return-void
.end method

.method public static a(I)Lenn;
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
    sget-object p0, Lenn;->d:Lenn;

    return-object p0

    :cond_1
    sget-object p0, Lenn;->c:Lenn;

    return-object p0

    :cond_2
    sget-object p0, Lenn;->b:Lenn;

    return-object p0

    :cond_3
    sget-object p0, Lenn;->a:Lenn;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lenm;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lenn;
    .locals 1

    sget-object v0, Lenn;->f:[Lenn;

    .line 13
    invoke-virtual {v0}, [Lenn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lenn;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lenn;->e:I

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

    iget v1, p0, Lenn;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lenn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
