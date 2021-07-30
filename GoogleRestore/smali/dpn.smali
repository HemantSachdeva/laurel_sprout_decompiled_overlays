.class public final enum Ldpn;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Ldpn;

.field public static final enum b:Ldpn;

.field public static final enum c:Ldpn;

.field public static final enum d:Ldpn;

.field public static final enum e:Ldpn;

.field public static final enum f:Ldpn;

.field public static final enum g:Ldpn;

.field public static final enum h:Ldpn;

.field public static final enum i:Ldpn;

.field private static final synthetic k:[Ldpn;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ldpn;

    .line 1
    const-string v1, "UNKNOWN_ERROR_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldpn;->a:Ldpn;

    new-instance v1, Ldpn;

    .line 2
    const-string v3, "BAD_REQUEST"

    const/4 v4, 0x1

    const/16 v5, 0x190

    invoke-direct {v1, v3, v4, v5}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldpn;->b:Ldpn;

    new-instance v3, Ldpn;

    .line 3
    const-string v5, "FORBIDDEN"

    const/4 v6, 0x2

    const/16 v7, 0x193

    invoke-direct {v3, v5, v6, v7}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ldpn;->c:Ldpn;

    new-instance v5, Ldpn;

    .line 4
    const-string v7, "NOT_FOUND"

    const/4 v8, 0x3

    const/16 v9, 0x194

    invoke-direct {v5, v7, v8, v9}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ldpn;->d:Ldpn;

    new-instance v7, Ldpn;

    .line 5
    const-string v9, "CONFLICT"

    const/4 v10, 0x4

    const/16 v11, 0x199

    invoke-direct {v7, v9, v10, v11}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ldpn;->e:Ldpn;

    new-instance v9, Ldpn;

    .line 6
    const-string v11, "GONE"

    const/4 v12, 0x5

    const/16 v13, 0x19a

    invoke-direct {v9, v11, v12, v13}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ldpn;->f:Ldpn;

    new-instance v11, Ldpn;

    .line 7
    const-string v13, "PRECONDITION_FAILED"

    const/4 v14, 0x6

    const/16 v15, 0x19c

    invoke-direct {v11, v13, v14, v15}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ldpn;->g:Ldpn;

    new-instance v13, Ldpn;

    .line 8
    const-string v15, "INTERNAL_ERROR"

    const/4 v14, 0x7

    const/16 v12, 0x1f4

    invoke-direct {v13, v15, v14, v12}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ldpn;->h:Ldpn;

    new-instance v12, Ldpn;

    .line 9
    const-string v15, "SERVICE_UNAVAILABLE"

    const/16 v14, 0x8

    const/16 v10, 0x1f7

    invoke-direct {v12, v15, v14, v10}, Ldpn;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ldpn;->i:Ldpn;

    const/16 v10, 0x9

    new-array v10, v10, [Ldpn;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Ldpn;->k:[Ldpn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldpn;->j:I

    return-void
.end method

.method public static a(I)Ldpn;
    .locals 1

    if-eqz p0, :cond_8

    const/16 v0, 0x190

    if-eq p0, v0, :cond_7

    const/16 v0, 0x19c

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x199

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ldpn;->f:Ldpn;

    return-object p0

    :cond_1
    sget-object p0, Ldpn;->e:Ldpn;

    return-object p0

    :cond_2
    sget-object p0, Ldpn;->d:Ldpn;

    return-object p0

    :cond_3
    sget-object p0, Ldpn;->c:Ldpn;

    return-object p0

    :cond_4
    sget-object p0, Ldpn;->i:Ldpn;

    return-object p0

    :cond_5
    sget-object p0, Ldpn;->h:Ldpn;

    return-object p0

    :cond_6
    sget-object p0, Ldpn;->g:Ldpn;

    return-object p0

    :cond_7
    sget-object p0, Ldpn;->b:Ldpn;

    return-object p0

    :cond_8
    sget-object p0, Ldpn;->a:Ldpn;

    return-object p0
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Ldpm;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Ldpn;
    .locals 1

    sget-object v0, Ldpn;->k:[Ldpn;

    .line 18
    invoke-virtual {v0}, [Ldpn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldpn;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldpn;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldpn;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ldpn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
