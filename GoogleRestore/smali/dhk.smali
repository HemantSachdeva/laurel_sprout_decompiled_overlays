.class public abstract Ldhk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlq;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Ldjr;->a()Ldjr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Ldlj;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ldlj;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    instance-of v0, p0, Ldhi;

    if-nez v0, :cond_1

    .line 5
    instance-of v0, p0, Ldhj;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Ldhj;

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ldmi;

    .line 7
    invoke-direct {p0}, Ldmi;-><init>()V

    goto :goto_0

    .line 4
    :cond_1
    check-cast p0, Ldhi;

    invoke-static {}, Ldhi;->W()Ldmi;

    move-result-object p0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ldmi;->a()Ldkn;

    move-result-object p0

    .line 9
    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ldie;Ldjr;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldhk;->b(Ldie;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldlj;

    invoke-static {p1}, Ldhk;->a(Ldlj;)V

    return-object p1
.end method

.method public final bridge synthetic a([BILdjr;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ldhk;->b([BILdjr;)Ldlj;

    move-result-object p1

    invoke-static {p1}, Ldhk;->a(Ldlj;)V

    return-object p1
.end method

.method public b([BILdjr;)Ldlj;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
