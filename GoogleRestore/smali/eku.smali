.class public final Leku;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Leku;

.field public static final b:Ldjp;

.field private static volatile g:Ldlq;


# instance fields
.field private c:I

.field private d:Lduy;

.field private e:Lcol;

.field private f:Lekv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Leku;

    .line 1
    invoke-direct {v0}, Leku;-><init>()V

    sput-object v0, Leku;->a:Leku;

    const-class v1, Leku;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    .line 3
    sget-object v1, Ldpl;->a:Ldpl;

    .line 4
    sget-object v2, Ldmz;->k:Ldmz;

    .line 5
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v0, v3, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Leku;->b:Ldjp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ldkd;-><init>()V

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
    sget-object p1, Leku;->g:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Leku;

    monitor-enter p2

    :try_start_0
    sget-object p1, Leku;->g:Ldlq;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ldjz;

    sget-object v0, Leku;->a:Leku;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Leku;->g:Ldlq;

    .line 9
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 10
    :cond_3
    sget-object p1, Leku;->a:Leku;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Leku;->a:Leku;

    .line 11
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Leku;

    .line 12
    invoke-direct {p1}, Leku;-><init>()V

    return-object p1

    .line 7
    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "c"

    aput-object v3, p1, v0

    const-string v0, "d"

    aput-object v0, p1, p2

    const-string p2, "e"

    aput-object p2, p1, v2

    const-string p2, "f"

    aput-object p2, p1, v1

    sget-object p2, Leku;->a:Leku;

    const-string v0, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    .line 10
    invoke-static {p2, v0, p1}, Leku;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_7
    nop

    .line 7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
