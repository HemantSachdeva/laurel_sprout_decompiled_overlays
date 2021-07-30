.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field private A:Landroid/content/res/ColorStateList;

.field private B:Landroid/content/res/ColorStateList;

.field private C:Ljava/lang/CharSequence;

.field private final D:Landroid/widget/TextView;

.field private final E:Landroid/widget/TextView;

.field private F:Z

.field private G:Ljava/lang/CharSequence;

.field private H:Lchl;

.field private I:Lchq;

.field private final J:I

.field private final K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private final P:Landroid/graphics/Rect;

.field private final Q:Landroid/graphics/Rect;

.field private final R:Landroid/graphics/RectF;

.field private final S:Lcom/google/android/material/internal/CheckableImageButton;

.field private T:Landroid/content/res/ColorStateList;

.field private U:Z

.field private V:Landroid/graphics/PorterDuff$Mode;

.field private W:Z

.field public a:Landroid/widget/EditText;

.field private aA:Z

.field private aB:Z

.field private aC:Landroid/animation/ValueAnimator;

.field private aD:Z

.field private aa:Landroid/graphics/drawable/Drawable;

.field private ab:I

.field private final ac:Ljava/util/LinkedHashSet;

.field private ad:I

.field private final ae:Landroid/util/SparseArray;

.field private final af:Ljava/util/LinkedHashSet;

.field private ag:Landroid/content/res/ColorStateList;

.field private ah:Z

.field private ai:Landroid/graphics/PorterDuff$Mode;

.field private aj:Z

.field private ak:Landroid/graphics/drawable/Drawable;

.field private al:I

.field private am:Landroid/graphics/drawable/Drawable;

.field private final an:Lcom/google/android/material/internal/CheckableImageButton;

.field private ao:Landroid/content/res/ColorStateList;

.field private ap:Landroid/content/res/ColorStateList;

.field private aq:Landroid/content/res/ColorStateList;

.field private ar:I

.field private as:I

.field private at:I

.field private au:Landroid/content/res/ColorStateList;

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field public b:Z

.field public c:I

.field public d:Z

.field public e:Landroid/widget/TextView;

.field public f:Z

.field public g:Ljava/lang/CharSequence;

.field public h:Z

.field public i:Lchl;

.field public j:I

.field public k:I

.field public final l:Lcom/google/android/material/internal/CheckableImageButton;

.field public final m:Lcgj;

.field public n:Z

.field private final o:Landroid/widget/FrameLayout;

.field private final p:Landroid/widget/LinearLayout;

.field private final q:Landroid/widget/LinearLayout;

.field private final r:Landroid/widget/FrameLayout;

.field private s:Ljava/lang/CharSequence;

.field private final t:Lckc;

.field private u:I

.field private v:I

