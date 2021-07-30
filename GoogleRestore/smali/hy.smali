.class public final Lhy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field final b:Lix;

.field public final c:Landroid/view/Window;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/widget/ListView;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Landroid/support/v4/widget/NestedScrollView;

.field public j:I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/view/View;

.field p:Landroid/widget/ListAdapter;

.field q:I

.field public final r:I

.field public final s:I

.field final t:I

.field final u:I

.field final v:I

.field public final w:Z

.field final x:Landroid/os/Handler;

.field public final y:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lix;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lhy;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lhy;->q:I

    new-instance v1, Lht;

    .line 1
    invoke-direct {v1, p0}, Lht;-><init>(Lhy;)V

    iput-object v1, p0, Lhy;->y:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lhy;->a:Landroid/content/Context;

    iput-object p2, p0, Lhy;->b:Lix;

    iput-object p3, p0, Lhy;->c:Landroid/view/Window;

    new-instance p3, Lhw;

    .line 2
    invoke-direct {p3, p2}, Lhw;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lhy;->x:Landroid/os/Handler;

    .line 3
    sget-object p3, Ljh;->e:[I

    const/4 v1, 0x0

    const v2, 0x7f040027

    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lhy;->r:I

    .line 5
    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lhy;->s:I

    .line 6
    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lhy;->t:I

    .line 7
    const/4 p3, 0x5

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 8
    const/4 p3, 0x7

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lhy;->u:I

    .line 9
    const/4 p3, 0x3

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lhy;->v:I

    .line 10
    const/4 p3, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lhy;->w:Z

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p2}, Lix;->a()Lid;

    move-result-object p1

    invoke-virtual {p1, v1}, Lid;->c(I)V

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p0, :cond_1

    .line 16
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    .line 17
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_0
    nop

    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 20
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    .line 23
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    .line 24
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final a(Landroid/widget/Button;)V
    .locals 2

    .line 14
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lhy;->d:Ljava/lang/CharSequence;

    iget-object v0, p0, Lhy;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
