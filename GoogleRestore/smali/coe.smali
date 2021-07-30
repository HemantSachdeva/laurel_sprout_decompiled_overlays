.class public final Lcoe;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lcoe;

.field private static volatile n:Ldlq;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcog;

.field private h:Lcof;

.field private i:Ldkk;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ldkk;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoe;

    .line 1
    invoke-direct {v0}, Lcoe;-><init>()V

    sput-object v0, Lcoe;->a:Lcoe;

    const-class v1, Lcoe;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcoe;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcoe;->d:Ljava/lang/String;

    iput-object v0, p0, Lcoe;->e:Ljava/lang/String;

    iput-object v0, p0, Lcoe;->f:Ljava/lang/String;

    .line 4
    sget-object v1, Ldlt;->b:Ldlt;

    iput-object v1, p0, Lcoe;->i:Ldkk;

    iput-object v0, p0, Lcoe;->j:Ljava/lang/String;

    iput-object v0, p0, Lcoe;->k:Ljava/lang/String;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Lcoe;->l:Ldkk;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-class p2, Lcoe;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcoe;->n:Ldlq;

    if-nez p1, :cond_2

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcoe;->n:Ldlq;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Lcoe;->a:Lcoe;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lcoe;->n:Ldlq;

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
    sget-object p1, Lcoe;->a:Lcoe;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Lcoe;->a:Lcoe;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Lcoe;

    .line 10
    invoke-direct {p1}, Lcoe;-><init>()V

    return-object p1

    .line 5
    :cond_6
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "c"

    aput-object v7, p1, v6

    const-string v6, "b"

    aput-object v6, p1, v0

    const-string v0, "d"

    aput-object v0, p1, v5

    const-string v0, "e"

    aput-object v0, p1, v4

    const-class v0, Lcod;

    aput-object v0, p1, v3

    const-string v0, "g"

    aput-object v0, p1, v2

    const-string v0, "h"

    aput-object v0, p1, v1

    const/4 v0, 0x7

    const-string v1, "i"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    aput-object p2, p1, v0

    const/16 p2, 0x9

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-class v0, Lcob;

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "m"

    aput-object v0, p1, p2

    sget-object p2, Lcoe;->a:Lcoe;

    const-string v0, "\u0000\u0010\u0001\u0000\u0001\u0010\u0010\u0000\u0002\u0000\u0001\u0208\u0002\u023b\u0000\u0003\u023b\u0000\u0004\u023b\u0000\u0005\u023b\u0000\u0006\u023b\u0000\u0007\u0208\u0008<\u0000\t\t\n\t\u000b\u001b\u000c\u0208\r\u0208\u000e\u0208\u000f\u001b\u0010\u0007"

    .line 8
    invoke-static {p2, v0, p1}, Lcoe;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_7
    nop

    .line 5
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