.field private w:Ljava/lang/CharSequence;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/content/res/ColorStateList;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f0402e1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f120362

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lckx;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v10, Lckc;

    .line 4
    invoke-direct {v10, v0}, Lckc;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    new-instance v1, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    .line 7
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Ljava/util/LinkedHashSet;

    const/4 v11, 0x0

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    new-instance v12, Landroid/util/SparseArray;

    .line 9
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->af:Ljava/util/LinkedHashSet;

    .line 11
    new-instance v13, Lcgj;

    invoke-direct {v13, v0}, Lcgj;-><init>(Landroid/view/View;)V

    iput-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 13
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    .line 14
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    .line 15
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    new-instance v1, Landroid/widget/FrameLayout;

    .line 16
    invoke-direct {v1, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    .line 19
    invoke-direct {v6, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    const/4 v5, -0x2

    const/4 v4, -0x1

    const v3, 0x800003

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    .line 23
    invoke-direct {v3, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    const v11, 0x800005

    invoke-direct {v2, v5, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/FrameLayout;

    .line 27
    invoke-direct {v11, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    sget-object v1, Lccy;->a:Landroid/animation/TimeInterpolator;

    iput-object v1, v13, Lcgj;->w:Landroid/animation/TimeInterpolator;

    .line 30
    invoke-virtual {v13}, Lcgj;->e()V

    sget-object v1, Lccy;->a:Landroid/animation/TimeInterpolator;

    iput-object v1, v13, Lcgj;->v:Landroid/animation/TimeInterpolator;

    .line 31
    invoke-virtual {v13}, Lcgj;->e()V

    .line 32
    const v1, 0x800033

    invoke-virtual {v13, v1}, Lcgj;->b(I)V

    .line 33
    sget-object v2, Lckl;->c:[I

    const/4 v1, 0x5

    new-array v15, v1, [I

    fill-array-data v15, :array_0

    .line 34
    invoke-static {v14, v7, v8, v9}, Lcgr;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const v16, 0x7f120362

    move-object v1, v14

    move-object/from16 v18, v2

    move-object/from16 v2, p2

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v20, v6

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcgr;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 36
    move-object/from16 v1, v18

    invoke-static {v14, v7, v1, v8, v9}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v1

    .line 37
    const/16 v2, 0x26

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lrn;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    .line 38
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->a(Ljava/lang/CharSequence;)V

    .line 39
    const/16 v4, 0x25

    invoke-virtual {v1, v4, v3}, Lrn;->a(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->aB:Z

    .line 40
    invoke-static {v14, v7, v8, v9}, Lchq;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lchp;

    move-result-object v3

    invoke-virtual {v3}, Lchp;->a()Lchq;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    .line 41
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 42
    const v4, 0x7f0701b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    .line 43
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lrn;->c(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    .line 44
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 45
    const v4, 0x7f0701b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 46
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Lrn;->d(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    .line 47
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 48
    const v4, 0x7f0701b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 49
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lrn;->d(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    .line 50
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lrn;->g(I)F

    move-result v3

    .line 51
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lrn;->g(I)F

    move-result v5

    .line 52
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Lrn;->g(I)F

    move-result v6

    .line 53
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Lrn;->g(I)F

    move-result v7

    iget-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    .line 54
    invoke-virtual {v8}, Lchq;->b()Lchp;

    move-result-object v8

    const/4 v9, 0x0

    cmpl-float v15, v3, v9

    if-ltz v15, :cond_0

    .line 55
    invoke-virtual {v8, v3}, Lchp;->c(F)V

    :cond_0
    cmpl-float v3, v5, v9

    if-ltz v3, :cond_1

    .line 56
    invoke-virtual {v8, v5}, Lchp;->d(F)V

    :cond_1
    cmpl-float v3, v6, v9

    if-ltz v3, :cond_2

    .line 57
    invoke-virtual {v8, v6}, Lchp;->b(F)V

    :cond_2
    cmpl-float v3, v7, v9

    if-ltz v3, :cond_3

    .line 58
    invoke-virtual {v8, v7}, Lchp;->a(F)V

    .line 59
    :cond_3
    invoke-virtual {v8}, Lchp;->a()Lchq;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    .line 60
    const/4 v3, 0x3

    invoke-static {v14, v1, v3}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const v6, -0x101009e

    if-eqz v5, :cond_5

    .line 61
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 62
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v7, 0x0

    aput v6, v8, v7

    .line 63
    const/4 v7, -0x1

    invoke-virtual {v5, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    new-array v8, v2, [I

    fill-array-data v8, :array_1

    .line 64
    invoke-virtual {v5, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    new-array v8, v2, [I

    fill-array-data v8, :array_2

    .line 65
    invoke-virtual {v5, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ay:I

    goto :goto_0

    .line 82
    :cond_4
    const/4 v7, -0x1

    iget v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    const v5, 0x7f0601a7

    .line 66
    invoke-static {v14, v5}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v8, 0x1

    new-array v15, v8, [I

    const/4 v3, 0x0

    aput v6, v15, v3

    .line 67
    invoke-virtual {v5, v15, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    iput v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    new-array v15, v8, [I

    const v8, 0x1010367

    aput v8, v15, v3

    .line 68
    invoke-virtual {v5, v15, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ay:I

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v7, -0x1

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ay:I

    .line 65
    :goto_0
    nop

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lrn;->f(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 70
    invoke-virtual {v1, v3}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/content/res/ColorStateList;

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    :cond_6
    nop

    .line 71
    const/16 v3, 0xa

    invoke-static {v14, v1, v3}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 72
    invoke-virtual {v1, v3}, Lrn;->h(I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->at:I

    const v3, 0x7f0601b9

    .line 73
    invoke-static {v14, v3}, Ltt;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:I

    const v3, 0x7f0601ba

    .line 74
    invoke-static {v14, v3}, Ltt;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    const v3, 0x7f0601bd

    .line 75
    invoke-static {v14, v3}, Ltt;->b(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->as:I

    if-eqz v5, :cond_9

    .line 76
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 77
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ar:I

    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x0

    aput v6, v8, v3

    .line 78
    invoke-virtual {v5, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    .line 79
    invoke-virtual {v5, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->as:I

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    .line 80
    invoke-virtual {v5, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->at:I

    goto :goto_1

    .line 155
    :cond_7
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->at:I

    .line 81
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    if-eq v3, v6, :cond_8

    .line 82
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->at:I

    .line 83
    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    :cond_9
    nop

    .line 84
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lrn;->f(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 85
    invoke-static {v14, v1, v3}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    if-eq v5, v3, :cond_a

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    :cond_a
    nop

    .line 87
    const/16 v3, 0x27

    invoke-virtual {v1, v3, v7}, Lrn;->f(II)I

    move-result v5

    if-eq v5, v7, :cond_10

    .line 88
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lrn;->f(II)I

    move-result v3

    new-instance v5, Lcha;

    iget-object v6, v13, Lcgj;->a:Landroid/view/View;

    .line 89
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcha;-><init>(Landroid/content/Context;I)V

    iget-object v3, v5, Lcha;->a:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_b

    iput-object v3, v13, Lcgj;->i:Landroid/content/res/ColorStateList;

    :cond_b
    iget v3, v5, Lcha;->i:F

    cmpl-float v6, v3, v9

    if-eqz v6, :cond_c

    iput v3, v13, Lcgj;->g:F

    :cond_c
    iget-object v3, v5, Lcha;->b:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_d

    iput-object v3, v13, Lcgj;->A:Landroid/content/res/ColorStateList;

    :cond_d
    iget v3, v5, Lcha;->f:F

    iput v3, v13, Lcgj;->y:F

    iget v3, v5, Lcha;->g:F

    iput v3, v13, Lcgj;->z:F

    iget v3, v5, Lcha;->h:F

    iput v3, v13, Lcgj;->x:F

    iget-object v3, v13, Lcgj;->C:Lchb;

    if-eqz v3, :cond_e

    .line 90
    invoke-virtual {v3}, Lchb;->a()V

    :cond_e
    new-instance v3, Lchb;

    new-instance v6, Lcgi;

    .line 91
    invoke-direct {v6, v13}, Lcgi;-><init>(Lcgj;)V

    .line 92
    invoke-virtual {v5}, Lcha;->a()V

    iget-object v8, v5, Lcha;->j:Landroid/graphics/Typeface;

    .line 93
    invoke-direct {v3, v6, v8}, Lchb;-><init>(Lcgi;Landroid/graphics/Typeface;)V

    iput-object v3, v13, Lcgj;->C:Lchb;

    iget-object v3, v13, Lcgj;->a:Landroid/view/View;

    .line 94
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, v13, Lcgj;->C:Lchb;

    invoke-virtual {v5, v3, v6}, Lcha;->a(Landroid/content/Context;Lchb;)V

    .line 95
    invoke-virtual {v13}, Lcgj;->e()V

    iget-object v3, v13, Lcgj;->i:Landroid/content/res/ColorStateList;

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v3, :cond_f

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    goto :goto_2

    .line 95
    :cond_f
    const/4 v3, 0x0

    goto :goto_2

    .line 87
    :cond_10
    const/4 v3, 0x0

    .line 97
    :goto_2
    const/16 v5, 0x1f

    .line 98
    invoke-virtual {v1, v5, v3}, Lrn;->f(II)I

    move-result v5

    const/16 v6, 0x1a

    .line 99
    invoke-virtual {v1, v6}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v8, 0x1b

    .line 100
    invoke-virtual {v1, v8, v3}, Lrn;->a(IZ)Z

    move-result v8

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 102
    const v15, 0x7f0d0036

    move-object/from16 v2, v19

    invoke-virtual {v9, v15, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 103
    invoke-virtual {v9, v4}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 104
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lrn;->f(I)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 105
    invoke-virtual {v1, v3}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    nop

    .line 106
    const/16 v3, 0x1d

    invoke-virtual {v1, v3}, Lrn;->f(I)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 107
    invoke-static {v14, v1, v3}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Landroid/content/res/ColorStateList;

    .line 108
    invoke-virtual {v9}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 109
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 111
    invoke-static {v15, v3}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 155
    :cond_12
    move-object/from16 v15, v17

    .line 111
    :goto_3
    nop

    .line 112
    invoke-virtual {v9}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v3, v15, :cond_13

    .line 113
    invoke-virtual {v9, v15}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    nop

    .line 114
    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Lrn;->f(I)Z

    move-result v15

    const/4 v4, 0x0

    if-eqz v15, :cond_15

    .line 115
    invoke-virtual {v1, v3, v7}, Lrn;->a(II)I

    move-result v3

    .line 116
    invoke-static {v3, v4}, Lcrw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 117
    invoke-virtual {v9}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 118
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 120
    invoke-static {v15, v3}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 155
    :cond_14
    nop

    .line 120
    :goto_4
    nop

    .line 121
    invoke-virtual {v9}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v3, v15, :cond_15

    .line 122
    invoke-virtual {v9, v15}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    nop

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f110083

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 124
    invoke-virtual {v9, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    const/4 v3, 0x2

    invoke-static {v9, v3}, Lge;->a(Landroid/view/View;I)V

    .line 126
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    iput-boolean v3, v9, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    .line 127
    invoke-virtual {v9, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    const/16 v15, 0x23

    .line 128
    invoke-virtual {v1, v15, v3}, Lrn;->f(II)I

    move-result v15

    const/16 v4, 0x22

    .line 129
    invoke-virtual {v1, v4, v3}, Lrn;->a(IZ)Z

    move-result v4

    const/16 v7, 0x21

    .line 130
    invoke-virtual {v1, v7}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v19, v13

    const/16 v13, 0x2f

    .line 131
    invoke-virtual {v1, v13, v3}, Lrn;->f(II)I

    move-result v13

    const/16 v3, 0x2e

    .line 132
    invoke-virtual {v1, v3}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    move/from16 v21, v13

    const/16 v13, 0x32

    .line 133
    move-object/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Lrn;->f(II)I

    move-result v13

    const/16 v3, 0x31

    .line 134
    invoke-virtual {v1, v3}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    move/from16 v23, v13

    const/16 v13, 0x3c

    .line 135
    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Lrn;->f(II)I

    move-result v13

    const/16 v3, 0x3b

    .line 136
    invoke-virtual {v1, v3}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    move/from16 v25, v13

    const/16 v13, 0xe

    .line 137
    move-object/from16 v26, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Lrn;->a(IZ)Z

    move-result v13

    const/16 v3, 0xf

    .line 138
    move/from16 v27, v13

    const/4 v13, -0x1

    invoke-virtual {v1, v3, v13}, Lrn;->a(II)I

    move-result v3

    iget v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    if-eq v13, v3, :cond_17

    if-lez v3, :cond_16

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    goto :goto_5

    .line 155
    :cond_16
    const/4 v3, -0x1

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    .line 138
    :goto_5
    iget-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v3, :cond_17

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    :cond_17
    const/16 v3, 0x12

    .line 140
    const/4 v13, 0x0

    invoke-virtual {v1, v3, v13}, Lrn;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const/16 v3, 0x10

    .line 141
    invoke-virtual {v1, v3, v13}, Lrn;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->u:I

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v28, v6

    const v6, 0x7f0d0037

    .line 143
    move/from16 v29, v5

    move-object/from16 v5, v20

    invoke-virtual {v3, v6, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 144
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 147
    const/16 v6, 0x38

    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 148
    invoke-virtual {v1, v6}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 149
    invoke-virtual {v3, v6}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_18

    .line 150
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    goto :goto_6

    .line 169
    :cond_18
    nop

    .line 152
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 155
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->b(Ljava/lang/CharSequence;)V

    .line 151
    :goto_6
    const/16 v6, 0x37

    .line 156
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_19

    const/16 v6, 0x37

    .line 157
    invoke-virtual {v1, v6}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 158
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->b(Ljava/lang/CharSequence;)V

    :cond_19
    const/16 v6, 0x36

    .line 159
    const/4 v13, 0x1

    invoke-virtual {v1, v6, v13}, Lrn;->a(IZ)Z

    move-result v6

    .line 160
    invoke-virtual {v3, v6}, Lcom/google/android/material/internal/CheckableImageButton;->a(Z)V

    :cond_1a
    nop

    .line 161
    const/16 v6, 0x39

    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 162
    invoke-static {v14, v1, v6}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iget-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    if-eq v13, v6, :cond_1b

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()V

    :cond_1b
    const/16 v6, 0x3a

    .line 164
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v6, 0x3a

    .line 165
    const/4 v13, -0x1

    invoke-virtual {v1, v6, v13}, Lrn;->a(II)I

    move-result v6

    .line 166
    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcrw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iget-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    if-eq v13, v6, :cond_1c

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()V

    :cond_1c
    const/4 v6, 0x4

    .line 168
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Lrn;->a(II)I

    move-result v6

    iget v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-ne v6, v13, :cond_1d

    goto :goto_7

    .line 199
    :cond_1d
    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v6, :cond_1e

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 170
    :cond_1e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 171
    move/from16 p3, v8

    const/4 v8, 0x0

    const v13, 0x7f0d0036

    invoke-virtual {v6, v13, v11, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 172
    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 173
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    new-instance v6, Lcjm;

    .line 174
    invoke-direct {v6, v0}, Lcjm;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v8, -0x1

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v6, Lckf;

    .line 175
    invoke-direct {v6, v0}, Lckf;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v6, Lckk;

    .line 176
    invoke-direct {v6, v0}, Lckk;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v8, 0x1

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v6, Lcjl;

    .line 177
    invoke-direct {v6, v0}, Lcjl;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v8, 0x2

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 178
    new-instance v6, Lcjz;

    invoke-direct {v6, v0}, Lcjz;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v8, 0x3

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v6, 0x17

    .line 179
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    const/16 v8, 0x2b

    if-eqz v6, :cond_21

    const/16 v6, 0x17

    .line 180
    const/4 v12, 0x0

    invoke-virtual {v1, v6, v12}, Lrn;->a(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->d(I)V

    const/16 v6, 0x16

    .line 181
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v6, 0x16

    .line 182
    invoke-virtual {v1, v6}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    const/16 v6, 0x15

    .line 183
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_20

    const/16 v6, 0x15

    .line 184
    invoke-virtual {v1, v6}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 185
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->c(Ljava/lang/CharSequence;)V

    :cond_20
    const/16 v6, 0x14

    .line 186
    const/4 v12, 0x1

    invoke-virtual {v1, v6, v12}, Lrn;->a(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->f(Z)V

    goto :goto_8

    .line 228
    :cond_21
    nop

    .line 187
    invoke-virtual {v1, v8}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 188
    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Lrn;->a(IZ)Z

    move-result v12

    .line 189
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->d(I)V

    const/16 v6, 0x2a

    .line 190
    invoke-virtual {v1, v6}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0x29

    .line 191
    invoke-virtual {v1, v6}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 192
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->c(Ljava/lang/CharSequence;)V

    const/16 v6, 0x2c

    .line 193
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v6, 0x2c

    .line 194
    invoke-static {v14, v1, v6}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 195
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/content/res/ColorStateList;)V

    :cond_22
    const/16 v6, 0x2d

    .line 196
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_23

    const/16 v6, 0x2d

    .line 197
    const/4 v12, -0x1

    invoke-virtual {v1, v6, v12}, Lrn;->a(II)I

    move-result v6

    .line 198
    const/4 v12, 0x0

    invoke-static {v6, v12}, Lcrw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 199
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 186
    :cond_23
    :goto_8
    nop

    .line 200
    invoke-virtual {v1, v8}, Lrn;->f(I)Z

    move-result v6

    if-nez v6, :cond_25

    const/16 v6, 0x18

    .line 201
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_24

    const/16 v6, 0x18

    .line 202
    invoke-static {v14, v1, v6}, Lcsy;->a(Landroid/content/Context;Lrn;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 203
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/content/res/ColorStateList;)V

    :cond_24
    const/16 v6, 0x19

    .line 204
    invoke-virtual {v1, v6}, Lrn;->f(I)Z

    move-result v6

    if-eqz v6, :cond_25

    const/16 v6, 0x19

    .line 205
    const/4 v8, -0x1

    invoke-virtual {v1, v6, v8}, Lrn;->a(II)I

    move-result v6

    .line 206
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcrw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    .line 207
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 208
    :cond_25
    new-instance v6, Lnq;

    invoke-direct {v6, v14}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    const v8, 0x7f0a01aa

    .line 209
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setId(I)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    const/4 v12, -0x2

    invoke-direct {v8, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lge;->c(Landroid/view/View;I)V

    .line 212
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lnq;

    .line 214
    invoke-direct {v3, v14}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/widget/TextView;

    const v5, 0x7f0a01ab

    .line 215
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x50

    .line 216
    invoke-direct {v5, v12, v12, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lge;->c(Landroid/view/View;I)V

    .line 218
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->c(Z)V

    .line 222
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->c(Z)V

    goto :goto_9

    .line 234
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()Z

    move-result v2

    if-nez v2, :cond_27

    .line 224
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->c(Z)V

    :cond_27
    nop

    .line 225
    invoke-virtual {v10}, Lckc;->b()V

    iput-object v7, v10, Lckc;->l:Ljava/lang/CharSequence;

    iget-object v2, v10, Lckc;->n:Landroid/widget/TextView;

    .line 226
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v10, Lckc;->d:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_28

    iput v4, v10, Lckc;->e:I

    :cond_28
    iget v4, v10, Lckc;->e:I

    iget-object v5, v10, Lckc;->n:Landroid/widget/TextView;

    .line 227
    invoke-virtual {v10, v5, v7}, Lckc;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 228
    invoke-virtual {v10, v2, v4, v5}, Lckc;->a(IIZ)V

    .line 223
    :cond_29
    :goto_9
    nop

    .line 229
    invoke-virtual {v10, v15}, Lckc;->b(I)V

    .line 230
    move/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->b(Z)V

    .line 231
    move/from16 v2, v29

    invoke-virtual {v10, v2}, Lckc;->a(I)V

    .line 232
    move-object/from16 v2, v28

    invoke-virtual {v10, v2}, Lckc;->a(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-eqz v2, :cond_2a

    .line 233
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 235
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->g(Z)V

    goto :goto_a

    .line 281
    :cond_2a
    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-nez v2, :cond_2b

    .line 234
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->g(Z)V

    :cond_2b
    move-object/from16 v2, v22

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    .line 236
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 237
    move/from16 v2, v21

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->c(I)V

    .line 238
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-eq v4, v2, :cond_2c

    move-object/from16 v2, v24

    goto :goto_b

    .line 281
    :cond_2c
    const/4 v2, 0x0

    .line 238
    :goto_b
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;

    .line 239
    move-object/from16 v2, v24

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 241
    move/from16 v2, v23

    invoke-static {v6, v2}, Lhz;->a(Landroid/widget/TextView;I)V

    .line 242
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-eq v4, v2, :cond_2d

    move-object/from16 v2, v26

    goto :goto_c

    .line 281
    :cond_2d
    const/4 v2, 0x0

    .line 242
    :goto_c
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    .line 243
    move-object/from16 v2, v26

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    .line 245
    move/from16 v2, v25

    invoke-static {v3, v2}, Lhz;->a(Landroid/widget/TextView;I)V

    const/16 v2, 0x20

    .line 246
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x20

    .line 247
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 248
    invoke-virtual {v10, v2}, Lckc;->a(Landroid/content/res/ColorStateList;)V

    :cond_2e
    const/16 v2, 0x24

    .line 249
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x24

    .line 250
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 251
    invoke-virtual {v10, v2}, Lckc;->b(Landroid/content/res/ColorStateList;)V

    :cond_2f
    const/16 v2, 0x28

    .line 252
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x28

    .line 253
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_31

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_30

    .line 254
    move-object/from16 v4, v19

    invoke-virtual {v4, v2}, Lcgj;->a(Landroid/content/res/ColorStateList;)V

    :cond_30
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_31

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    :cond_31
    const/16 v2, 0x13

    .line 256
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_32

    const/16 v2, 0x13

    .line 257
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_32

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    :cond_32
    const/16 v2, 0x11

    .line 259
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v2, 0x11

    .line 260
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_33

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    :cond_33
    const/16 v2, 0x30

    .line 262
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_34

    const/16 v2, 0x30

    .line 263
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/content/res/ColorStateList;)V

    :cond_34
    const/16 v2, 0x33

    .line 265
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v2, 0x33

    .line 266
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 267
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_35
    const/16 v2, 0x3d

    .line 268
    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x3d

    .line 269
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 270
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_36
    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    move/from16 v3, v27

    if-eq v2, v3, :cond_38

    if-eqz v3, :cond_37

    new-instance v2, Lnq;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    const v4, 0x7f0a01a6

    .line 272
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 273
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 274
    const/4 v4, 0x2

    invoke-virtual {v10, v2, v4}, Lckc;->a(Landroid/widget/TextView;I)V

    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 275
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 277
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 278
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    goto :goto_d

    .line 284
    :cond_37
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 281
    const/4 v4, 0x2

    invoke-virtual {v10, v2, v4}, Lckc;->b(Landroid/widget/TextView;I)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 280
    :goto_d
    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    :cond_38
    nop

    .line 282
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lrn;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 283
    invoke-virtual {v1}, Lrn;->a()V

    .line 284
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lge;->a(Landroid/view/View;I)V

    return-void

    :array_0
    .array-data 4
        0x12
        0x10
        0x1f
        0x23
        0x27
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_4
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method private final A()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    .line 342
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private final B()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final C()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:Z

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Landroid/content/res/ColorStateList;

    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:Z

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/graphics/PorterDuff$Mode;

    .line 334
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private final D()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 643
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Landroid/widget/LinearLayout;

    .line 644
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Landroid/widget/LinearLayout;

    .line 647
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:I

    if-eq v6, v0, :cond_2

    :cond_1
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 648
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:I

    .line 649
    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 650
    invoke-static {v0}, Lhz;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 651
    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 652
    aget-object v8, v0, v5

    aget-object v9, v0, v2

    aget-object v0, v0, v3

    invoke-static {v6, v7, v8, v9, v0}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 658
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 645
    invoke-static {v0}, Lhz;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 646
    aget-object v7, v0, v5

    aget-object v8, v0, v2

    aget-object v0, v0, v3

    invoke-static {v6, v4, v7, v8, v0}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 652
    :goto_0
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 653
    invoke-virtual {v6}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 654
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    if-eqz v6, :cond_e

    :cond_7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroid/widget/LinearLayout;

    .line 655
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_e

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/widget/TextView;

    .line 659
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 660
    invoke-virtual {v7}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_1

    .line 669
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 661
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_1

    :cond_9
    nop

    .line 660
    :goto_1
    if-eqz v4, :cond_a

    .line 662
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 663
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 664
    invoke-static {v4}, Lhz;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    add-int/2addr v6, v4

    goto :goto_2

    .line 669
    :cond_a
    nop

    .line 664
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 665
    invoke-static {v4}, Lhz;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_b

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    if-eq v8, v6, :cond_b

    iput v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    .line 670
    invoke-virtual {v7, v1, v1, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 671
    aget-object v1, v4, v1

    aget-object v2, v4, v5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    aget-object v3, v4, v3

    invoke-static {v0, v1, v2, v6, v3}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 666
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    iput v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    .line 667
    invoke-virtual {v7, v1, v1, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    nop

    .line 668
    aget-object v2, v4, v2

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    if-eq v2, v6, :cond_d

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 669
    aget-object v1, v4, v1

    aget-object v2, v4, v5

    aget-object v3, v4, v3

    invoke-static {v0, v1, v2, v6, v3}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_d
    goto :goto_4

    .line 661
    :cond_e
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 656
    invoke-static {v6}, Lhz;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 657
    aget-object v2, v6, v2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    if-ne v2, v7, :cond_f

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 658
    aget-object v1, v6, v1

    aget-object v2, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:Landroid/graphics/drawable/Drawable;

    aget-object v3, v6, v3

    invoke-static {v0, v1, v2, v7, v3}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 657
    :cond_f
    move v5, v0

    .line 658
    :goto_3
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_10
    nop

    .line 671
    :goto_4
    move v5, v0

    :goto_5
    return v5

    .line 646
    :cond_11
    return v1
.end method

.method private final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    instance-of v0, v0, Lcjn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final F()V
    .locals 11

    .line 475
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 476
    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    move-result v3

    iget-object v4, v1, Lcgj;->m:Ljava/lang/CharSequence;

    .line 477
    invoke-virtual {v1, v4}, Lcgj;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v1, Lcgj;->o:Z

    const/4 v5, 0x1

    const/16 v6, 0x11

    const/4 v7, 0x5

    const v8, 0x800005

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_6

    and-int/lit8 v10, v3, 0x7

    if-ne v10, v5, :cond_1

    goto :goto_1

    .line 484
    :cond_1
    and-int v10, v3, v8

    if-eq v10, v8, :cond_4

    and-int/lit8 v10, v3, 0x5

    if-ne v10, v7, :cond_2

    goto :goto_0

    .line 479
    :cond_2
    if-eqz v4, :cond_3

    iget-object v4, v1, Lcgj;->e:Landroid/graphics/Rect;

    .line 480
    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcgj;->a()F

    move-result v10

    sub-float/2addr v4, v10

    goto :goto_2

    :cond_3
    iget-object v4, v1, Lcgj;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    goto :goto_2

    .line 484
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    iget-object v4, v1, Lcgj;->e:Landroid/graphics/Rect;

    .line 479
    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    goto :goto_2

    :cond_5
    iget-object v4, v1, Lcgj;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcgj;->a()F

    move-result v10

    sub-float/2addr v4, v10

    goto :goto_2

    .line 477
    :cond_6
    :goto_1
    int-to-float v4, v2

    div-float/2addr v4, v9

    .line 478
    invoke-virtual {v1}, Lcgj;->a()F

    move-result v10

    div-float/2addr v10, v9

    sub-float/2addr v4, v10

    :goto_2
    iput v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, v1, Lcgj;->e:Landroid/graphics/Rect;

    .line 481
    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    if-eq v3, v6, :cond_c

    and-int/lit8 v4, v3, 0x7

    if-ne v4, v5, :cond_7

    goto :goto_4

    .line 492
    :cond_7
    and-int v2, v3, v8

    if-eq v2, v8, :cond_a

    and-int/lit8 v2, v3, 0x5

    if-ne v2, v7, :cond_8

    goto :goto_3

    .line 483
    :cond_8
    iget-boolean v2, v1, Lcgj;->o:Z

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcgj;->e:Landroid/graphics/Rect;

    .line 484
    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    goto :goto_5

    :cond_9
    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Lcgj;->a()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_5

    .line 492
    :cond_a
    :goto_3
    iget-boolean v2, v1, Lcgj;->o:Z

    if-eqz v2, :cond_b

    .line 483
    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Lcgj;->a()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_5

    :cond_b
    iget-object v2, v1, Lcgj;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    goto :goto_5

    .line 481
    :cond_c
    :goto_4
    int-to-float v2, v2

    div-float/2addr v2, v9

    .line 482
    invoke-virtual {v1}, Lcgj;->a()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    :goto_5
    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, v1, Lcgj;->e:Landroid/graphics/Rect;

    .line 485
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcgj;->b()F

    move-result v1

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 486
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 487
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 488
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 489
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 490
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    .line 491
    check-cast v1, Lcjn;

    .line 492
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcjn;->a(FFFF)V

    return-void
.end method

.method private final a(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 378
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    .line 379
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private static a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 494
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 495
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 496
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 497
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 583
    invoke-static {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method private final a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 6

    .line 499
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 500
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 502
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawableState()[I

    move-result-object v2

    .line 503
    array-length v3, v1

    .line 504
    array-length v4, v2

    add-int v5, v3, v4

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const/4 v5, 0x0

    .line 505
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 507
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 508
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v0, p2}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 510
    invoke-virtual {p1, v0}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 500
    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 580
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    invoke-static {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method private static final a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    .line 336
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 337
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 338
    invoke-static {v0, p2}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 339
    invoke-static {v0, p4}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 341
    :cond_2
    nop

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, v0, :cond_3

    .line 341
    invoke-virtual {p0, v0}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private final a(ZZ)V
    .locals 8

    .line 690
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 701
    :cond_0
    const/4 v1, 0x0

    .line 691
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 692
    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 701
    :cond_1
    const/4 v4, 0x0

    .line 692
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 693
    invoke-virtual {v5}, Lckc;->d()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 694
    invoke-virtual {v7, v6}, Lcgj;->a(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    .line 695
    invoke-virtual {v6, v7}, Lcgj;->b(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    new-array v6, v2, [I

    const v7, -0x101009e

    aput v7, v6, v3

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    .line 696
    invoke-virtual {v0, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    .line 706
    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    .line 696
    :goto_2
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 697
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcgj;->a(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 698
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcgj;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 706
    :cond_4
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-object v6, v6, Lckc;->h:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 699
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_3

    .line 700
    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v0, v6}, Lcgj;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 702
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcgj;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 701
    invoke-virtual {v6, v0}, Lcgj;->a(Landroid/content/res/ColorStateList;)V

    .line 698
    :cond_8
    :goto_4
    if-nez v1, :cond_f

    .line 703
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v4, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    goto :goto_6

    .line 718
    :cond_a
    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-nez p2, :cond_10

    :cond_b
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_c

    .line 704
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    .line 705
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    const/4 p2, 0x0

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aB:Z

    if-eqz p1, :cond_d

    .line 707
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_5

    .line 715
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 706
    invoke-virtual {p1, p2}, Lcgj;->b(F)V

    .line 708
    :goto_5
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    check-cast p1, Lcjn;

    iget-object p1, p1, Lcjn;->f:Landroid/graphics/RectF;

    .line 709
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 710
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    .line 711
    check-cast p1, Lcjn;

    .line 712
    invoke-virtual {p1, p2, p2, p2, p2}, Lcjn;->a(FFFF)V

    :cond_e
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    .line 713
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 714
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 715
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    return-void

    .line 703
    :cond_f
    :goto_6
    if-nez p2, :cond_11

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-eqz p2, :cond_10

    goto :goto_7

    .line 718
    :cond_10
    return-void

    .line 703
    :cond_11
    :goto_7
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_12

    .line 716
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    .line 717
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aB:Z

    if-eqz p1, :cond_13

    .line 719
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_8

    .line 724
    :cond_13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 718
    invoke-virtual {p1, p2}, Lcgj;->b(F)V

    .line 719
    :goto_8
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    .line 720
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 721
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    .line 722
    :cond_14
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 723
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 724
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()V

    return-void
.end method

.method private final b(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 380
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    .line 381
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private static b(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 4

    .line 575
    invoke-static {p0}, Lge;->D(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 579
    :cond_0
    const/4 v3, 0x1

    .line 576
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 577
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    .line 578
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setLongClickable(Z)V

    if-eq v2, v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 579
    :cond_1
    nop

    :goto_1
    invoke-static {p0, v2}, Lge;->a(Landroid/view/View;I)V

    return-void
.end method

.method private final b(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    .line 736
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 737
    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 738
    invoke-virtual {v3, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    return-void

    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method

.method private final g(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 586
    new-instance v0, Lnq;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    const v1, 0x7f0a01a9

    .line 587
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 588
    invoke-static {v0, v1}, Lge;->c(Landroid/view/View;I)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    .line 589
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->c(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    .line 590
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/widget/FrameLayout;

    .line 591
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 592
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 593
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    .line 592
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    return-void
.end method

.method private final h(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    .line 553
    :cond_0
    const/4 v4, 0x0

    .line 550
    :goto_0
    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/FrameLayout;

    if-eq v3, p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 553
    :cond_1
    nop

    .line 551
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 552
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result p1

    if-nez p1, :cond_2

    .line 553
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    :cond_2
    return-void
.end method

.method private final m()V
    .locals 4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 396
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    .line 388
    instance-of v0, v0, Lcjn;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcjn;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    invoke-direct {v0, v2}, Lcjn;-><init>(Lchq;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Lchl;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    invoke-direct {v0, v2}, Lchl;-><init>(Lchq;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    .line 390
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    goto :goto_1

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    .line 397
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_2
    new-instance v0, Lchl;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    invoke-direct {v0, v1}, Lchl;-><init>(Lchq;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    new-instance v0, Lchl;

    .line 392
    invoke-direct {v0}, Lchl;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    goto :goto_1

    .line 397
    :cond_3
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    if-eqz v1, :cond_4

    .line 393
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    .line 394
    invoke-static {v0, v1}, Lge;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eqz v0, :cond_5

    .line 396
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    :cond_5
    return-void
.end method

.method private final n()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/widget/FrameLayout;

    .line 685
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 686
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()I

    move-result v1

    .line 687
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/widget/FrameLayout;

    .line 688
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->b(I)V

    return-void
.end method

.method private final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final r()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 735
    :cond_0
    nop

    .line 734
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    return-void
.end method

.method private final s()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 730
    invoke-static {v0}, Lge;->h(Landroid/view/View;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 731
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 732
    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v4

    .line 733
    invoke-static {v2, v0, v3, v1, v4}, Lge;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method private final t()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/widget/TextView;

    .line 743
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 747
    :cond_0
    const/4 v1, 0x0

    .line 743
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/widget/TextView;

    if-eq v2, v1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    .line 747
    :cond_1
    nop

    .line 744
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/widget/TextView;

    .line 745
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()Lcka;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcka;->a(Z)V

    .line 747
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    return-void
.end method

.method private final u()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 740
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 739
    invoke-static {v0}, Lge;->i(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 740
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 741
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 742
    invoke-static {v2, v1, v3, v0, v4}, Lge;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method private final v()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:I

    goto :goto_0

    .line 642
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 640
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 641
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 642
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private final w()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 343
    invoke-virtual {v0}, Lcgj;->b()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 344
    invoke-virtual {v0}, Lcgj;->b()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final x()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 386
    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final y()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final z()Lcka;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    .line 375
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcka;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 376
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcka;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(F)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget v0, v0, Lcgj;->c:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    .line 328
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    .line 329
    sget-object v1, Lccy;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    .line 331
    new-instance v1, Lckp;

    invoke-direct {v1, p0}, Lckp;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget v3, v3, Lcgj;->c:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 332
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aC:Landroid/animation/ValueAnimator;

    .line 333
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final a(I)V
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 609
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 610
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    goto/16 :goto_d

    .line 639
    :cond_0
    const/4 v5, 0x1

    if-le p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 622
    :cond_1
    const/4 v1, 0x0

    .line 639
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    .line 611
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    iget-boolean v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eq v5, v8, :cond_2

    const v8, 0x7f110032

    goto :goto_1

    .line 622
    :cond_2
    const v8, 0x7f110033

    .line 611
    :goto_1
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 612
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v4

    .line 613
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v5

    .line 614
    invoke-virtual {v1, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eq v0, v1, :cond_3

    .line 616
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 617
    :cond_3
    invoke-static {}, Luz;->a()Luz;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    .line 618
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v4

    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:I

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v5

    const p1, 0x7f110034

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v7, v1, Luz;->g:Lva;

    if-nez p1, :cond_4

    goto/16 :goto_c

    .line 620
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v7, p1, v2}, Lva;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 621
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v2, :cond_5

    .line 622
    sget-object v8, Lvh;->b:Lva;

    goto :goto_2

    :cond_5
    sget-object v8, Lvh;->a:Lva;

    .line 623
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v8, p1, v9}, Lva;->a(Ljava/lang/CharSequence;I)Z

    move-result v8

    iget-boolean v9, v1, Luz;->f:Z

    const-string v10, ""

    if-nez v9, :cond_8

    if-nez v8, :cond_7

    .line 624
    invoke-static {p1}, Luz;->b(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne v8, v5, :cond_6

    goto :goto_3

    .line 630
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 624
    :cond_7
    :goto_3
    sget-object v8, Luz;->b:Ljava/lang/String;

    goto :goto_5

    .line 630
    :cond_8
    :goto_4
    iget-boolean v9, v1, Luz;->f:Z

    if-eqz v9, :cond_a

    if-eqz v8, :cond_9

    .line 625
    invoke-static {p1}, Luz;->b(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne v8, v3, :cond_a

    :cond_9
    sget-object v8, Luz;->c:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object v8, v10

    .line 626
    :goto_5
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-boolean v8, v1, Luz;->f:Z

    if-eq v2, v8, :cond_c

    if-eq v5, v2, :cond_b

    const/16 v8, 0x202a

    goto :goto_6

    .line 633
    :cond_b
    const/16 v8, 0x202b

    .line 627
    :goto_6
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 628
    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v8, 0x202c

    .line 629
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    .line 630
    :cond_c
    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 629
    :goto_7
    if-eqz v2, :cond_d

    sget-object v2, Lvh;->b:Lva;

    goto :goto_8

    .line 633
    :cond_d
    sget-object v2, Lvh;->a:Lva;

    .line 631
    :goto_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v2, p1, v8}, Lva;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    iget-boolean v8, v1, Luz;->f:Z

    if-nez v8, :cond_10

    if-nez v2, :cond_f

    .line 632
    invoke-static {p1}, Luz;->a(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v5, :cond_e

    goto :goto_9

    .line 635
    :cond_e
    const/4 v2, 0x0

    goto :goto_a

    .line 632
    :cond_f
    :goto_9
    sget-object v10, Luz;->b:Ljava/lang/String;

    goto :goto_b

    .line 635
    :cond_10
    :goto_a
    iget-boolean v1, v1, Luz;->f:Z

    if-eqz v1, :cond_12

    if-eqz v2, :cond_11

    .line 633
    invoke-static {p1}, Luz;->a(Ljava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v3, :cond_12

    :cond_11
    sget-object v10, Luz;->c:Ljava/lang/String;

    goto :goto_b

    :cond_12
    nop

    .line 634
    :goto_b
    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 635
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    :goto_c
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :goto_d
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eq v0, p1, :cond_13

    .line 637
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 639
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    :cond_13
    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:Z

    .line 528
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 548
    invoke-virtual {v0, p1}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean p1, p1, Lckc;->g:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->h(Z)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 526
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;I)V
    .locals 1

    .line 602
    :try_start_0
    invoke-static {p1, p2}, Lhz;->a(Landroid/widget/TextView;I)V

    .line 603
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 604
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, -0xff01

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    return-void

    :catch_0
    move-exception p2

    .line 604
    :goto_0
    const p2, 0x7f1201cf

    .line 605
    invoke-static {p1, p2}, Lhz;->a(Landroid/widget/TextView;I)V

    .line 606
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060056

    invoke-static {p2, v0}, Ltt;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(Lckq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 607
    invoke-static {v0, p1}, Lge;->a(Landroid/view/View;Lfl;)V

    :cond_0
    return-void
.end method

.method public final a(Lckr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Ljava/util/LinkedHashSet;

    .line 285
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {p1, p0}, Lckr;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    return-void
.end method

.method public final a(Lcks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Ljava/util/LinkedHashSet;

    .line 287
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    .line 570
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcgj;->m:Ljava/lang/CharSequence;

    .line 571
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object p1, v0, Lcgj;->m:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Lcgj;->n:Ljava/lang/CharSequence;

    .line 572
    invoke-virtual {v0}, Lcgj;->e()V

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-nez p1, :cond_2

    .line 573
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    :cond_2
    const/16 p1, 0x800

    .line 574
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 288
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_b

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/widget/FrameLayout;

    .line 291
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/widget/FrameLayout;

    .line 292
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()V

    .line 294
    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez p2, :cond_a

    .line 295
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    .line 296
    instance-of p2, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez p2, :cond_0

    .line 297
    const-string p2, "TextInputLayout"

    const-string p3, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 298
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 299
    new-instance p2, Lckq;

    invoke-direct {p2, p0}, Lckq;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lckq;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 300
    invoke-virtual {p3}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    .line 301
    invoke-virtual {p2, p3}, Lcgj;->a(Landroid/graphics/Typeface;)Z

    move-result v0

    iget-object v1, p2, Lcgj;->l:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p3, :cond_1

    iput-object p3, p2, Lcgj;->l:Landroid/graphics/Typeface;

    const/4 p3, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 p3, 0x0

    .line 301
    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_3

    .line 302
    :cond_2
    invoke-virtual {p2}, Lcgj;->e()V

    :cond_3
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 303
    invoke-virtual {p3}, Landroid/widget/EditText;->getTextSize()F

    move-result p3

    invoke-virtual {p2, p3}, Lcgj;->a(F)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 304
    invoke-virtual {p2}, Landroid/widget/EditText;->getGravity()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    and-int/lit8 v0, p2, -0x71

    or-int/lit8 v0, v0, 0x30

    .line 305
    invoke-virtual {p3, v0}, Lcgj;->b(I)V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 306
    invoke-virtual {p3, p2}, Lcgj;->a(I)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance p3, Lckm;

    .line 307
    invoke-direct {p3, p0}, Lckm;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 308
    invoke-virtual {p2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/content/res/ColorStateList;

    :cond_4
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    .line 309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 310
    invoke-virtual {p2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 p3, 0x0

    .line 312
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    :cond_6
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 313
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    .line 314
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 315
    invoke-virtual {p2}, Lckc;->c()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Landroid/widget/LinearLayout;

    .line 316
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroid/widget/LinearLayout;

    .line 317
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/FrameLayout;

    .line 318
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 319
    invoke-virtual {p2}, Lcom/google/android/material/internal/CheckableImageButton;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Ljava/util/LinkedHashSet;

    .line 320
    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lckr;

    .line 321
    invoke-interface {p3, p0}, Lckr;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_1

    .line 322
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 323
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_9

    .line 325
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_9
    nop

    .line 326
    invoke-direct {p0, v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    return-void

    .line 294
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 295
    const-string p2, "We already have an EditText, can only have one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Ljava/lang/CharSequence;

    .line 727
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 728
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    .line 729
    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    return-void

    .line 726
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:Z

    .line 527
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 517
    invoke-virtual {v0, p1}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 594
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 595
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean v1, v0, Lckc;->g:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {v0}, Lckc;->b()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 534
    new-instance v2, Lnq;

    iget-object v3, v0, Lckc;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    iget-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    const v3, 0x7f0a01a7

    .line 535
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 536
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    const/4 v3, 0x5

    .line 537
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget v2, v0, Lckc;->j:I

    .line 538
    invoke-virtual {v0, v2}, Lckc;->a(I)V

    iget-object v2, v0, Lckc;->k:Landroid/content/res/ColorStateList;

    .line 539
    invoke-virtual {v0, v2}, Lckc;->a(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lckc;->i:Ljava/lang/CharSequence;

    .line 540
    invoke-virtual {v0, v2}, Lckc;->a(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    const/4 v3, 0x4

    .line 541
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 542
    invoke-static {v2, v3}, Lge;->c(Landroid/view/View;I)V

    iget-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    .line 543
    invoke-virtual {v0, v2, v1}, Lckc;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {v0}, Lckc;->a()V

    iget-object v2, v0, Lckc;->h:Landroid/widget/TextView;

    .line 545
    invoke-virtual {v0, v2, v1}, Lckc;->b(Landroid/widget/TextView;I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lckc;->h:Landroid/widget/TextView;

    iget-object v1, v0, Lckc;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 546
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    iget-object v1, v0, Lckc;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 547
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 543
    :goto_0
    iput-boolean p1, v0, Lckc;->g:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean v0, v0, Lckc;->m:Z

    return v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 673
    :cond_1
    invoke-static {v0}, Loh;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 675
    invoke-virtual {v1}, Lckc;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 676
    invoke-virtual {v1}, Lckc;->e()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 677
    invoke-static {v1, v2}, Lmq;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 678
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 682
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 683
    invoke-static {v1, v2}, Lmq;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 684
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 679
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 680
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 681
    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    return-void

    .line 0
    :cond_5
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 584
    invoke-static {v0, p1}, Lhz;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 515
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 516
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean v1, v0, Lckc;->m:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-virtual {v0}, Lckc;->b()V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 555
    new-instance v2, Lnq;

    iget-object v3, v0, Lckc;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    iget-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    const v3, 0x7f0a01a8

    .line 556
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 557
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    const/4 v3, 0x5

    .line 558
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    const/4 v3, 0x4

    .line 559
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    .line 560
    invoke-static {v2, v1}, Lge;->c(Landroid/view/View;I)V

    iget v2, v0, Lckc;->o:I

    .line 561
    invoke-virtual {v0, v2}, Lckc;->b(I)V

    iget-object v2, v0, Lckc;->p:Landroid/content/res/ColorStateList;

    .line 562
    invoke-virtual {v0, v2}, Lckc;->b(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    .line 563
    invoke-virtual {v0, v2, v1}, Lckc;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {v0}, Lckc;->b()V

    iget v2, v0, Lckc;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v3, 0x0

    iput v3, v0, Lckc;->e:I

    :cond_2
    iget v3, v0, Lckc;->e:I

    iget-object v4, v0, Lckc;->n:Landroid/widget/TextView;

    .line 565
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lckc;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 566
    invoke-virtual {v0, v2, v3, v4}, Lckc;->a(IIZ)V

    iget-object v2, v0, Lckc;->n:Landroid/widget/TextView;

    .line 567
    invoke-virtual {v0, v2, v1}, Lckc;->b(Landroid/widget/TextView;I)V

    iput-object v5, v0, Lckc;->n:Landroid/widget/TextView;

    iget-object v1, v0, Lckc;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 568
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    iget-object v1, v0, Lckc;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 569
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    .line 563
    :goto_0
    iput-boolean p1, v0, Lckc;->m:Z

    return-void
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean v1, v0, Lckc;->g:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lckc;->f:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Ljava/util/LinkedHashSet;

    .line 519
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcks;

    .line 520
    invoke-interface {v2, p0, v0}, Lcks;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 525
    :cond_1
    const/4 v0, 0x0

    .line 521
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->e(Z)V

    .line 522
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()Lcka;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    invoke-virtual {v0, v1}, Lcka;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()Lcka;

    move-result-object p1

    invoke-virtual {p1}, Lcka;->a()V

    .line 524
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    .line 525
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "The current box background mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported by the end icon mode "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final d(Z)V
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    .line 601
    :cond_0
    const/4 p1, 0x0

    .line 599
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 600
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 601
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    :cond_1
    return-void
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 347
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Ljava/lang/CharSequence;

    .line 348
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 349
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 350
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    return-void

    .line 349
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 350
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Z

    .line 351
    throw p1

    .line 346
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    .line 352
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 353
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, v0, Lcgj;->n:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcgj;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcgj;->B:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    .line 355
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    iget-object v2, v0, Lcgj;->t:Landroid/text/TextPaint;

    iget v3, v0, Lcgj;->q:F

    .line 356
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v2, v0, Lcgj;->j:F

    iget v3, v0, Lcgj;->k:F

    iget v4, v0, Lcgj;->p:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 357
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 358
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v0, Lcgj;->B:Landroid/text/StaticLayout;

    .line 359
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 360
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lchl;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 362
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    .line 363
    invoke-virtual {v0, p1}, Lchl;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:Z

    .line 364
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iput-object v1, v2, Lcgj;->r:[I

    iget-object v1, v2, Lcgj;->i:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v2, Lcgj;->h:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    :cond_2
    invoke-virtual {v2}, Lcgj;->e()V

    const/4 v1, 0x1

    goto :goto_0

    .line 372
    :cond_3
    const/4 v1, 0x0

    .line 368
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    .line 369
    invoke-static {p0}, Lge;->z(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 372
    :cond_4
    const/4 v0, 0x0

    .line 369
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 370
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()V

    if-eqz v1, :cond_6

    .line 372
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    :cond_6
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aD:Z

    return-void
.end method

.method public final e(Z)V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    .line 532
    :cond_0
    const/4 p1, 0x0

    .line 530
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 531
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 532
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 387
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    .line 511
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 514
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->a(Z)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroid/widget/FrameLayout;

    .line 384
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBaseline()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 374
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:Landroid/content/res/ColorStateList;

    .line 498
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final i()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 377
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 749
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    .line 755
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    .line 750
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->az:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_3

    .line 765
    :cond_5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 751
    invoke-virtual {v4}, Lckc;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    .line 752
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->b(ZZ)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 753
    invoke-virtual {v4}, Lckc;->e()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_3

    :cond_7
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->au:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_8

    .line 754
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->b(ZZ)V

    goto :goto_3

    .line 755
    :cond_8
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->at:I

    :goto_2
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->as:I

    goto :goto_2

    :cond_b
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:I

    goto :goto_2

    .line 750
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    .line 756
    invoke-virtual {v4}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean v5, v4, Lckc;->g:Z

    if-eqz v5, :cond_c

    .line 757
    invoke-virtual {v4}, Lckc;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x1

    goto :goto_4

    .line 765
    :cond_c
    nop

    .line 758
    :goto_4
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->h(Z)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Landroid/content/res/ColorStateList;

    .line 759
    invoke-direct {p0, v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 760
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    .line 762
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()Lcka;

    move-result-object v1

    invoke-virtual {v1}, Lcka;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 763
    invoke-virtual {v1}, Lckc;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 764
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 766
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 767
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 766
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 768
    invoke-virtual {v4}, Lckc;->e()I

    move-result v4

    .line 769
    invoke-static {v1, v4}, Ley;->a(Landroid/graphics/drawable/Drawable;I)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    .line 770
    invoke-virtual {v4, v1}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 765
    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    .line 770
    :cond_e
    :goto_5
    if-eqz v0, :cond_f

    .line 771
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    goto :goto_6

    .line 780
    :cond_f
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:I

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    .line 771
    :goto_6
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-ne v1, v2, :cond_13

    .line 772
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aw:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    goto :goto_8

    .line 780
    :cond_10
    if-eqz v3, :cond_11

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ay:I

    goto :goto_7

    :cond_11
    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ax:I

    goto :goto_7

    :cond_12
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->av:I

    :goto_7
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 772
    :cond_13
    :goto_8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Lchq;

    .line 773
    invoke-virtual {v0, v1}, Lchl;->a(Lchq;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 774
    invoke-virtual {v0, v1, v3}, Lchl;->a(FI)V

    :cond_15
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-ne v1, v2, :cond_16

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0400c8

    invoke-static {v0, v1}, Lcrj;->a(Landroid/content/Context;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 776
    invoke-static {v1, v0}, Ldy;->a(II)I

    move-result v0

    :cond_16
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Lchl;

    .line 777
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lchl;->a(Landroid/content/res/ColorStateList;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 778
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    if-nez v0, :cond_18

    goto :goto_9

    .line 781
    :cond_18
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    .line 779
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchl;->a(Landroid/content/res/ColorStateList;)V

    .line 780
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 781
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    return-void

    .line 0
    :cond_1a
    :goto_a
    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 596
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Lcom/google/android/material/internal/CheckableImageButton;

    .line 597
    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    .line 398
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Landroid/graphics/Rect;

    .line 399
    invoke-static {p0, p1, p2}, Lcgk;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    if-eqz p1, :cond_0

    .line 400
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lchl;

    .line 401
    iget p5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, p5, p1, p3, v0}, Lchl;->setBounds(IIII)V

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 402
    invoke-virtual {p3}, Landroid/widget/EditText;->getTextSize()F

    move-result p3

    invoke-virtual {p1, p3}, Lcgj;->a(F)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 403
    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    and-int/lit8 p4, p1, -0x71

    or-int/lit8 p4, p4, 0x30

    .line 404
    invoke-virtual {p3, p4}, Lcgj;->b(I)V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 405
    invoke-virtual {p3, p1}, Lcgj;->a(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p3, :cond_9

    .line 406
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;

    .line 407
    invoke-static {p0}, Lge;->g(Landroid/view/View;)I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    .line 414
    :cond_1
    const/4 p4, 0x0

    .line 408
    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eq v0, p5, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 415
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->a(IZ)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 417
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->b(IZ)I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 409
    :cond_2
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 410
    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 411
    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 412
    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->a(IZ)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 413
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 414
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0, p4}, Lcom/google/android/material/textfield/TextInputLayout;->b(IZ)I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 418
    :goto_1
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Lcgj;->e:Landroid/graphics/Rect;

    .line 419
    invoke-static {v2, p4, v0, v1, p3}, Lcgj;->a(Landroid/graphics/Rect;IIII)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcgj;->e:Landroid/graphics/Rect;

    .line 420
    invoke-virtual {v2, p4, v0, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p5, p1, Lcgj;->s:Z

    .line 421
    invoke-virtual {p1}, Lcgj;->c()V

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p3, :cond_8

    .line 422
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/graphics/Rect;

    iget-object p4, p1, Lcgj;->u:Landroid/text/TextPaint;

    iget v0, p1, Lcgj;->f:F

    .line 423
    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p1, Lcgj;->l:Landroid/graphics/Typeface;

    .line 424
    invoke-virtual {p4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p4, p1, Lcgj;->u:Landroid/text/TextPaint;

    .line 425
    invoke-virtual {p4}, Landroid/text/TextPaint;->ascent()F

    move-result p4

    neg-float p4, p4

    .line 426
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    .line 429
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :goto_2
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 430
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 431
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    goto :goto_3

    .line 433
    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    .line 432
    :goto_3
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 434
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Lcgj;->d:Landroid/graphics/Rect;

    .line 435
    invoke-static {v1, p2, p4, v0, p3}, Lcgj;->a(Landroid/graphics/Rect;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcgj;->d:Landroid/graphics/Rect;

    .line 436
    invoke-virtual {v1, p2, p4, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p5, p1, Lcgj;->s:Z

    .line 437
    invoke-virtual {p1}, Lcgj;->c()V

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Lcgj;

    .line 438
    invoke-virtual {p1}, Lcgj;->e()V

    .line 439
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aA:Z

    if-nez p1, :cond_a

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    return-void

    .line 421
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 422
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 405
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 406
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 414
    :cond_a
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .line 441
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Landroid/widget/LinearLayout;

    .line 442
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 443
    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 444
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 445
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    move-result p1

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance p2, Lcko;

    .line 446
    invoke-direct {p2, p0}, Lcko;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 447
    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    .line 448
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 449
    invoke-virtual {p2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 450
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 451
    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 452
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    .line 453
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 454
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()V

    .line 455
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 456
    instance-of v0, p1, Lcku;

    if-nez v0, :cond_0

    .line 457
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 458
    :cond_0
    check-cast p1, Lcku;

    iget-object v0, p1, Lvl;->d:Landroid/os/Parcelable;

    .line 459
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 460
    iget-object v0, p1, Lcku;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    iget-boolean v1, v1, Lckc;->g:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    nop

    .line 462
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->b(Z)V

    .line 463
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 464
    invoke-virtual {v1}, Lckc;->b()V

    iput-object v0, v1, Lckc;->f:Ljava/lang/CharSequence;

    iget-object v3, v1, Lckc;->h:Landroid/widget/TextView;

    .line 465
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v1, Lckc;->d:I

    if-eq v3, v2, :cond_3

    iput v2, v1, Lckc;->e:I

    :cond_3
    iget v2, v1, Lckc;->e:I

    iget-object v4, v1, Lckc;->h:Landroid/widget/TextView;

    .line 466
    invoke-virtual {v1, v4, v0}, Lckc;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 467
    invoke-virtual {v1, v3, v2, v0}, Lckc;->a(IIZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 468
    invoke-virtual {v0}, Lckc;->a()V

    .line 469
    :goto_0
    iget-boolean p1, p1, Lcku;->b:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, Lckn;

    .line 470
    invoke-direct {v0, p0}, Lckn;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->post(Ljava/lang/Runnable;)Z

    .line 471
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 472
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 473
    new-instance v1, Lcku;

    invoke-direct {v1, v0}, Lcku;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lckc;

    .line 474
    invoke-virtual {v0}, Lckc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcku;->a:Ljava/lang/CharSequence;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->a:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v1, Lcku;->b:Z

    return-object v1
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 512
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 513
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method
