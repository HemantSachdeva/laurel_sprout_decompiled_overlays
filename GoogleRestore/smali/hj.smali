.class final Lhj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:J

.field public j:F

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lhj;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhj;->i:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhj;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lhj;->g:I

    iput v0, p0, Lhj;->h:I

    return-void
.end method


# virtual methods
.method public final a(J)F
    .locals 9

    iget-wide v0, p0, Lhj;->e:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    return v2

    :cond_0
    iget-wide v3, p0, Lhj;->i:J

    const-wide/16 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmp-long v8, v3, v5

    if-ltz v8, :cond_2

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    iget v0, p0, Lhj;->j:F

    sub-float v1, v7, v0

    sub-long/2addr p1, v3

    long-to-float p1, p1

    iget p2, p0, Lhj;->k:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 2
    invoke-static {p1, v2, v7}, Lhl;->a(FFF)F

    move-result p1

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    return v1

    .line 0
    :cond_2
    :goto_0
    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lhj;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    invoke-static {p1, v2, v7}, Lhl;->a(FFF)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    return p1
.end method
