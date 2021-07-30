.class public final enum Ldja;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldja;

.field public static final enum b:Ldja;

.field public static final enum c:Ldja;

.field private static final synthetic e:[Ldja;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ldja;

    .line 1
    const-string v1, "IDEMPOTENCY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldja;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldja;->a:Ldja;

    new-instance v1, Ldja;

    .line 2
    const-string v3, "NO_SIDE_EFFECTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldja;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldja;->b:Ldja;

    new-instance v3, Ldja;

    .line 3
    const-string v5, "IDEMPOTENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ldja;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldja;->c:Ldja;

    const/4 v5, 0x3

    new-array v5, v5, [Ldja;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ldja;->e:[Ldja;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldja;->d:I

    return-void
.end method

.method public static a(I)Ldja;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ldja;->c:Ldja;

    return-object p0

    :cond_1
    sget-object p0, Ldja;->b:Ldja;

    return-object p0

    :cond_2
    sget-object p0, Ldja;->a:Ldja;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Ldiz;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Ldja;
    .locals 1

    sget-object v0, Ldja;->e:[Ldja;

    .line 12
    invoke-virtual {v0}, [Ldja;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldja;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldja;->d:I

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

    iget v1, p0, Ldja;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ldja;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
