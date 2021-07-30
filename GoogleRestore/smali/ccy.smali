.class public final Lccy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 1
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lccy;->a:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Lvr;

    invoke-direct {v0}, Lvr;-><init>()V

    sput-object v0, Lccy;->b:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v0, Lvq;

    invoke-direct {v0}, Lvq;-><init>()V

    sput-object v0, Lccy;->c:Landroid/animation/TimeInterpolator;

    .line 4
    new-instance v0, Lvs;

    invoke-direct {v0}, Lvs;-><init>()V

    sput-object v0, Lccy;->d:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 5
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method
