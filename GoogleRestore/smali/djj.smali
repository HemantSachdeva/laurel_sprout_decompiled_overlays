.class public final Ldjj;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile G:Ldlq;

.field public static final a:Ldjj;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:I

.field private E:Ldkk;

.field private F:B

.field private c:I

.field private d:I

.field private e:D

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldjj;

    .line 1
    invoke-direct {v0}, Ldjj;-><init>()V

    sput-object v0, Ldjj;->a:Ldjj;

    const-class v1, Ldjj;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldjj;->F:B

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Ldjj;->e:D

    const/16 v1, 0x100

    iput v1, p0, Ldjj;->i:I

    iput v1, p0, Ldjj;->j:I

    const-string v1, ""

    iput-object v1, p0, Ldjj;->n:Ljava/lang/String;

    iput-object v1, p0, Ldjj;->o:Ljava/lang/String;

    iput-object v1, p0, Ldjj;->v:Ljava/lang/String;

    iput-object v1, p0, Ldjj;->w:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ldjj;->y:J

    iput-wide v1, p0, Ldjj;->z:J

    const/4 v1, 0x1

    iput v1, p0, Ldjj;->A:I

    iput v0, p0, Ldjj;->B:I

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldjj;->E:Ldkk;

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
    iput-byte v0, p0, Ldjj;->F:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldjj;->G:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldjj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldjj;->G:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldjj;->a:Ldjj;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldjj;->G:Ldlq;

    .line 7
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 16
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

    .line 14
    :cond_4
    sget-object p1, Ldjj;->a:Ldjj;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldjj;->a:Ldjj;

    .line 15
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldjj;

    .line 16
    invoke-direct {p1}, Ldjj;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0x21

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    .line 8
    invoke-static {}, Ldje;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "e"

    aput-object p2, p1, v5

    const-string p2, "f"

    aput-object p2, p1, v4

    const-string p2, "g"

    aput-object p2, p1, v3

    const-string p2, "i"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    .line 9
    invoke-static {}, Ldjg;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    .line 10
    invoke-static {}, Ldiy;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    invoke-static {}, Ldiy;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    .line 11
    invoke-static {}, Ldjc;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    .line 12
    invoke-static {}, Ldji;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x1b

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x1c

    const-string v0, "C"

    aput-object v0, p1, p2

    const/16 p2, 0x1d

    const-string v0, "D"

    aput-object v0, p1, p2

    const/16 p2, 0x1e

    .line 13
    invoke-static {}, Ldja;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x1f

    const-string v0, "E"

    aput-object v0, p1, p2

    const/16 p2, 0x20

    const-class v0, Ldjn;

    aput-object v0, p1, p2

    sget-object p2, Ldjj;->a:Ldjj;

    const-string v0, "\u0001\u0018\u0000\u0001\u0007\u03e7\u0018\u0000\u0001\u0001\u0007\u100c\u0000\u0008\u1000\u0001\t\u1007\u0002\n\u1007\u0003\u000b\u100f\u0005\u000c\u100f\u0006\r\u100c\u0007\u000f\u100c\u0008\u0011\u100c\t\u0012\u1008\n\u0013\u1008\u000b\u0014\u1007\u000c\u0015\u1007\r\u0016\u1008\u000e\u0017\u1008\u000f\u0018\u1002\u0011\u0019\u1002\u0012\u001a\u1007\u0004\u001b\u100c\u0014\u001c\u100c\u0013\u001d\u1007\u0010!\u1007\u0015\"\u100c\u0016\u03e7\u041b"

    .line 14
    invoke-static {p2, v0, p1}, Ldjj;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Ldjj;->F:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
