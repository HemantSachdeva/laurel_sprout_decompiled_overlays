.class public final enum Lesp;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lesp;

.field public static final enum b:Lesp;

.field public static final enum c:Lesp;

.field public static final enum d:Lesp;

.field public static final enum e:Lesp;

.field private static final synthetic g:[Lesp;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lesp;

    .line 1
    const-string v1, "UNSPECIFIED_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lesp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lesp;->a:Lesp;

    new-instance v1, Lesp;

    .line 2
    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lesp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lesp;->b:Lesp;

    new-instance v3, Lesp;

    .line 3
    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lesp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lesp;->c:Lesp;

    new-instance v5, Lesp;

    .line 4
    const-string v7, "TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lesp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lesp;->d:Lesp;

    new-instance v7, Lesp;

    .line 5
    const-string v9, "START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lesp;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lesp;->e:Lesp;

    const/4 v9, 0x5

    new-array v9, v9, [Lesp;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lesp;->g:[Lesp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lesp;->f:I

    return-void
.end method

.method public static a(I)Lesp;
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
    sget-object p0, Lesp;->e:Lesp;

    return-object p0

    :cond_1
    sget-object p0, Lesp;->d:Lesp;

    return-object p0

    :cond_2
    sget-object p0, Lesp;->c:Lesp;

    return-object p0

    :cond_3
    sget-object p0, Lesp;->b:Lesp;

    return-object p0

    :cond_4
    sget-object p0, Lesp;->a:Lesp;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Leso;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lesp;
    .locals 1

    sget-object v0, Lesp;->g:[Lesp;

    .line 14
    invoke-virtual {v0}, [Lesp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lesp;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lesp;->f:I

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

    iget v1, p0, Lesp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lesp;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
