.class public final Lbao;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final h:Lbao;

.field private static volatile k:Ldlq;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Lbap;

.field public e:Lbaq;

.field public f:Ldkk;

.field public g:Ldkk;

.field private i:Lbbr;

.field private j:Lbca;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbao;

    .line 1
    invoke-direct {v0}, Lbao;-><init>()V

    sput-object v0, Lbao;->h:Lbao;

    const-class v1, Lbao;

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

    iput-object v0, p0, Lbao;->f:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbao;->g:Ldkk;

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
    sget-object p1, Lbao;->k:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lbao;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lbao;->k:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lbao;->h:Lbao;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lbao;->k:Ldlq;

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
    sget-object p1, Lbao;->h:Lbao;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lbao;->h:Lbao;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lbao;

    .line 10
    invoke-direct {p1}, Lbao;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, p1, v5

    const-string v5, "b"

    aput-object v5, p1, p2

    const-string p2, "c"

    aput-object p2, p1, v4

    const-string p2, "i"

    aput-object p2, p1, v3

    const-string p2, "d"

    aput-object p2, p1, v2

    const-string p2, "e"

    aput-object p2, p1, v1

    const-string p2, "f"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-class v0, Lbat;

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-class v0, Lbcq;

    aput-object v0, p1, p2

    sget-object p2, Lbao;->h:Lbao;

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u1002\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u001b\u0007\u1009\u0005\u0008\u001b"

    .line 8
    invoke-static {p2, v0, p1}, Lbao;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
