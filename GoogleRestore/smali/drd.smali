.class public final Ldrd;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field private static volatile B:Ldlq;

.field public static final a:Ldrd;

.field public static final b:Ldjp;


# instance fields
.field private A:B

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ldqu;

.field private h:Ldqz;

.field private i:Ldre;

.field private j:Ldrj;

.field private k:Ldrk;

.field private l:Ldrp;

.field private m:Ldrq;

.field private n:Ldrv;

.field private o:Ldrw;

.field private p:Ldse;

.field private q:Ldsf;

.field private v:Ldsj;

.field private w:Ldsm;

.field private x:Ldsn;

.field private y:Ldra;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldrd;

    .line 1
    invoke-direct {v0}, Ldrd;-><init>()V

    sput-object v0, Ldrd;->a:Ldrd;

    const-class v1, Ldrd;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    .line 3
    sget-object v1, Ldpx;->a:Ldpx;

    .line 4
    sget-object v2, Ldmz;->k:Ldmz;

    .line 5
    const/4 v3, 0x0

    const v4, 0x3f3fd17

    invoke-static {v1, v0, v3, v4, v2}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldrd;->b:Ldjp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldrd;->A:B

    const-string v0, ""

    iput-object v0, p0, Ldrd;->e:Ljava/lang/String;

    iput-object v0, p0, Ldrd;->f:Ljava/lang/String;

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
    iput-byte v0, p0, Ldrd;->A:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldrd;->B:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldrd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldrd;->B:Ldlq;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ldjz;

    sget-object v0, Ldrd;->a:Ldrd;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldrd;->B:Ldlq;

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
    sget-object p1, Ldrd;->a:Ldrd;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Ldrd;->a:Ldrd;

    .line 12
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Ldrd;

    .line 13
    invoke-direct {p1}, Ldrd;-><init>()V

    return-object p1

    .line 7
    :cond_7
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    .line 10
    invoke-static {}, Ldrc;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "g"

    aput-object p2, p1, v5

    const-string p2, "i"

    aput-object p2, p1, v4

    const-string p2, "k"

    aput-object p2, p1, v3

    const-string p2, "q"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-string v0, "n"

    aput-object v0, p1, p2

    sget-object p2, Ldrd;->a:Ldrd;

    const-string v0, "\u0001\u0013\u0000\u0001\u0001\u0015\u0013\u0000\u0000\u0001\u0001\u100c\u0000\u0002\u1409\u0003\u0003\u1009\u0005\u0004\u1009\u0007\u0005\u1009\r\u0006\u1008\u0001\u0007\u1008\u0002\u0008\u1009\u000f\t\u1009\u0011\n\u1009\u000c\u000b\u1009\u0008\u000c\u1002\u0012\r\u1009\u000b\u000e\u1009\u0004\u000f\u1009\u0010\u0010\u1009\u0006\u0012\u1009\u000e\u0014\u1009\t\u0015\u1009\n"

    .line 11
    invoke-static {p2, v0, p1}, Ldrd;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_8
    iget-byte p1, p0, Ldrd;->A:B

    .line 7
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
