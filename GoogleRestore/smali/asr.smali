.class public final Lasr;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final h:Lasr;

.field private static volatile j:Ldlq;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ldib;

.field public f:I

.field public g:Ldib;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lasr;

    .line 1
    invoke-direct {v0}, Lasr;-><init>()V

    sput-object v0, Lasr;->h:Lasr;

    const-class v1, Lasr;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Lasr;->e:Ldib;

    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Lasr;->g:Ldib;

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
    sget-object p1, Lasr;->j:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lasr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lasr;->j:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lasr;->h:Lasr;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lasr;->j:Ldlq;

    .line 7
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 12
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

    .line 10
    :cond_3
    sget-object p1, Lasr;->h:Lasr;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lasr;->h:Lasr;

    .line 11
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lasr;

    .line 12
    invoke-direct {p1}, Lasr;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i"

    aput-object v6, p1, v5

    const-string v5, "a"

    aput-object v5, p1, p2

    .line 8
    invoke-static {}, Lasq;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "b"

    aput-object p2, p1, v3

    const-string p2, "c"

    aput-object p2, p1, v2

    const-string p2, "d"

    aput-object p2, p1, v1

    .line 9
    invoke-static {}, Laso;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "g"

    aput-object v0, p1, p2

    sget-object p2, Lasr;->h:Lasr;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u100c\u0003\u0005\u100a\u0004\u0006\u1004\u0005\u0007\u100a\u0006"

    .line 10
    invoke-static {p2, v0, p1}, Lasr;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
