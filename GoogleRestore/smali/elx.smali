.class public final Lelx;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final D:Lelx;

.field private static volatile E:Ldlq;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public v:I

.field public w:I

.field public x:I

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lelx;

    .line 1
    invoke-direct {v0}, Lelx;-><init>()V

    sput-object v0, Lelx;->D:Lelx;

    const-class v1, Lelx;

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
    sget-object p1, Lelx;->E:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lelx;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lelx;->E:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Lelx;->D:Lelx;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lelx;->E:Ldlq;

    .line 6
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 9
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

    .line 7
    :cond_3
    sget-object p1, Lelx;->D:Lelx;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lelx;->D:Lelx;

    .line 8
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lelx;

    .line 9
    invoke-direct {p1}, Lelx;-><init>()V

    return-object p1

    .line 4
    :cond_6
    const/16 p1, 0x19

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, p1, v5

    const-string v5, "b"

    aput-object v5, p1, p2

    const-string p2, "c"

    aput-object p2, p1, v4

    const-string p2, "d"

    aput-object p2, p1, v3

    const-string p2, "e"

    aput-object p2, p1, v2

    const-string p2, "f"

    aput-object p2, p1, v1

    const-string p2, "g"

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

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "C"

    aput-object v0, p1, p2

    sget-object p2, Lelx;->D:Lelx;

    const-string v0, "\u0001\u0018\u0000\u0001\u0001\u0018\u0018\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0007\u0008\u1004\u0008\t\u1004\t\n\u1004\n\u000b\u1004\u000b\u000c\u1004\u000c\r\u1004\r\u000e\u1004\u000e\u000f\u1004\u000f\u0010\u1004\u0010\u0011\u1004\u0011\u0012\u1004\u0012\u0013\u1004\u0006\u0014\u1002\u0013\u0015\u1002\u0014\u0016\u1002\u0015\u0017\u1002\u0016\u0018\u1002\u0017"

    .line 7
    invoke-static {p2, v0, p1}, Lelx;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
