.class public final Lekp;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lekp;

.field private static volatile y:Ldlq;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Leks;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Leko;

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ldki;

.field private o:Ldki;

.field private p:Lekr;

.field private q:I

.field private v:Lekq;

.field private w:Z

.field private x:Lekt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lekp;

    .line 1
    invoke-direct {v0}, Lekp;-><init>()V

    sput-object v0, Lekp;->a:Lekp;

    const-class v1, Lekp;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lekp;->h:Ljava/lang/String;

    .line 4
    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Lekp;->n:Ldki;

    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Lekp;->o:Ldki;

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
    sget-object p1, Lekp;->y:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lekp;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lekp;->y:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lekp;->a:Lekp;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lekp;->y:Ldlq;

    .line 7
    :cond_1
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

    :cond_2
    :goto_0
    return-object p1

    .line 14
    :cond_3
    sget-object p1, Lekp;->a:Lekp;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lekp;->a:Lekp;

    .line 15
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lekp;

    .line 16
    invoke-direct {p1}, Lekp;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0x19

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    .line 8
    invoke-static {}, Lzz;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "d"

    aput-object p2, p1, v3

    .line 9
    invoke-static {}, Laaj;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "e"

    aput-object p2, p1, v1

    const-string p2, "f"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    .line 10
    invoke-static {}, Laaf;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    .line 11
    invoke-static {}, Lcxr;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    .line 12
    invoke-static {}, Laab;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "q"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    .line 13
    invoke-static {}, Laad;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-string v0, "x"

    aput-object v0, p1, p2

    sget-object p2, Lekp;->a:Lekp;

    const-string v0, "\u0001\u0012\u0000\u0001\u0001\u0012\u0012\u0000\u0002\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1009\u0003\u0005\u100c\u0004\u0006\u1008\u0005\u0007\u1009\u0006\u0008\u100c\u0007\t\u1007\u0008\n\u1004\t\u000b\u1007\n\u000c\u001e\r\u0016\u000e\u1009\u000b\u000f\u100c\u000c\u0010\u1009\r\u0011\u1007\u000e\u0012\u1009\u000f"

    .line 14
    invoke-static {p2, v0, p1}, Lekp;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
