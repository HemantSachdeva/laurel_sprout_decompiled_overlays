.class public final Lekd;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lekd;

.field private static volatile x:Ldlq;


# instance fields
.field private b:I

.field private c:Ldki;

.field private d:Lekc;

.field private e:Ldkk;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lekh;

.field private l:I

.field private m:Lekb;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lekf;

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lekd;

    .line 1
    invoke-direct {v0}, Lekd;-><init>()V

    sput-object v0, Lekd;->a:Lekd;

    const-class v1, Lekd;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Lekd;->c:Ldki;

    .line 5
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lekd;->e:Ldkk;

    const-string v0, ""

    iput-object v0, p0, Lekd;->g:Ljava/lang/String;

    const-string v0, "unspecified"

    iput-object v0, p0, Lekd;->j:Ljava/lang/String;

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
    sget-object p1, Lekd;->x:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lekd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lekd;->x:Ldlq;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ldjz;

    sget-object v0, Lekd;->a:Lekd;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lekd;->x:Ldlq;

    .line 8
    :cond_1
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

    :cond_2
    :goto_0
    return-object p1

    .line 14
    :cond_3
    sget-object p1, Lekd;->a:Lekd;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lekd;->a:Lekd;

    .line 15
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lekd;

    .line 16
    invoke-direct {p1}, Lekd;-><init>()V

    return-object p1

    .line 6
    :cond_6
    const/16 p1, 0x18

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    .line 9
    invoke-static {}, Lest;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "d"

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    .line 10
    invoke-static {}, Lesz;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "g"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    .line 11
    invoke-static {}, Lesp;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    .line 12
    invoke-static {}, Lesv;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    .line 13
    invoke-static {}, Lesx;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-class v0, Lekg;

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "w"

    aput-object v0, p1, p2

    sget-object p2, Lekd;->a:Lekd;

    const-string v0, "\u0001\u0011\u0000\u0001\u0001\u0011\u0011\u0000\u0002\u0000\u0001\u001e\u0002\u1009\u0000\u0003\u100c\u0001\u0004\u1008\u0002\u0005\u100c\u0003\u0006\u100c\u0004\u0007\u1008\u0005\u0008\u1009\u0006\t\u100c\u0007\n\u1009\u0008\u000b\u1007\t\u000c\u1007\n\r\u001b\u000e\u1004\u000b\u000f\u1009\u000c\u0010\u1007\r\u0011\u1007\u000e"

    .line 14
    invoke-static {p2, v0, p1}, Lekd;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_7
    nop

    .line 6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
