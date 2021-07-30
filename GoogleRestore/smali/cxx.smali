.class public final Lcxx;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lcxx;

.field private static volatile q:Ldlq;


# instance fields
.field private b:I

.field private c:Lcxv;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ldkk;

.field private m:Lcyc;

.field private n:Ldkk;

.field private o:Ldkk;

.field private p:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcxx;

    .line 1
    invoke-direct {v0}, Lcxx;-><init>()V

    sput-object v0, Lcxx;->a:Lcxx;

    const-class v1, Lcxx;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcxx;->p:B

    const-string v0, ""

    iput-object v0, p0, Lcxx;->d:Ljava/lang/String;

    iput-object v0, p0, Lcxx;->f:Ljava/lang/String;

    iput-object v0, p0, Lcxx;->g:Ljava/lang/String;

    iput-object v0, p0, Lcxx;->i:Ljava/lang/String;

    iput-object v0, p0, Lcxx;->j:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lcxx;->l:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lcxx;->n:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lcxx;->o:Ldkk;

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
    iput-byte v0, p0, Lcxx;->p:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lcxx;->q:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Lcxx;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcxx;->q:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lcxx;->a:Lcxx;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lcxx;->q:Ldlq;

    .line 7
    :cond_2
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

    :cond_3
    :goto_0
    return-object p1

    .line 8
    :cond_4
    sget-object p1, Lcxx;->a:Lcxx;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Lcxx;->a:Lcxx;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Lcxx;

    .line 10
    invoke-direct {p1}, Lcxx;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "b"

    aput-object p2, p1, v1

    const-string p2, "c"

    aput-object p2, p1, v0

    const-string p2, "d"

    aput-object p2, p1, v6

    const-string p2, "e"

    aput-object p2, p1, v5

    const-string p2, "f"

    aput-object p2, p1, v4

    const-string p2, "g"

    aput-object p2, p1, v3

    const-string p2, "j"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "m"

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

    const-class v0, Lcxw;

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "h"

    aput-object v0, p1, p2

    sget-object p2, Lcxx;->a:Lcxx;

    const-string v0, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0003\u0004\u0001\u1509\u0000\u0002\u1508\u0001\u0003\u1504\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0007\u0007\u001a\u0008\u1409\t\t\u1002\u0008\n\u001a\u000b\u001b\u000c\u1008\u0006\r\u1004\u0005"

    .line 8
    invoke-static {p2, v0, p1}, Lcxx;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Lcxx;->p:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
