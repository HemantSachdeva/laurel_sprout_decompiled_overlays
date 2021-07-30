.class public final enum Lesv;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lesv;

.field public static final enum b:Lesv;

.field public static final enum c:Lesv;

.field private static final synthetic e:[Lesv;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lesv;

    .line 1
    const-string v1, "UNSPECIFIED_MITIGATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lesv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lesv;->a:Lesv;

    new-instance v1, Lesv;

    .line 2
    const-string v3, "NO_MITIGATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lesv;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lesv;->b:Lesv;

    new-instance v3, Lesv;

    .line 3
    const-string v5, "WIFI_NETWORK_MITIGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lesv;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lesv;->c:Lesv;

    const/4 v5, 0x3

    new-array v5, v5, [Lesv;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lesv;->e:[Lesv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lesv;->d:I

    return-void
.end method

.method public static a(I)Lesv;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lesv;->c:Lesv;

    return-object p0

    :cond_1
    sget-object p0, Lesv;->b:Lesv;

    return-object p0

    :cond_2
    sget-object p0, Lesv;->a:Lesv;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lesu;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lesv;
    .locals 1

    sget-object v0, Lesv;->e:[Lesv;

    .line 12
    invoke-virtual {v0}, [Lesv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lesv;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lesv;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lesv;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lesv;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
