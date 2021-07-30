.class public final enum Ldnv;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldnv;

.field public static final enum b:Ldnv;

.field private static final synthetic d:[Ldnv;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ldnv;

    .line 1
    const-string v1, "FINGERPRINT_2011"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ldnv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldnv;->a:Ldnv;

    new-instance v1, Ldnv;

    .line 2
    const-string v4, "FARMHASH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Ldnv;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldnv;->b:Ldnv;

    new-array v4, v5, [Ldnv;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Ldnv;->d:[Ldnv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldnv;->c:I

    return-void
.end method

.method public static a(I)Ldnv;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ldnv;->b:Ldnv;

    return-object p0

    :cond_1
    sget-object p0, Ldnv;->a:Ldnv;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Ldnu;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Ldnv;
    .locals 1

    sget-object v0, Ldnv;->d:[Ldnv;

    .line 11
    invoke-virtual {v0}, [Ldnv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldnv;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldnv;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldnv;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Ldnv;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
