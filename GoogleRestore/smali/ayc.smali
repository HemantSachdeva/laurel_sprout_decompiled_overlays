.class public final Layc;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Layc;

.field private static volatile l:Ldlq;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:Ldki;

.field private h:I

.field private i:J

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Layc;

    .line 1
    invoke-direct {v0}, Layc;-><init>()V

    sput-object v0, Layc;->a:Layc;

    const-class v1, Layc;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Layc;->c:Ljava/lang/String;

    .line 4
    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Layc;->g:Ldki;

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
    sget-object p1, Layc;->l:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Layc;

    monitor-enter p2

    :try_start_0
    sget-object p1, Layc;->l:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Layc;->a:Layc;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Layc;->l:Ldlq;

    .line 7
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 12
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

    .line 10
    :cond_3
    sget-object p1, Layc;->a:Layc;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Layc;->a:Layc;

    .line 11
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Layc;

    .line 12
    invoke-direct {p1}, Layc;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    const-string p2, "e"

    aput-object p2, p1, v4

    const-string p2, "h"

    aput-object p2, p1, v3

    const-string p2, "i"

    aput-object p2, p1, v2

    const-string p2, "j"

    aput-object p2, p1, v1

    .line 8
    invoke-static {}, Layb;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "d"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    .line 9
    invoke-static {}, Laxz;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    sget-object p2, Layc;->a:Layc;

    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0002\u0003\u1004\u0004\u0004\u1002\u0005\u0005\u100c\u0006\u0006\u1002\u0001\u0007\u1002\u0003\u0008\u001e\t\u1007\u0007"

    .line 10
    invoke-static {p2, v0, p1}, Layc;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
