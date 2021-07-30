.class public final Lcml;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcmk;

.field public final c:I

.field public final d:I

.field public e:I

.field public f:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcmk;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcml;->e:I

    iput-object p1, p0, Lcml;->b:Lcmk;

    iput-object p2, p0, Lcml;->a:Landroid/view/View;

    iput v0, p0, Lcml;->d:I

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p1

    mul-int p1, p1, p1

    iput p1, p0, Lcml;->c:I

    return-void
.end method
