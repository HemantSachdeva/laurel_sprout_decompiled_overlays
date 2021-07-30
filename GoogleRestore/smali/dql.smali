.class public final enum Ldql;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldql;

.field public static final enum b:Ldql;

.field public static final enum c:Ldql;

.field public static final enum d:Ldql;

.field private static final synthetic f:[Ldql;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ldql;

    .line 1
    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldql;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldql;->a:Ldql;

    new-instance v1, Ldql;

    .line 2
    const-string v3, "ELIGIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldql;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldql;->b:Ldql;

    new-instance v3, Ldql;

    .line 3
    const-string v5, "INELIGIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldql;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldql;->c:Ldql;

    new-instance v5, Ldql;

    .line 4
    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Ldql;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldql;->d:Ldql;

    const/4 v7, 0x4

    new-array v7, v7, [Ldql;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ldql;->f:[Ldql;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldql;->e:I

    return-void
.end method

.method public static a(I)Ldql;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ldql;->c:Ldql;

    return-object p0

    :cond_1
    sget-object p0, Ldql;->b:Ldql;

    return-object p0

    :cond_2
    sget-object p0, Ldql;->a:Ldql;

    return-object p0
.end method

.method public static values()[Ldql;
    .locals 1

    sget-object v0, Ldql;->f:[Ldql;

    .line 14
    invoke-virtual {v0}, [Ldql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldql;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget-object v0, Ldql;->d:Ldql;

    if-eq p0, v0, :cond_0

    .line 6
    iget v0, p0, Ldql;->e:I

    return v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    sget-object v1, Ldql;->d:Ldql;

    if-eq p0, v1, :cond_0

    .line 11
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldql;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    nop

    .line 12
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ldql;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
