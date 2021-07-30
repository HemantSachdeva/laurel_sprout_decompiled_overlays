.class public final Lemm;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile H:Ldlq;

.field public static final i:Lemm;


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lemu;

.field private E:Ldkk;

.field private F:Leme;

.field private G:B

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lemj;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ldkj;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ldkk;

.field private v:Leny;

.field private w:Lekw;

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lemm;

    .line 1
    invoke-direct {v0}, Lemm;-><init>()V

    sput-object v0, Lemm;->i:Lemm;

    const-class v1, Lemm;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lemm;->G:B

    const-string v0, ""

    iput-object v0, p0, Lemm;->j:Ljava/lang/String;

    iput-object v0, p0, Lemm;->k:Ljava/lang/String;

    iput-object v0, p0, Lemm;->l:Ljava/lang/String;

    .line 4
    sget-object v1, Ldlt;->b:Ldlt;

    iput-object v1, p0, Lemm;->q:Ldkk;

    iput-object v0, p0, Lemm;->g:Ljava/lang/String;

    .line 5
    sget-object v1, Ldky;->b:Ldky;

    iput-object v1, p0, Lemm;->h:Ldkj;

    iput-object v0, p0, Lemm;->C:Ljava/lang/String;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lemm;->E:Ldkk;

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
    iput-byte v0, p0, Lemm;->G:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lemm;->H:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Lemm;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lemm;->H:Ldlq;

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Ldjz;

    sget-object v0, Lemm;->i:Lemm;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lemm;->H:Ldlq;

    .line 8
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 14
    :cond_4
    sget-object p1, Lemm;->i:Lemm;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Lemm;->i:Lemm;

    .line 15
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Lemm;

    .line 16
    invoke-direct {p1}, Lemm;-><init>()V

    return-object p1

    .line 6
    :cond_7
    const/16 p1, 0x22

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "j"

    aput-object p2, p1, v0

    const-string p2, "k"

    aput-object p2, p1, v6

    const-string p2, "m"

    aput-object p2, p1, v5

    const-string p2, "n"

    aput-object p2, p1, v4

    const-string p2, "b"

    aput-object p2, p1, v3

    const-string p2, "o"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "c"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    .line 9
    invoke-static {}, Lemr;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-class v0, Lemv;

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    .line 10
    invoke-static {}, Lemt;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    .line 11
    invoke-static {}, Lemp;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    .line 12
    invoke-static {}, Lemg;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "C"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x1b

    const-string v0, "D"

    aput-object v0, p1, p2

    const/16 p2, 0x1c

    const-string v0, "E"

    aput-object v0, p1, p2

    const/16 p2, 0x1d

    const-class v0, Lenk;

    aput-object v0, p1, p2

    const/16 p2, 0x1e

    const-string v0, "d"

    aput-object v0, p1, p2

    const/16 p2, 0x1f

    .line 13
    invoke-static {}, Leml;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x20

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0x21

    const-string v0, "F"

    aput-object v0, p1, p2

    sget-object p2, Lemm;->i:Lemm;

    const-string v0, "\u0001\u001a\u0000\u0001\u0001\u001a\u001a\u0000\u0003\u0001\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1004\u0003\u0004\u1004\u0004\u0005\u1004\u0005\u0006\u100b\u0006\u0007\u100b\u0007\u0008\u100c\u0008\t\u001b\n\u1009\t\u000b\u1009\u000b\u000c\u1409\u000c\r\u1002\r\u000e\u100c\u000e\u000f\u100c\u000f\u0010\u1004\u0011\u0011\u1008\u0012\u0012\u100c\u0013\u0013\u1004\u0010\u0014\u1008\u0014\u0015(\u0016\u1009\u0015\u0017\u001b\u0018\u100c\n\u0019\u1008\u0002\u001a\u1009\u0016"

    .line 14
    invoke-static {p2, v0, p1}, Lemm;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_8
    iget-byte p1, p0, Lemm;->G:B

    .line 6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
