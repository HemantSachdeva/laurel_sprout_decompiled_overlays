.class public final enum Lbac;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbac;

.field public static final enum b:Lbac;

.field public static final enum c:Lbac;

.field public static final enum d:Lbac;

.field public static final enum e:Lbac;

.field public static final enum f:Lbac;

.field private static final synthetic h:[Lbac;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lbac;

    .line 1
    const-string v1, "SECONDARY_KEY_STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbac;->a:Lbac;

    new-instance v1, Lbac;

    .line 2
    const-string v3, "FETCH_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbac;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbac;->b:Lbac;

    new-instance v3, Lbac;

    .line 3
    const-string v5, "NO_KEY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbac;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbac;->c:Lbac;

    new-instance v5, Lbac;

    .line 4
    const-string v7, "SYNCED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbac;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbac;->d:Lbac;

    new-instance v7, Lbac;

    .line 5
    const-string v9, "NOT_SYNCED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbac;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbac;->e:Lbac;

    new-instance v9, Lbac;

    .line 6
    const-string v11, "DESTROYED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbac;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbac;->f:Lbac;

    const/4 v11, 0x6

    new-array v11, v11, [Lbac;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lbac;->h:[Lbac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbac;->g:I

    return-void
.end method

.method public static a(I)Lbac;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lbac;->f:Lbac;

    return-object p0

    :cond_1
    sget-object p0, Lbac;->e:Lbac;

    return-object p0

    :cond_2
    sget-object p0, Lbac;->d:Lbac;

    return-object p0

    :cond_3
    sget-object p0, Lbac;->c:Lbac;

    return-object p0

    :cond_4
    sget-object p0, Lbac;->b:Lbac;

    return-object p0

    :cond_5
    sget-object p0, Lbac;->a:Lbac;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lbab;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbac;
    .locals 1

    sget-object v0, Lbac;->h:[Lbac;

    .line 15
    invoke-virtual {v0}, [Lbac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbac;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbac;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbac;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lbac;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
