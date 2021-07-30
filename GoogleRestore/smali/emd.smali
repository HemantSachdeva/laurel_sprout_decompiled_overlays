.class public final Lemd;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final h:Lemd;

.field private static volatile j:Ldlq;


# instance fields
.field public a:I

.field public c:Lema;

.field public d:Leoa;

.field public e:I

.field public f:Lely;

.field public g:Ljava/lang/String;

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lemd;

    .line 1
    invoke-direct {v0}, Lemd;-><init>()V

    sput-object v0, Lemd;->h:Lemd;

    const-class v1, Lemd;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lemd;->i:B

    const-string v0, ""

    iput-object v0, p0, Lemd;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-byte v0, p0, Lemd;->i:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lemd;->j:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Lemd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lemd;->j:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Lemd;->h:Lemd;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lemd;->j:Ldlq;

    .line 6
    :cond_2
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

    :cond_3
    :goto_0
    return-object p1

    .line 8
    :cond_4
    sget-object p1, Lemd;->h:Lemd;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Lemd;->h:Lemd;

    .line 9
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Lemd;

    .line 10
    invoke-direct {p1}, Lemd;-><init>()V

    return-object p1

    .line 4
    :cond_7
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "c"

    aput-object p2, p1, v0

    const-string p2, "d"

    aput-object p2, p1, v6

    const-string p2, "e"

    aput-object p2, p1, v5

    .line 7
    invoke-static {}, Lemc;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "f"

    aput-object p2, p1, v3

    const-string p2, "g"

    aput-object p2, p1, v2

    sget-object p2, Lemd;->h:Lemd;

    const-string v0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u100c\u0002\u0004\u1009\u0003\u0005\u1008\u0004"

    .line 8
    invoke-static {p2, v0, p1}, Lemd;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Lemd;->i:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
