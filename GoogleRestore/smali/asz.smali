.class public final Lasz;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final f:Lasz;

.field private static volatile i:Ldlq;


# instance fields
.field public a:I

.field public b:Lata;

.field public c:Ldib;

.field public d:Ldib;

.field public e:I

.field private g:Ldkk;

.field private h:Ldib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lasz;

    .line 1
    invoke-direct {v0}, Lasz;-><init>()V

    sput-object v0, Lasz;->f:Lasz;

    const-class v1, Lasz;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    .line 4
    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Lasz;->c:Ldib;

    .line 5
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lasz;->g:Ldkk;

    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Lasz;->d:Ldib;

    sget-object v0, Ldib;->b:Ldib;

    iput-object v0, p0, Lasz;->h:Ldib;

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
    sget-object p1, Lasz;->i:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Lasz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lasz;->i:Ldlq;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ldjz;

    sget-object v0, Lasz;->f:Lasz;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lasz;->i:Ldlq;

    .line 8
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 11
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

    .line 9
    :cond_3
    sget-object p1, Lasz;->f:Lasz;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lasz;->f:Lasz;

    .line 10
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lasz;

    .line 11
    invoke-direct {p1}, Lasz;-><init>()V

    return-object p1

    .line 6
    :cond_6
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "a"

    aput-object v6, p1, v5

    const-string v5, "b"

    aput-object v5, p1, p2

    const-string p2, "c"

    aput-object p2, p1, v4

    const-string p2, "g"

    aput-object p2, p1, v3

    const-class p2, Lasv;

    aput-object p2, p1, v2

    const-string p2, "d"

    aput-object p2, p1, v1

    const-string p2, "h"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "e"

    aput-object v0, p1, p2

    sget-object p2, Lasz;->f:Lasz;

    const-string v0, "\u0001\u0006\u0000\u0001\u0003\t\u0006\u0000\u0001\u0000\u0003\u1009\u0000\u0004\u100a\u0001\u0005\u001b\u0007\u100a\u0002\u0008\u100a\u0003\t\u1004\u0004"

    .line 9
    invoke-static {p2, v0, p1}, Lasz;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
