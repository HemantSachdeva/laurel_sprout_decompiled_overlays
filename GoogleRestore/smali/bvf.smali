.class public final Lbvf;
.super Lbvd;
.source "PG"


# static fields
.field public static final a:Lbvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvf;

    invoke-direct {v0}, Lbvf;-><init>()V

    sput-object v0, Lbvf;->a:Lbvf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ldlj;Ldlj;)Ldlj;
    .locals 0

    check-cast p1, Lejg;

    check-cast p2, Lejg;

    invoke-static {p1, p2}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ldlj;
    .locals 0

    check-cast p2, Landroid/os/health/TimerStat;

    invoke-static {p1, p2}, Lcne;->a(Ljava/lang/String;Landroid/os/health/TimerStat;)Lejg;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ldlj;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lejg;

    iget-object v0, p1, Lejg;->d:Leja;

    if-nez v0, :cond_0

    sget-object v0, Leja;->d:Leja;

    :cond_0
    iget v0, v0, Leja;->a:I

    and-int/lit8 v0, v0, 0x2

    iget-object p1, p1, Lejg;->d:Leja;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Leja;->d:Leja;

    :cond_1
    iget-object p1, p1, Leja;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Leja;->d:Leja;

    :cond_3
    iget-wide v0, p1, Leja;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
