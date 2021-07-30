.class public final enum Lent;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lent;

.field public static final enum b:Lent;

.field public static final enum c:Lent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum d:Lent;

.field public static final enum e:Lent;

.field public static final enum f:Lent;

.field private static final synthetic h:[Lent;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lent;

    .line 1
    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lent;->a:Lent;

    new-instance v1, Lent;

    .line 2
    const-string v3, "TRACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lent;->b:Lent;

    new-instance v3, Lent;

    .line 3
    const-string v5, "DEPRECATED_SCENARIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lent;->c:Lent;

    new-instance v5, Lent;

    .line 4
    const-string v7, "METRIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lent;->d:Lent;

    new-instance v7, Lent;

    .line 5
    const-string v9, "TIMER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lent;->e:Lent;

    new-instance v9, Lent;

    .line 6
    const-string v11, "DOMINANT_SPAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lent;->f:Lent;

    const/4 v11, 0x6

    new-array v11, v11, [Lent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lent;->h:[Lent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lent;->g:I

    return-void
.end method

.method public static a(I)Lent;
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
    sget-object p0, Lent;->f:Lent;

    return-object p0

    :cond_1
    sget-object p0, Lent;->e:Lent;

    return-object p0

    :cond_2
    sget-object p0, Lent;->d:Lent;

    return-object p0

    :cond_3
    sget-object p0, Lent;->c:Lent;

    return-object p0

    :cond_4
    sget-object p0, Lent;->b:Lent;

    return-object p0

    :cond_5
    sget-object p0, Lent;->a:Lent;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lens;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lent;
    .locals 1

    sget-object v0, Lent;->h:[Lent;

    .line 15
    invoke-virtual {v0}, [Lent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lent;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lent;->g:I

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

    iget v1, p0, Lent;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
