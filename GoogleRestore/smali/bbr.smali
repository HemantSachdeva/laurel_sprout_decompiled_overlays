.class public final Lbbr;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile G:Ldlq;

.field public static final a:Lbbr;


# instance fields
.field private A:Z

.field private B:Lbbq;

.field private C:I

.field private D:Lbbb;

.field private E:Lbbs;

.field private F:Lbbf;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lbcn;

.field private i:Ldkk;

.field private j:Ldkk;

.field private k:I

.field private l:Z

.field private m:Ldkk;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private v:Lbbj;

.field private w:I

.field private x:I

.field private y:I

.field private z:Ldkk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbbr;

    .line 1
    invoke-direct {v0}, Lbbr;-><init>()V

    sput-object v0, Lbbr;->a:Lbbr;

    const-class v1, Lbbr;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbbr;->c:Ljava/lang/String;

    iput-object v0, p0, Lbbr;->d:Ljava/lang/String;

    iput-object v0, p0, Lbbr;->e:Ljava/lang/String;

    iput-object v0, p0, Lbbr;->f:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbbr;->i:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbbr;->j:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbbr;->m:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbbr;->z:Ldkk;

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
    sget-object p1, Lbbr;->G:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lbbr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lbbr;->G:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lbbr;->a:Lbbr;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lbbr;->G:Ldlq;

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
    sget-object p1, Lbbr;->a:Lbbr;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lbbr;->a:Lbbr;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lbbr;

    .line 10
    invoke-direct {p1}, Lbbr;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0x1f

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    const-string p2, "d"

    aput-object p2, p1, v4

    const-string p2, "e"

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    const-string p2, "g"

    aput-object p2, p1, v1

    const-string p2, "h"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-class v0, Lbbz;

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-class v0, Lbbe;

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-class v0, Lbau;

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-class v0, Lbbn;

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x1b

    const-string v0, "C"

    aput-object v0, p1, p2

    const/16 p2, 0x1c

    const-string v0, "D"

    aput-object v0, p1, p2

    const/16 p2, 0x1d

    const-string v0, "E"

    aput-object v0, p1, p2

    const/16 p2, 0x1e

    const-string v0, "F"

    aput-object v0, p1, p2

    sget-object p2, Lbbr;->a:Lbbr;

    const-string v0, "\u0001\u001a\u0000\u0001\u0001\u001b\u001a\u0000\u0004\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u001b\u0008\u001b\n\u1004\u0006\u000b\u1007\u0007\u000c\u001b\r\u1004\u0008\u000e\u1007\t\u000f\u1007\n\u0010\u1007\u000b\u0011\u1009\u000c\u0012\u1004\r\u0013\u1004\u000e\u0014\u1004\u000f\u0015\u001b\u0016\u1007\u0010\u0017\u1009\u0011\u0018\u1004\u0012\u0019\u1009\u0013\u001a\u1009\u0014\u001b\u1009\u0015"

    .line 8
    invoke-static {p2, v0, p1}, Lbbr;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
