.class public final Layi;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Layi;

.field private static volatile e:Ldlq;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Layi;

    .line 1
    invoke-direct {v0}, Layi;-><init>()V

    sput-object v0, Layi;->a:Layi;

    const-class v1, Layi;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Layi;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Layi;->e:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Layi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Layi;->e:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Layi;->a:Layi;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Layi;->e:Ldlq;

    .line 6
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 10
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

    .line 8
    :cond_3
    sget-object p1, Layi;->a:Layi;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Layi;->a:Layi;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Layi;

    .line 10
    invoke-direct {p1}, Layi;-><init>()V

    return-object p1

    .line 4
    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "b"

    aput-object v3, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    .line 7
    invoke-static {}, Layh;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "d"

    aput-object p2, p1, v1

    sget-object p2, Layi;->a:Layi;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001"

    .line 8
    invoke-static {p2, v0, p1}, Layi;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
