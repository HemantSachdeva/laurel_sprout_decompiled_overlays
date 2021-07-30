.class public final enum Ldiu;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldiu;

.field public static final enum b:Ldiu;

.field public static final enum c:Ldiu;

.field private static final synthetic e:[Ldiu;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ldiu;

    .line 1
    const-string v1, "SPEED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ldiu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldiu;->a:Ldiu;

    new-instance v1, Ldiu;

    .line 2
    const-string v4, "CODE_SIZE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Ldiu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldiu;->b:Ldiu;

    new-instance v4, Ldiu;

    .line 3
    const-string v6, "LITE_RUNTIME"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Ldiu;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldiu;->c:Ldiu;

    new-array v6, v7, [Ldiu;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Ldiu;->e:[Ldiu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldiu;->d:I

    return-void
.end method

.method public static a(I)Ldiu;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ldiu;->c:Ldiu;

    return-object p0

    :cond_1
    sget-object p0, Ldiu;->b:Ldiu;

    return-object p0

    :cond_2
    sget-object p0, Ldiu;->a:Ldiu;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Ldit;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Ldiu;
    .locals 1

    sget-object v0, Ldiu;->e:[Ldiu;

    .line 12
    invoke-virtual {v0}, [Ldiu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldiu;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldiu;->d:I

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

    iget v1, p0, Ldiu;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ldiu;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
