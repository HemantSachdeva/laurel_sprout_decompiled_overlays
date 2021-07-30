.class public final Lafl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public final e:F

.field public f:F

.field public g:F

.field public h:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lafl;->e:F

    const/4 v0, 0x1

    iput v0, p0, Lafl;->f:F

    iput v0, p0, Lafl;->g:F

    return-void
.end method
