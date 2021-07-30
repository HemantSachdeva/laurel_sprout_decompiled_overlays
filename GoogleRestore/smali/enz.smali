.class public final Lenz;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lenz;

.field private static volatile b:Ldlq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lenz;

    .line 1
    invoke-direct {v0}, Lenz;-><init>()V

    sput-object v0, Lenz;->a:Lenz;

    const-class v1, Lenz;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    return-object v0

    :cond_0
    sget-object p1, Lenz;->b:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lenz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lenz;->b:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Lenz;->a:Lenz;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lenz;->b:Ldlq;

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

    .line 8
    :cond_3
    sget-object p1, Lenz;->a:Lenz;

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lenz;->a:Lenz;

    .line 8
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    .line 7
    :cond_5
    new-instance p1, Lenz;

    .line 9
    invoke-direct {p1}, Lenz;-><init>()V

    return-object p1

    .line 8
    :cond_6
    sget-object p1, Lenz;->a:Lenz;

    const-string p2, "\u0001\u0000"

    .line 7
    invoke-static {p1, p2, v0}, Lenz;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_7
    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
