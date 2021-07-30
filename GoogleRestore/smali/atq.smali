.class public final Latq;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile C:Ldlq;

.field public static final g:Latq;


# instance fields
.field private A:Latp;

.field private B:B

.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ldkk;

.field public f:Latl;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Latf;

.field private v:Lati;

.field private w:Latk;

.field private x:Latm;

.field private y:Lato;

.field private z:Latj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latq;

    .line 1
    invoke-direct {v0}, Latq;-><init>()V

    sput-object v0, Latq;->g:Latq;

    const-class v1, Latq;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Latq;->B:B

    const-string v0, ""

    iput-object v0, p0, Latq;->h:Ljava/lang/String;

    iput-object v0, p0, Latq;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Latq;->k:I

    iput-object v0, p0, Latq;->m:Ljava/lang/String;

    iput-object v0, p0, Latq;->n:Ljava/lang/String;

    iput-object v0, p0, Latq;->o:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Latq;->e:Ldkk;

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
    iput-byte v0, p0, Latq;->B:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Latq;->C:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Latq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Latq;->C:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Latq;->g:Latq;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Latq;->C:Ldlq;

    .line 7
    :cond_2
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

    :cond_3
    :goto_0
    return-object p1

    .line 9
    :cond_4
    sget-object p1, Latq;->g:Latq;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Latq;->g:Latq;

    .line 10
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Latq;

    .line 11
    invoke-direct {p1}, Latq;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0x18

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const-string p2, "e"

    aput-object p2, p1, v6

    const-class p2, Late;

    aput-object p2, p1, v5

    const-string p2, "f"

    aput-object p2, p1, v4

    const-string p2, "d"

    aput-object p2, p1, v3

    const-string p2, "j"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    .line 8
    invoke-static {}, Lath;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "c"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "A"

    aput-object v0, p1, p2

    sget-object p2, Latq;->g:Latq;

    const-string v0, "\u0001\u0015\u0000\u0001\u00016\u0015\u0000\u0001\u0003\u0001\u1502\u0000\u0002\u0431\r\u1011\u000c\u000e\u1508\u0004\u000f\u1004\u0005\u0010\u1002\u0003\u0011\u1011\r\u0013\u1004\u0006\u0016\u1007\u0007\u0017\u1008\u0008\u0019\u1008\u0002\u001a\u1009\u000e\u001b\u1009\u000f\u001d\u1009\u0010\u001f\u1008\t$\u100c\u000b*\u1009\u0011,\u1008\n2\u1002\u00015\u1009\u00126\u1009\u0013"

    .line 9
    invoke-static {p2, v0, p1}, Latq;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Latq;->B:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
