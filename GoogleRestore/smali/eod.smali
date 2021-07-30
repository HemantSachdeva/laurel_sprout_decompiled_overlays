.class public final enum Leod;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Leod;

.field public static final enum b:Leod;

.field public static final enum c:Leod;

.field public static final enum d:Leod;

.field public static final enum e:Leod;

.field private static final synthetic g:[Leod;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Leod;

    .line 1
    const-string v1, "UNKNOWN_HARDWARE_VARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Leod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Leod;->a:Leod;

    new-instance v1, Leod;

    .line 2
    const-string v3, "PHONE_OR_TABLET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Leod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Leod;->b:Leod;

    new-instance v3, Leod;

    .line 3
    const-string v5, "WATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Leod;-><init>(Ljava/lang/String;II)V

    sput-object v3, Leod;->c:Leod;

    new-instance v5, Leod;

    .line 4
    const-string v7, "LEANBACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Leod;-><init>(Ljava/lang/String;II)V

    sput-object v5, Leod;->d:Leod;

    new-instance v7, Leod;

    .line 5
    const-string v9, "AUTOMOTIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Leod;-><init>(Ljava/lang/String;II)V

    sput-object v7, Leod;->e:Leod;

    const/4 v9, 0x5

    new-array v9, v9, [Leod;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Leod;->g:[Leod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Leod;->f:I

    return-void
.end method

.method public static a(I)Leod;
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
    sget-object p0, Leod;->e:Leod;

    return-object p0

    :cond_1
    sget-object p0, Leod;->d:Leod;

    return-object p0

    :cond_2
    sget-object p0, Leod;->c:Leod;

    return-object p0

    :cond_3
    sget-object p0, Leod;->b:Leod;

    return-object p0

    :cond_4
    sget-object p0, Leod;->a:Leod;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Leoc;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Leod;
    .locals 1

    sget-object v0, Leod;->g:[Leod;

    .line 14
    invoke-virtual {v0}, [Leod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leod;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Leod;->f:I

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

    iget v1, p0, Leod;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Leod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
