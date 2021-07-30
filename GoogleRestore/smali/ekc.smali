.class public final Lekc;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lekc;

.field private static volatile g:Ldlq;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Ldkk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lekc;

    .line 1
    invoke-direct {v0}, Lekc;-><init>()V

    sput-object v0, Lekc;->a:Lekc;

    const-class v1, Lekc;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lekc;->f:Ldkk;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lekc;->g:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lekc;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lekc;->g:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lekc;->a:Lekc;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lekc;->g:Ldlq;

    .line 7
    :cond_1
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

    :cond_2
    :goto_0
    return-object p1

    .line 8
    :cond_3
    sget-object p1, Lekc;->a:Lekc;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lekc;->a:Lekc;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lekc;

    .line 10
    invoke-direct {p1}, Lekc;-><init>()V

    return-object p1

    .line 5
    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v5, "b"

    aput-object v5, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    const-string p2, "d"

    aput-object p2, p1, v4

    const-string p2, "e"

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    const-class p2, Leke;

    aput-object p2, p1, v1

    sget-object p2, Lekc;->a:Lekc;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1002\u0002\u0004\u001b"

    .line 8
    invoke-static {p2, v0, p1}, Lekc;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_7
    nop

    .line 5
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
