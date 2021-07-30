.class public final Lcxy;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lcxy;

.field private static volatile k:Ldlq;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcxy;

    .line 1
    invoke-direct {v0}, Lcxy;-><init>()V

    sput-object v0, Lcxy;->a:Lcxy;

    const-class v1, Lcxy;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcxy;->j:B

    const-string v0, ""

    iput-object v0, p0, Lcxy;->c:Ljava/lang/String;

    iput-object v0, p0, Lcxy;->d:Ljava/lang/String;

    iput-object v0, p0, Lcxy;->e:Ljava/lang/String;

    iput-object v0, p0, Lcxy;->g:Ljava/lang/String;

    iput-object v0, p0, Lcxy;->h:Ljava/lang/String;

    iput-object v0, p0, Lcxy;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-byte v0, p0, Lcxy;->j:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lcxy;->k:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Lcxy;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcxy;->k:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Lcxy;->a:Lcxy;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lcxy;->k:Ldlq;

    .line 6
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 7
    :cond_4
    sget-object p1, Lcxy;->a:Lcxy;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Lcxy;->a:Lcxy;

    .line 8
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Lcxy;

    .line 9
    invoke-direct {p1}, Lcxy;-><init>()V

    return-object p1

    .line 4
    :cond_7
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "b"

    aput-object p2, p1, v1

    const-string p2, "c"

    aput-object p2, p1, v0

    const-string p2, "d"

    aput-object p2, p1, v6

    const-string p2, "e"

    aput-object p2, p1, v5

    const-string p2, "f"

    aput-object p2, p1, v4

    const-string p2, "g"

    aput-object p2, p1, v3

    const-string p2, "h"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "i"

    aput-object v0, p1, p2

    sget-object p2, Lcxy;->a:Lcxy;

    const-string v0, "\u0001\u0007\u0000\u0001\u0005\u000b\u0007\u0000\u0000\u0003\u0005\u1508\u0000\u0006\u1508\u0001\u0007\u1008\u0002\u0008\u1504\u0003\t\u1008\u0004\n\u1008\u0005\u000b\u1008\u0006"

    .line 7
    invoke-static {p2, v0, p1}, Lcxy;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Lcxy;->j:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
