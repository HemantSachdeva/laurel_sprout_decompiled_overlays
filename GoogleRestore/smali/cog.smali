.class public final Lcog;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lcog;

.field private static volatile j:Ldlq;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ldkk;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcog;

    .line 1
    invoke-direct {v0}, Lcog;-><init>()V

    sput-object v0, Lcog;->a:Lcog;

    const-class v1, Lcog;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcog;->c:Ljava/lang/String;

    iput-object v0, p0, Lcog;->d:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lcog;->e:Ldkk;

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
    sget-object p1, Lcog;->j:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lcog;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcog;->j:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lcog;->a:Lcog;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lcog;->j:Ldlq;

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
    sget-object p1, Lcog;->a:Lcog;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lcog;->a:Lcog;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lcog;

    .line 10
    invoke-direct {p1}, Lcog;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0x8

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

    sget-object p2, Lcog;->a:Lcog;

    const-string v0, "\u0000\u0008\u0000\u0000\u0003\n\u0008\u0000\u0001\u0000\u0003\u0007\u0004\u0208\u0005\u0208\u0006\u021a\u0007\u0002\u0008\u0007\t\u0007\n\u0007"

    .line 8
    invoke-static {p2, v0, p1}, Lcog;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
