.class public Laku;
.super Lba;
.source "PG"


# static fields
.field protected static final c:Laqd;


# instance fields
.field protected Z:Lakr;

.field public aa:Ljava/util/List;

.field public final ab:Lcrm;

.field public d:Lakt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BaseAppFetcherSidecar"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laku;->c:Laqd;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lba;-><init>()V

    sget-object v0, Lakp;->a:Lcrm;

    .line 3
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Laku;->ab:Lcrm;

    return-void
.end method

.method public static a(Lbx;)Laku;
    .locals 1

    .line 4
    const-string v0, "APP_FETCHER_SIDECAR"

    invoke-virtual {p0, v0}, Lbx;->a(Ljava/lang/String;)Lba;

    move-result-object p0

    check-cast p0, Laku;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 10
    invoke-super {p0}, Lba;->A()V

    iget-object v0, p0, Laku;->Z:Lakr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Lakr;->cancel(Z)Z

    iput-object v1, p0, Laku;->Z:Lakr;

    :cond_0
    iput-object v1, p0, Laku;->aa:Ljava/util/List;

    return-void
.end method

.method protected final a(Laks;)V
    .locals 2

    .line 5
    iget-object v0, p1, Laks;->a:Ljava/util/List;

    iput-object v0, p0, Laku;->aa:Ljava/util/List;

    .line 6
    iget-object v1, p1, Laks;->b:Ljava/util/List;

    .line 7
    iget-object v1, p1, Laks;->d:Ljava/lang/String;

    iget-object v1, p0, Laku;->d:Lakt;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v0}, Lakt;->a(Ljava/util/List;)V

    .line 9
    iget-boolean p1, p1, Laks;->c:Z

    :cond_0
    return-void
.end method
