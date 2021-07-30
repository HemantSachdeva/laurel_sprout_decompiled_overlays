.class public final Layn;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final h:Layn;

.field private static volatile i:Ldlq;


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:J

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Layn;

    .line 1
    invoke-direct {v0}, Layn;-><init>()V

    sput-object v0, Layn;->h:Layn;

    const-class v1, Layn;

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
    .locals 7

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
    sget-object p1, Layn;->i:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Layn;

    monitor-enter p2

    :try_start_0
    sget-object p1, Layn;->i:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Layn;->h:Layn;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Layn;->i:Ldlq;

    .line 6
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 11
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

    .line 9
    :cond_3
    sget-object p1, Layn;->h:Layn;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Layn;->h:Layn;

    .line 10
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Layn;

    .line 11
    invoke-direct {p1}, Layn;-><init>()V

    return-object p1

    .line 4
    :cond_6
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, p1, v5

    const-string v5, "b"

    aput-object v5, p1, p2

    const-string p2, "c"

    aput-object p2, p1, v4

    const-string p2, "d"

    aput-object p2, p1, v3

    const-string p2, "e"

    aput-object p2, p1, v2

    const-string p2, "f"

    aput-object p2, p1, v1

    .line 7
    invoke-static {}, Laym;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    .line 8
    invoke-static {}, Layk;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Layn;->h:Layn;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1002\u0003\u0005\u100c\u0004\u0006\u100c\u0005"

    .line 9
    invoke-static {p2, v0, p1}, Layn;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
