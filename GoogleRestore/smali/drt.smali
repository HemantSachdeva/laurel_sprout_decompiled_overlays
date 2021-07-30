.class public final Ldrt;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile K:Ldlq;

.field public static final j:Ldrt;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ldau;

.field private C:Ldib;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ldki;

.field private G:Ldki;

.field private H:J

.field private I:Ldsb;

.field private J:B

.field public a:I

.field public c:J

.field public d:J

.field public e:I

.field public f:Ldib;

.field public g:J

.field public h:Z

.field public i:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Z

.field private p:Ldkk;

.field private q:Ldib;

.field private v:Ldqw;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ldqt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldrt;

    .line 1
    invoke-direct {v0}, Ldrt;-><init>()V

    sput-object v0, Ldrt;->j:Ldrt;

    const-class v1, Ldrt;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldrt;->J:B

    const-string v0, ""

    iput-object v0, p0, Ldrt;->l:Ljava/lang/String;

    iput-object v0, p0, Ldrt;->m:Ljava/lang/String;

    .line 4
    sget-object v1, Ldlt;->b:Ldlt;

    iput-object v1, p0, Ldrt;->p:Ldkk;

    .line 5
    sget-object v1, Ldib;->b:Ldib;

    iput-object v1, p0, Ldrt;->q:Ldib;

    sget-object v1, Ldib;->b:Ldib;

    iput-object v1, p0, Ldrt;->f:Ldib;

    iput-object v0, p0, Ldrt;->w:Ljava/lang/String;

    iput-object v0, p0, Ldrt;->x:Ljava/lang/String;

    iput-object v0, p0, Ldrt;->y:Ljava/lang/String;

    iput-object v0, p0, Ldrt;->A:Ljava/lang/String;

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Ldrt;->g:J

    sget-object v1, Ldib;->b:Ldib;

    iput-object v1, p0, Ldrt;->C:Ldib;

    iput-object v0, p0, Ldrt;->D:Ljava/lang/String;

    .line 6
    sget-object v1, Ldke;->b:Ldke;

    iput-object v1, p0, Ldrt;->F:Ldki;

    sget-object v1, Ldke;->b:Ldke;

    iput-object v1, p0, Ldrt;->G:Ldki;

    iput-object v0, p0, Ldrt;->i:Ljava/lang/String;

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
    iput-byte v0, p0, Ldrt;->J:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldrt;->K:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldrt;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldrt;->K:Ldlq;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ldjz;

    sget-object v0, Ldrt;->j:Ldrt;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldrt;->K:Ldlq;

    .line 9
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 11
    :cond_4
    sget-object p1, Ldrt;->j:Ldrt;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldrt;->j:Ldrt;

    .line 12
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldrt;

    .line 13
    invoke-direct {p1}, Ldrt;-><init>()V

    return-object p1

    .line 7
    :cond_7
    const/16 p1, 0x1f

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "c"

    aput-object p2, p1, v0

    const-string p2, "l"

    aput-object p2, p1, v6

    const-string p2, "p"

    aput-object p2, p1, v5

    const-class p2, Ldru;

    aput-object p2, p1, v4

    const-string p2, "q"

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "d"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "C"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "E"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    .line 10
    invoke-static {}, Ldrs;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "F"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "H"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "I"

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "D"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x1b

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0x1c

    const-string v0, "G"

    aput-object v0, p1, p2

    const/16 p2, 0x1d

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x1e

    const-string v0, "y"

    aput-object v0, p1, p2

    sget-object p2, Ldrt;->j:Ldrt;

    const-string v0, "\u0001\u001c\u0000\u0001\u0001\u001d\u001c\u0000\u0003\u0000\u0001\u1002\u0000\u0002\u1008\u0003\u0003\u001b\u0004\u100a\u0008\u0006\u100a\n\u0007\u1009\u000e\u0008\u1008\u000b\t\u1009\t\n\u1007\u0007\u000b\u1004\u0004\u000c\u1002\u0006\r\u1008\u000c\u000e\u1008\u000f\u000f\u1010\u0010\u0010\u1009\u0011\u0011\u1002\u0001\u0012\u100a\u0012\u0013\u100c\u0014\u0014\u0016\u0015\u1002\u0002\u0016\u1002\u0015\u0017\u1009\u0016\u0018\u1008\u0013\u0019\u1007\u0017\u001a\u1008\u0005\u001b\'\u001c\u1008\u0018\u001d\u1008\r"

    .line 11
    invoke-static {p2, v0, p1}, Ldrt;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_8
    iget-byte p1, p0, Ldrt;->J:B

    .line 7
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
