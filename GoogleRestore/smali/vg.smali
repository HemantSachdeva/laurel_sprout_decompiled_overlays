.class final Lvg;
.super Lve;
.source "PG"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvg;

    .line 1
    invoke-direct {v0}, Lvg;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lve;-><init>(Lvd;)V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lvi;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
