.class public final Lcfy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const v0, 0x7f04011a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcsb;->a(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcfy;->a:Z

    .line 2
    const v0, 0x7f040119

    invoke-static {p1, v0}, Lcrj;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcfy;->b:I

    .line 3
    const v0, 0x7f0400c8

    invoke-static {p1, v0}, Lcrj;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcfy;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcfy;->d:F

    return-void
.end method
