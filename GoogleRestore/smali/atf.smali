.class public final Latf;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Latf;

.field private static volatile d:Ldlq;


# instance fields
.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latf;

    .line 1
    invoke-direct {v0}, Latf;-><init>()V

    sput-object v0, Latf;->a:Latf;

    const-class v1, Latf;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Latf;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Latf;->d:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Latf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Latf;->d:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Latf;->a:Latf;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Latf;->d:Ldlq;

    .line 6
    :cond_1
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

    :cond_2
    :goto_0
    return-object p1

    .line 7
    :cond_3
    sget-object p1, Latf;->a:Latf;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Latf;->a:Latf;

    .line 8
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Latf;

    .line 9
    invoke-direct {p1}, Latf;-><init>()V

    return-object p1

    .line 4
    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "b"

    aput-object v1, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    sget-object p2, Latf;->a:Latf;

    const-string v0, "\u0001\u0001\u0000\u0001\u0012\u0012\u0001\u0000\u0000\u0000\u0012\u1007\u0000"

    .line 7
    invoke-static {p2, v0, p1}, Latf;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_7
    nop

    .line 4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
