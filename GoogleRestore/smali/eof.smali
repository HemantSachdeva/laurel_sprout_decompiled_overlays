.class public final Leof;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Leof;

.field private static volatile k:Ldlq;


# instance fields
.field private b:I

.field private c:Lejr;

.field private d:Leoa;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcxx;

.field private h:Ldkk;

.field private i:Ldkk;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leof;

    .line 1
    invoke-direct {v0}, Leof;-><init>()V

    sput-object v0, Leof;->a:Leof;

    const-class v1, Leof;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Leof;->j:B

    const-string v0, ""

    iput-object v0, p0, Leof;->e:Ljava/lang/String;

    iput-object v0, p0, Leof;->f:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Leof;->h:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Leof;->i:Ldkk;

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
    iput-byte v0, p0, Leof;->j:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Leof;->k:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Leof;

    monitor-enter p2

    :try_start_0
    sget-object p1, Leof;->k:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Leof;->a:Leof;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Leof;->k:Ldlq;

    .line 7
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 8
    :cond_4
    sget-object p1, Leof;->a:Leof;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Leof;->a:Leof;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Leof;

    .line 10
    invoke-direct {p1}, Leof;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0x9

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

    const-class v0, Leou;

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    sget-object p2, Leof;->a:Leof;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0001\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1409\u0004\u0006\u001b\u0007\u001a"

    .line 8
    invoke-static {p2, v0, p1}, Leof;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Leof;->j:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
