.class public final Leka;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Leka;

.field private static volatile i:Ldlq;


# instance fields
.field private b:I

.field private c:Ldki;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ldkk;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leka;

    .line 1
    invoke-direct {v0}, Leka;-><init>()V

    sput-object v0, Leka;->a:Leka;

    const-class v1, Leka;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldke;->b:Ldke;

    iput-object v0, p0, Leka;->c:Ldki;

    .line 5
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Leka;->g:Ldkk;

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
    sget-object p1, Leka;->i:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Leka;

    monitor-enter p2

    :try_start_0
    sget-object p1, Leka;->i:Ldlq;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ldjz;

    sget-object v0, Leka;->a:Leka;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Leka;->i:Ldlq;

    .line 8
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11
    :cond_3
    sget-object p1, Leka;->a:Leka;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Leka;->a:Leka;

    .line 12
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Leka;

    .line 13
    invoke-direct {p1}, Leka;-><init>()V

    return-object p1

    .line 6
    :cond_6
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    const-string p2, "d"

    aput-object p2, p1, v4

    .line 9
    invoke-static {}, Lejx;->b()Ldkh;

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

    .line 10
    invoke-static {}, Lejz;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Leka;->a:Leka;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\'\u0002\u100c\u0000\u0003\u1004\u0001\u0004\u1004\u0002\u0005\u001a\u0006\u100c\u0003"

    .line 11
    invoke-static {p2, v0, p1}, Leka;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_7
    nop

    .line 6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
