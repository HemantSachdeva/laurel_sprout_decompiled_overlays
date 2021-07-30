.class public final Ldil;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldil;

.field private static volatile i:Ldlq;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ldkk;

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldil;

    .line 1
    invoke-direct {v0}, Ldil;-><init>()V

    sput-object v0, Ldil;->a:Ldil;

    const-class v1, Ldil;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldil;->h:B

    const-string v0, ""

    iput-object v0, p0, Ldil;->d:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldil;->g:Ldkk;

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
    iput-byte v0, p0, Ldil;->h:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldil;->i:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldil;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldil;->i:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldil;->a:Ldil;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldil;->i:Ldlq;

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
    sget-object p1, Ldil;->a:Ldil;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldil;->a:Ldil;

    .line 9
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldil;

    .line 10
    invoke-direct {p1}, Ldil;-><init>()V

    return-object p1

    .line 5
    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    const-string p2, "e"

    aput-object p2, p1, v6

    const-string p2, "f"

    aput-object p2, p1, v5

    const-string p2, "g"

    aput-object p2, p1, v4

    const-class p2, Ldjn;

    aput-object p2, p1, v3

    sget-object p2, Ldil;->a:Ldil;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u03e7\u0004\u0000\u0001\u0001\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u03e7\u041b"

    .line 8
    invoke-static {p2, v0, p1}, Ldil;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Ldil;->h:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
