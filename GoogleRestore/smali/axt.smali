.class public final Laxt;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile C:Ldlq;

.field public static final a:Laxt;


# instance fields
.field private A:I

.field private B:Lavv;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ldki;

.field private k:J

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laxt;

    .line 1
    invoke-direct {v0}, Laxt;-><init>()V

    sput-object v0, Laxt;->a:Laxt;

    const-class v1, Laxt;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Laxt;->e:I

    .line 4
    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Laxt;->j:Ldki;

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
    sget-object p1, Laxt;->C:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Laxt;

    monitor-enter p2

    :try_start_0
    sget-object p1, Laxt;->C:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Laxt;->a:Laxt;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Laxt;->C:Ldlq;

    .line 7
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 13
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

    .line 11
    :cond_3
    sget-object p1, Laxt;->a:Laxt;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Laxt;->a:Laxt;

    .line 12
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Laxt;

    .line 13
    invoke-direct {p1}, Laxt;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0x1b

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    const-string p2, "d"

    aput-object p2, p1, v4

    .line 8
    invoke-static {}, Laxq;->b()Ldkh;

    move-result-object p2

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

    .line 9
    invoke-static {}, Laxs;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    invoke-static {}, Laxs;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "o"

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

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    .line 10
    invoke-static {}, Lbac;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-string v0, "p"

    aput-object v0, p1, p2

    sget-object p2, Laxt;->a:Laxt;

    const-string v0, "\u0001\u0016\u0000\u0001\u0001\u0016\u0016\u0000\u0001\u0000\u0001\u1007\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u100c\u0006\u0008\u001e\t\u1002\u0007\n\u1002\u0008\u000b\u1007\t\u000c\u1007\n\r\u1007\u000b\u000e\u1007\r\u000f\u1007\u000e\u0010\u1007\u000f\u0011\u1007\u0010\u0012\u100c\u0011\u0013\u1007\u0012\u0014\u1004\u0013\u0015\u1009\u0014\u0016\u1007\u000c"

    .line 11
    invoke-static {p2, v0, p1}, Laxt;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
