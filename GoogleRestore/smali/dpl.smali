.class public final Ldpl;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldpl;

.field private static volatile f:Ldlq;


# instance fields
.field private c:I

.field private d:Ldpr;

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldpl;

    .line 1
    invoke-direct {v0}, Ldpl;-><init>()V

    sput-object v0, Ldpl;->a:Ldpl;

    const-class v1, Ldpl;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldpl;->e:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-byte v0, p0, Ldpl;->e:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldpl;->f:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldpl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldpl;->f:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Ldpl;->a:Ldpl;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldpl;->f:Ldlq;

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
    sget-object p1, Ldpl;->a:Ldpl;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldpl;->a:Ldpl;

    .line 8
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldpl;

    .line 9
    invoke-direct {p1}, Ldpl;-><init>()V

    return-object p1

    .line 4
    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    sget-object p2, Ldpl;->a:Ldpl;

    const-string v0, "\u0001\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u1009\u0000"

    .line 7
    invoke-static {p2, v0, p1}, Ldpl;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Ldpl;->e:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
