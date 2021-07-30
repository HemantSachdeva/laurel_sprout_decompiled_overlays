.class public final Ldjl;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldjl;

.field private static volatile i:Ldlq;


# instance fields
.field private c:I

.field private d:Z

.field private e:D

.field private f:Z

.field private g:Ldkk;

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldjl;

    .line 1
    invoke-direct {v0}, Ldjl;-><init>()V

    sput-object v0, Ldjl;->a:Ldjl;

    const-class v1, Ldjl;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldjl;->h:B

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Ldjl;->e:D

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldjl;->g:Ldkk;

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
    iput-byte v0, p0, Ldjl;->h:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldjl;->i:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldjl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldjl;->i:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldjl;->a:Ldjl;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldjl;->i:Ldlq;

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
    sget-object p1, Ldjl;->a:Ldjl;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldjl;->a:Ldjl;

    .line 9
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldjl;

    .line 10
    invoke-direct {p1}, Ldjl;-><init>()V

    return-object p1

    .line 5
    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "e"

    aput-object p2, p1, v0

    const-string p2, "d"

    aput-object p2, p1, v6

    const-string p2, "f"

    aput-object p2, p1, v5

    const-string p2, "g"

    aput-object p2, p1, v4

    const-class p2, Ldjn;

    aput-object p2, p1, v3

    sget-object p2, Ldjl;->a:Ldjl;

    const-string v0, "\u0001\u0004\u0000\u0001\u0010\u03e7\u0004\u0000\u0001\u0001\u0010\u1000\u0001\u0014\u1007\u0000!\u1007\u0002\u03e7\u041b"

    .line 8
    invoke-static {p2, v0, p1}, Ldjl;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Ldjl;->h:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
