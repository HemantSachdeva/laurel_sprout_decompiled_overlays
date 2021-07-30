.class public final Latl;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final h:Latl;

.field private static volatile l:Ldlq;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latl;

    .line 1
    invoke-direct {v0}, Latl;-><init>()V

    sput-object v0, Latl;->h:Latl;

    const-class v1, Latl;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Latl;->k:Z

    iput-boolean v0, p0, Latl;->d:Z

    const-string v0, ""

    iput-object v0, p0, Latl;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Latl;)V
    .locals 1

    iget v0, p0, Latl;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Latl;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Latl;->j:Z

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
    sget-object p1, Latl;->l:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Latl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Latl;->l:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Latl;->h:Latl;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Latl;->l:Ldlq;

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
    sget-object p1, Latl;->h:Latl;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Latl;->h:Latl;

    .line 8
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Latl;

    .line 9
    invoke-direct {p1}, Latl;-><init>()V

    return-object p1

    .line 4
    :cond_6
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, p1, v5

    const-string v5, "b"

    aput-object v5, p1, p2

    const-string p2, "i"

    aput-object p2, p1, v4

    const-string p2, "j"

    aput-object p2, p1, v3

    const-string p2, "c"

    aput-object p2, p1, v2

    const-string p2, "k"

    aput-object p2, p1, v1

    const-string p2, "d"

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

    sget-object p2, Latl;->h:Latl;

    const-string v0, "\u0001\t\u0000\u0001\u00181\t\u0000\u0000\u0000\u0018\u1004\u0000\u001c\u1007\u0001\"\u1007\u0002+\u1007\u0003-\u1007\u0004.\u1007\u0005/\u1007\u00060\u1007\u00071\u1008\u0008"

    .line 7
    invoke-static {p2, v0, p1}, Latl;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
