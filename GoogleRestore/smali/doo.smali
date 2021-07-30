.class public final Ldoo;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile A:Ldlq;

.field public static final a:Ldoo;


# instance fields
.field private b:I

.field private c:Ldoj;

.field private d:Ldok;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ldol;

.field private i:Z

.field private j:Ldom;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ldon;

.field private p:Z

.field private q:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldoo;

    .line 1
    invoke-direct {v0}, Ldoo;-><init>()V

    sput-object v0, Ldoo;->a:Ldoo;

    const-class v1, Ldoo;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

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
    sget-object p1, Ldoo;->A:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Ldoo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldoo;->A:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Ldoo;->a:Ldoo;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldoo;->A:Ldlq;

    .line 6
    :cond_1
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

    :cond_2
    :goto_0
    return-object p1

    .line 8
    :cond_3
    sget-object p1, Ldoo;->a:Ldoo;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Ldoo;->a:Ldoo;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Ldoo;

    .line 10
    invoke-direct {p1}, Ldoo;-><init>()V

    return-object p1

    .line 4
    :cond_6
    const/16 p1, 0x16

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

    const-string v0, "j"

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

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    .line 7
    invoke-static {}, Ldoi;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Ldoo;->a:Ldoo;

    const-string v0, "\u0001\u0014\u0000\u0001\u0001\u0015\u0014\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u1007\u0006\u0008\u1009\u0007\t\u1007\u0008\n\u1007\t\u000b\u1007\n\u000c\u1007\u000b\r\u1009\u000c\u000e\u1007\r\u000f\u1007\u000e\u0010\u1007\u000f\u0011\u1007\u0010\u0012\u1007\u0011\u0013\u1007\u0012\u0015\u100c\u0013"

    .line 8
    invoke-static {p2, v0, p1}, Ldoo;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
