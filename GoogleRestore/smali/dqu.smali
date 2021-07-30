.class public final Ldqu;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile M:Ldlq;

.field public static final a:Ldqu;


# instance fields
.field private A:Lbpy;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ldqv;

.field private F:Lcxp;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ldkk;

.field private K:I

.field private L:B

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldqu;

    .line 1
    invoke-direct {v0}, Ldqu;-><init>()V

    sput-object v0, Ldqu;->a:Ldqu;

    const-class v1, Ldqu;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldqu;->L:B

    const-string v0, ""

    iput-object v0, p0, Ldqu;->e:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->h:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->i:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->j:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->k:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->l:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->m:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->n:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->o:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->p:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->q:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->v:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->w:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->x:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->y:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->G:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->H:Ljava/lang/String;

    iput-object v0, p0, Ldqu;->I:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldqu;->J:Ldkk;

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
    iput-byte v0, p0, Ldqu;->L:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldqu;->M:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldqu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldqu;->M:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldqu;->a:Ldqu;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldqu;->M:Ldlq;

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
    sget-object p1, Ldqu;->a:Ldqu;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldqu;->a:Ldqu;

    .line 10
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldqu;

    .line 11
    invoke-direct {p1}, Ldqu;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0x20

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    const-string p2, "e"

    aput-object p2, p1, v6

    const-string p2, "g"

    aput-object p2, p1, v5

    const-string p2, "h"

    aput-object p2, p1, v4

    const-string p2, "i"

    aput-object p2, p1, v3

    const-string p2, "l"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "C"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "D"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    .line 8
    invoke-static {}, Ldsp;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "E"

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "F"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-string v0, "G"

    aput-object v0, p1, p2

    const/16 p2, 0x1b

    const-string v0, "H"

    aput-object v0, p1, p2

    const/16 p2, 0x1c

    const-string v0, "I"

    aput-object v0, p1, p2

    const/16 p2, 0x1d

    const-string v0, "J"

    aput-object v0, p1, p2

    const/16 p2, 0x1e

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x1f

    const-string v0, "K"

    aput-object v0, p1, p2

    sget-object p2, Ldqu;->a:Ldqu;

    const-string v0, "\u0001\u001e\u0000\u0001\u0001!\u001e\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0003\u0004\u1008\u0004\u0005\u1008\u0005\u0006\u1008\u0008\u0007\u1008\t\u0008\u1008\u0006\t\u1008\u0007\n\u1008\n\u000b\u1008\u000b\u000c\u1008\u000c\r\u1008\r\u000e\u1008\u000e\u000f\u1008\u000f\u0010\u1008\u0010\u0011\u1008\u0011\u0012\u1002\u0002\u0013\u1004\u0012\u0014\u1007\u0014\u0016\u1007\u0015\u0017\u100c\u0016\u0018\u1009\u0017\u0019\u1009\u0018\u001a\u1008\u0019\u001b\u1008\u001a\u001c\u1008\u001b\u001f\u001a \u1009\u0013!\u1004\u001c"

    .line 9
    invoke-static {p2, v0, p1}, Ldqu;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Ldqu;->L:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
