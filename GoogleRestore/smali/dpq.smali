.class public final Ldpq;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldpq;

.field private static volatile m:Ldlq;


# instance fields
.field private b:I

.field private c:J

.field private d:Ldkk;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldpq;

    .line 1
    invoke-direct {v0}, Ldpq;-><init>()V

    sput-object v0, Ldpq;->a:Ldpq;

    const-class v1, Ldpq;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldpq;->d:Ldkk;

    const-string v0, ""

    iput-object v0, p0, Ldpq;->g:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Ldpq;->h:I

    iput-object v0, p0, Ldpq;->l:Ljava/lang/String;

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
    sget-object p1, Ldpq;->m:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Ldpq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldpq;->m:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldpq;->a:Ldpq;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldpq;->m:Ldlq;

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
    sget-object p1, Ldpq;->a:Ldpq;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Ldpq;->a:Ldpq;

    .line 12
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Ldpq;

    .line 13
    invoke-direct {p1}, Ldpq;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0xe

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

    .line 8
    invoke-static {}, Ldpj;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    .line 9
    invoke-static {}, Ldpn;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    .line 10
    invoke-static {}, Ldpp;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "l"

    aput-object v0, p1, p2

    sget-object p2, Ldpq;->a:Ldpq;

    const-string v0, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u001a\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u100c\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u1004\u0007\n\u1008\u0008"

    .line 11
    invoke-static {p2, v0, p1}, Ldpq;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
