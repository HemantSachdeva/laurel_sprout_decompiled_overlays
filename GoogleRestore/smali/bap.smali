.class public final Lbap;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final b:Lbap;

.field private static volatile w:Ldlq;


# instance fields
.field public a:Ljava/lang/String;

.field private c:I

.field private d:Ldkk;

.field private e:I

.field private f:Ldkk;

.field private g:I

.field private h:Ldkk;

.field private i:Ldkk;

.field private j:Ldkk;

.field private k:Z

.field private l:Ldkk;

.field private m:I

.field private n:Z

.field private o:Ldkk;

.field private p:Lbcf;

.field private q:Lbcg;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbap;

    .line 1
    invoke-direct {v0}, Lbap;-><init>()V

    sput-object v0, Lbap;->b:Lbap;

    const-class v1, Lbap;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbap;->a:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->d:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->f:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->h:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->i:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->j:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->l:Ldkk;

    const/4 v0, -0x1

    iput v0, p0, Lbap;->m:I

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lbap;->o:Ldkk;

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
    sget-object p1, Lbap;->w:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lbap;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lbap;->w:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lbap;->b:Lbap;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lbap;->w:Ldlq;

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
    sget-object p1, Lbap;->b:Lbap;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lbap;->b:Lbap;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lbap;

    .line 10
    invoke-direct {p1}, Lbap;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "c"

    aput-object v6, p1, v5

    const-string v5, "a"

    aput-object v5, p1, p2

    const-string p2, "d"

    aput-object p2, p1, v4

    const-class p2, Lbbz;

    aput-object p2, p1, v3

    const-string p2, "e"

    aput-object p2, p1, v2

    const-string p2, "f"

    aput-object p2, p1, v1

    const-string p2, "g"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-class v0, Lbcd;

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-class v0, Lbbk;

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-class v0, Lbcl;

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

    const-class v0, Lbav;

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "v"

    aput-object v0, p1, p2

    sget-object p2, Lbap;->b:Lbap;

    const-string v0, "\u0001\u0010\u0000\u0001\u0001\u0011\u0010\u0000\u0007\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1004\u0001\u0004\u001a\u0005\u1004\u0002\u0006\u001a\u0007\u001b\t\u001b\n\u1007\u0003\u000b\u001b\u000c\u1004\u0004\r\u1007\u0005\u000e\u001b\u000f\u1009\u0006\u0010\u1009\u0007\u0011\u1007\u0008"

    .line 8
    invoke-static {p2, v0, p1}, Lbap;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
