.class public final Ldox;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldox;

.field private static volatile c:Ldlq;


# instance fields
.field private b:Ldki;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldox;

    .line 1
    invoke-direct {v0}, Ldox;-><init>()V

    sput-object v0, Ldox;->a:Ldox;

    const-class v1, Ldox;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Ldox;->b:Ldki;

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
    sget-object p1, Ldox;->c:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Ldox;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldox;->c:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldox;->a:Ldox;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldox;->c:Ldlq;

    .line 7
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 11
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

    .line 9
    :cond_3
    sget-object p1, Ldox;->a:Ldox;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Ldox;->a:Ldox;

    .line 10
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Ldox;

    .line 11
    invoke-direct {p1}, Ldox;-><init>()V

    return-object p1

    .line 5
    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "b"

    aput-object v1, p1, v0

    .line 8
    invoke-static {}, Ldpd;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Ldox;->a:Ldox;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    .line 9
    invoke-static {p2, v0, p1}, Ldox;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
