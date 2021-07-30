.class Lze;
.super Lbir;
.source "PG"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lze;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbir;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 1

    sget-boolean v0, Lze;->a:Z

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lze;->a:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    sget-boolean v0, Lze;->a:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lze;->a:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
