.class public final Latw;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final m:Latw;

.field private static volatile w:Ldlq;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:J

.field public h:Lasz;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Z

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Z

.field private v:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latw;

    .line 1
    invoke-direct {v0}, Latw;-><init>()V

    sput-object v0, Latw;->m:Latw;

    const-class v1, Latw;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Latw;->v:B

    const-string v0, ""

    iput-object v0, p0, Latw;->d:Ljava/lang/String;

    iput-object v0, p0, Latw;->p:Ljava/lang/String;

    iput-object v0, p0, Latw;->j:Ljava/lang/String;

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
    iput-byte v0, p0, Latw;->v:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Latw;->w:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Latw;

    monitor-enter p2

    :try_start_0
    sget-object p1, Latw;->w:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Latw;->m:Latw;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Latw;->w:Ldlq;

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
    sget-object p1, Latw;->m:Latw;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Latw;->m:Latw;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Latw;

    .line 10
    invoke-direct {p1}, Latw;-><init>()V

    return-object p1

    .line 4
    :cond_7
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const-string p2, "c"

    aput-object p2, p1, v6

    const-string p2, "n"

    aput-object p2, p1, v5

    const-string p2, "d"

    aput-object p2, p1, v4

    const-string p2, "o"

    aput-object p2, p1, v3

    const-string p2, "e"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    .line 7
    invoke-static {}, Latv;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "l"

    aput-object v0, p1, p2

    sget-object p2, Latw;->m:Latw;

    const-string v0, "\u0001\u000f\u0000\u0001\u0008&\u000f\u0000\u0000\u0003\u0008\u1502\u0000\t\u1503\u0001\n\u1503\u0002\r\u1008\u0003\u000e\u1005\u0004\u000f\u1003\u0005\u0010\u100b\u0006\u0011\u1008\u0007\u0013\u1003\u0008\u001c\u1009\t!\u100c\n\"\u1008\u000b$\u1007\u000c%\u1004\r&\u1007\u000e"

    .line 8
    invoke-static {p2, v0, p1}, Latw;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Latw;->v:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
