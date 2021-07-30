.class public final Liv;
.super Lid;
.source "PG"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Lkn;


# static fields
.field private static final J:Lto;

.field private static final K:[I

.field public static final d:Z

.field public static final e:Z


# instance fields
.field public A:Lit;

.field public B:Z

.field public C:Z

.field D:Z

.field public E:I

.field F:Z

.field G:I

.field public H:Landroid/graphics/Rect;

.field public I:Landroid/graphics/Rect;

.field private L:Lin;

.field private M:Ljava/lang/CharSequence;

.field private N:Lik;

.field private O:Liu;

.field private P:Landroid/widget/TextView;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:[Lit;

.field private U:Z

.field private V:Z

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:Liq;

.field private aa:Liq;

.field private final ab:Ljava/lang/Runnable;

.field private ac:Z

.field private ad:Landroid/support/v7/app/AppCompatViewInflater;

.field final f:Ljava/lang/Object;

.field final g:Landroid/content/Context;

.field public h:Landroid/view/Window;

.field final i:Lic;

.field j:Lhs;

.field k:Landroid/view/MenuInflater;

.field public l:Lnv;

.field m:Ljo;

.field n:Landroid/support/v7/widget/ActionBarContextView;

.field public o:Landroid/widget/PopupWindow;

.field public p:Ljava/lang/Runnable;

.field q:Lgi;

.field public r:Z

.field public s:Z

.field t:Landroid/view/ViewGroup;

.field public u:Landroid/view/View;

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lto;

    .line 1
    invoke-direct {v0}, Lto;-><init>()V

    sput-object v0, Liv;->J:Lto;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    sput-object v1, Liv;->K:[I

    .line 3
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 4
    const-string v2, "robolectric"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Liv;->d:Z

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput-boolean v0, Liv;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lic;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lid;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Liv;->q:Lgi;

    const/4 v1, 0x1

    iput-boolean v1, p0, Liv;->r:Z

    const/16 v1, -0x64

    iput v1, p0, Liv;->W:I

    new-instance v2, Lie;

    .line 6
    invoke-direct {v2, p0}, Lie;-><init>(Liv;)V

    iput-object v2, p0, Liv;->ab:Ljava/lang/Runnable;

    iput-object p1, p0, Liv;->g:Landroid/content/Context;

    iput-object p3, p0, Liv;->i:Lic;

    iput-object p4, p0, Liv;->f:Ljava/lang/Object;

    iget p3, p0, Liv;->W:I

    if-ne p3, v1, :cond_2

    .line 7
    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 8
    instance-of p3, p1, Lib;

    if-eqz p3, :cond_0

    .line 11
    move-object v0, p1

    check-cast v0, Lib;

    goto :goto_1

    .line 9
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 10
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    nop

    .line 11
    :goto_1
    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lib;->g()Lid;

    move-result-object p1

    check-cast p1, Liv;

    iget p1, p1, Liv;->W:I

    iput p1, p0, Liv;->W:I

    :cond_2
    iget p1, p0, Liv;->W:I

    if-ne p1, v1, :cond_3

    sget-object p1, Liv;->J:Lto;

    iget-object p3, p0, Liv;->f:Ljava/lang/Object;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Liv;->W:I

    iget-object p3, p0, Liv;->f:Ljava/lang/Object;

    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 16
    invoke-direct {p0, p2}, Liv;->a(Landroid/view/Window;)V

    .line 17
    :cond_4
    invoke-static {}, Lmq;->a()V

    return-void
.end method

.method public static final a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 80
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    .line 83
    :cond_0
    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    .line 80
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 81
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 83
    :cond_2
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    return-object p1
.end method

.method private final a(Landroid/content/Context;)Liq;
    .locals 3

    iget-object v0, p0, Liv;->Z:Liq;

    if-nez v0, :cond_1

    new-instance v0, Lir;

    sget-object v1, Ljb;->a:Ljb;

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljb;

    .line 263
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Ljb;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Ljb;->a:Ljb;

    :cond_0
    sget-object p1, Ljb;->a:Ljb;

    .line 264
    invoke-direct {v0, p0, p1}, Lir;-><init>(Liv;Ljb;)V

    iput-object v0, p0, Liv;->Z:Liq;

    :cond_1
    iget-object p1, p0, Liv;->Z:Liq;

    return-object p1
.end method

.method private final a(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 62
    instance-of v2, v0, Lin;

    if-nez v2, :cond_1

    .line 63
    new-instance v1, Lin;

    .line 64
    invoke-direct {v1, p0, v0}, Lin;-><init>(Liv;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Liv;->L:Lin;

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Liv;->K:[I

    .line 66
    invoke-static {v0, v1, v2}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lrn;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lrn;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    invoke-virtual {v0}, Lrn;->a()V

    iput-object p1, p0, Liv;->h:Landroid/view/Window;

    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Landroid/content/Context;)Liq;
    .locals 1

    iget-object v0, p0, Liv;->aa:Liq;

    if-nez v0, :cond_0

    new-instance v0, Lio;

    .line 261
    invoke-direct {v0, p0, p1}, Lio;-><init>(Liv;Landroid/content/Context;)V

    iput-object v0, p0, Liv;->aa:Liq;

    :cond_0
    iget-object p1, p0, Liv;->aa:Liq;

    return-object p1
.end method

.method private final b(Lit;Landroid/view/KeyEvent;)V
    .locals 13

    iget-boolean v0, p1, Lit;->m:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Liv;->D:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v0, p1, Lit;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 357
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 358
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    return-void

    .line 359
    :cond_2
    :goto_0
    invoke-virtual {p0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v2, p1, Lit;->a:I

    iget-object v3, p1, Lit;->h:Lkp;

    .line 360
    invoke-interface {v0, v2, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 401
    :cond_3
    nop

    .line 404
    invoke-virtual {p0, p1, v1}, Liv;->a(Lit;Z)V

    return-void

    .line 360
    :cond_4
    :goto_1
    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 361
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_5

    return-void

    .line 362
    :cond_5
    invoke-virtual {p0, p1, p2}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p1, Lit;->e:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz p2, :cond_9

    iget-boolean v5, p1, Lit;->n:Z

    if-eqz v5, :cond_7

    goto :goto_2

    .line 382
    :cond_7
    iget-object p2, p1, Lit;->g:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 400
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 401
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v2, :cond_8

    const/4 v6, -0x1

    goto/16 :goto_8

    :cond_8
    const/4 v6, -0x2

    goto/16 :goto_8

    .line 362
    :cond_9
    :goto_2
    if-nez p2, :cond_d

    .line 363
    invoke-virtual {p0}, Liv;->i()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Landroid/util/TypedValue;

    .line 364
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 365
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 366
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f040002

    .line 367
    invoke-virtual {v5, v6, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 368
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    .line 369
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f0401f9

    .line 370
    invoke-virtual {v5, v6, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 371
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_b

    .line 372
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    .line 389
    :cond_b
    const v2, 0x7f12024f

    .line 373
    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 372
    :goto_3
    new-instance v2, Ljp;

    .line 374
    invoke-direct {v2, p2, v3}, Ljp;-><init>(Landroid/content/Context;I)V

    .line 375
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v2, p1, Lit;->j:Landroid/content/Context;

    .line 376
    sget-object p2, Ljh;->j:[I

    invoke-virtual {v2, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v2, 0x56

    .line 377
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lit;->b:I

    .line 378
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lit;->d:I

    .line 379
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lis;

    iget-object v2, p1, Lit;->j:Landroid/content/Context;

    .line 380
    invoke-direct {p2, p0, v2}, Lis;-><init>(Liv;Landroid/content/Context;)V

    iput-object p2, p1, Lit;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Lit;->c:I

    iget-object p2, p1, Lit;->e:Landroid/view/ViewGroup;

    if-eqz p2, :cond_c

    goto :goto_4

    .line 389
    :cond_c
    return-void

    .line 373
    :cond_d
    iget-boolean v2, p1, Lit;->n:Z

    if-eqz v2, :cond_e

    .line 381
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_e

    iget-object p2, p1, Lit;->e:Landroid/view/ViewGroup;

    .line 382
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 380
    :cond_e
    :goto_4
    iget-object p2, p1, Lit;->g:Landroid/view/View;

    if-eqz p2, :cond_f

    iput-object p2, p1, Lit;->f:Landroid/view/View;

    goto :goto_6

    .line 390
    :cond_f
    iget-object p2, p1, Lit;->h:Lkp;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Liv;->O:Liu;

    if-nez p2, :cond_10

    new-instance p2, Liu;

    .line 383
    invoke-direct {p2, p0}, Liu;-><init>(Liv;)V

    iput-object p2, p0, Liv;->O:Liu;

    :cond_10
    iget-object p2, p0, Liv;->O:Liu;

    iget-object v2, p1, Lit;->h:Lkp;

    if-nez v2, :cond_11

    const/4 p2, 0x0

    goto :goto_5

    :cond_11
    iget-object v2, p1, Lit;->i:Lkl;

    if-nez v2, :cond_12

    new-instance v2, Lkl;

    iget-object v5, p1, Lit;->j:Landroid/content/Context;

    .line 384
    invoke-direct {v2, v5}, Lkl;-><init>(Landroid/content/Context;)V

    iput-object v2, p1, Lit;->i:Lkl;

    iget-object v2, p1, Lit;->i:Lkl;

    iput-object p2, v2, Lkl;->g:Llc;

    iget-object p2, p1, Lit;->h:Lkp;

    .line 385
    invoke-virtual {p2, v2}, Lkp;->a(Lld;)V

    :cond_12
    iget-object p2, p1, Lit;->i:Lkl;

    iget-object v2, p1, Lit;->e:Landroid/view/ViewGroup;

    iget-object v5, p2, Lkl;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v5, :cond_14

    iget-object v5, p2, Lkl;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f0d000d

    .line 386
    invoke-virtual {v5, v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v2, p2, Lkl;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v2, p2, Lkl;->h:Lkk;

    if-nez v2, :cond_13

    new-instance v2, Lkk;

    .line 387
    invoke-direct {v2, p2}, Lkk;-><init>(Lkl;)V

    iput-object v2, p2, Lkl;->h:Lkk;

    :cond_13
    iget-object v2, p2, Lkl;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v5, p2, Lkl;->h:Lkk;

    .line 388
    invoke-virtual {v2, v5}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p2, Lkl;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 389
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_14
    iget-object p2, p2, Lkl;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 383
    :goto_5
    iput-object p2, p1, Lit;->f:Landroid/view/View;

    iget-object p2, p1, Lit;->f:Landroid/view/View;

    if-eqz p2, :cond_1a

    .line 380
    :goto_6
    iget-object p2, p1, Lit;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    :cond_15
    iget-object p2, p1, Lit;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_7

    .line 403
    :cond_16
    iget-object p2, p1, Lit;->i:Lkl;

    .line 390
    invoke-virtual {p2}, Lkl;->c()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_1a

    .line 380
    :goto_7
    iget-object p2, p1, Lit;->f:Landroid/view/View;

    .line 391
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_17

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 392
    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_17
    iget v2, p1, Lit;->b:I

    iget-object v5, p1, Lit;->e:Landroid/view/ViewGroup;

    .line 393
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v2, p1, Lit;->f:Landroid/view/View;

    .line 394
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 395
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    .line 396
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, p1, Lit;->f:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    iget-object v2, p1, Lit;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lit;->f:Landroid/view/View;

    .line 397
    invoke-virtual {v2, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lit;->f:Landroid/view/View;

    .line 398
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_19

    iget-object p2, p1, Lit;->f:Landroid/view/View;

    .line 399
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 v6, -0x2

    goto :goto_8

    .line 403
    :cond_19
    const/4 v6, -0x2

    .line 399
    :goto_8
    iput-boolean v3, p1, Lit;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    .line 402
    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Lit;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Lit;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Lit;->e:Landroid/view/ViewGroup;

    .line 403
    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Lit;->m:Z

    return-void

    .line 380
    :cond_1a
    :goto_9
    iput-boolean v1, p1, Lit;->n:Z

    return-void

    .line 0
    :cond_1b
    :goto_a
    return-void
.end method

.method private final f(I)V
    .locals 2

    iget v0, p0, Liv;->G:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Liv;->G:I

    iget-boolean p1, p0, Liv;->F:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Liv;->h:Landroid/view/Window;

    .line 283
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Liv;->ab:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Liv;->F:Z

    :cond_0
    return-void
.end method

.method private final p()V
    .locals 2

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Liv;->f:Ljava/lang/Object;

    .line 253
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Liv;->a(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 255
    return-void

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 255
    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final q()V
    .locals 2

    iget-boolean v0, p0, Liv;->s:Z

    if-nez v0, :cond_0

    .line 513
    return-void

    .line 0
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 513
    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Landroid/content/Context;I)I
    .locals 21

    move/from16 v0, p2

    const/16 v1, -0x64

    const/4 v2, -0x1

    if-eq v0, v1, :cond_13

    if-eq v0, v2, :cond_12

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_12

    if-eq v0, v1, :cond_12

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 284
    invoke-direct/range {p0 .. p1}, Liv;->b(Landroid/content/Context;)Liq;

    move-result-object v0

    .line 285
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 284
    check-cast v0, Lio;

    iget-object v0, v0, Lio;->a:Landroid/os/PowerManager;

    .line 286
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 312
    const-string v1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Landroid/app/UiModeManager;

    .line 289
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 290
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-eqz v0, :cond_11

    .line 291
    invoke-direct/range {p0 .. p1}, Liv;->a(Landroid/content/Context;)Liq;

    move-result-object v0

    check-cast v0, Lir;

    iget-object v0, v0, Lir;->a:Ljb;

    iget-object v2, v0, Ljb;->c:Lja;

    iget-wide v4, v2, Lja;->b:J

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    iget-boolean v0, v2, Lja;->a:Z

    goto/16 :goto_7

    :cond_3
    iget-object v4, v0, Ljb;->b:Landroid/content/Context;

    .line 293
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Ley;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 294
    const-string v4, "network"

    invoke-virtual {v0, v4}, Ljb;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    goto :goto_0

    .line 311
    :cond_4
    move-object v4, v5

    .line 294
    :goto_0
    iget-object v6, v0, Ljb;->b:Landroid/content/Context;

    .line 295
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Ley;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 296
    const-string v5, "gps"

    invoke-virtual {v0, v5}, Ljb;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    goto :goto_1

    .line 311
    :cond_5
    nop

    .line 296
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 297
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_7

    goto :goto_2

    .line 311
    :cond_6
    if-eqz v5, :cond_7

    .line 297
    :goto_2
    move-object v4, v5

    :cond_7
    if-eqz v4, :cond_e

    iget-object v0, v0, Ljb;->c:Lja;

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v5, Liz;->a:Liz;

    if-nez v5, :cond_8

    new-instance v5, Liz;

    invoke-direct {v5}, Liz;-><init>()V

    sput-object v5, Liz;->a:Liz;

    :cond_8
    sget-object v10, Liz;->a:Liz;

    const-wide/32 v5, -0x5265c00

    add-long v15, v12, v5

    .line 299
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 300
    move-object v14, v10

    invoke-virtual/range {v14 .. v20}, Liz;->a(JDD)V

    .line 301
    iget-wide v5, v10, Liz;->b:J

    .line 302
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v5, v10

    move-wide v6, v12

    move-object v1, v10

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Liz;->a(JDD)V

    .line 303
    iget v5, v1, Liz;->d:I

    .line 304
    iget-wide v6, v1, Liz;->c:J

    .line 305
    iget-wide v8, v1, Liz;->b:J

    const-wide/32 v10, 0x5265c00

    add-long v15, v12, v10

    .line 306
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 307
    move-object v14, v1

    invoke-virtual/range {v14 .. v20}, Liz;->a(JDD)V

    .line 308
    iget-wide v10, v1, Liz;->c:J

    const-wide/16 v14, -0x1

    cmp-long v1, v6, v14

    if-eqz v1, :cond_c

    cmp-long v1, v8, v14

    if-nez v1, :cond_9

    goto :goto_4

    .line 303
    :cond_9
    cmp-long v1, v12, v8

    if-lez v1, :cond_a

    move-wide v6, v10

    goto :goto_3

    :cond_a
    cmp-long v1, v12, v6

    if-lez v1, :cond_b

    move-wide v6, v8

    :cond_b
    :goto_3
    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    goto :goto_5

    .line 308
    :cond_c
    :goto_4
    const-wide/32 v6, 0x2932e00

    add-long/2addr v6, v12

    :goto_5
    nop

    .line 303
    if-eq v3, v5, :cond_d

    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, v0, Lja;->a:Z

    iput-wide v6, v0, Lja;->b:J

    iget-boolean v0, v2, Lja;->a:Z

    .line 292
    :goto_7
    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    .line 303
    :cond_e
    nop

    .line 309
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 311
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_10

    const/16 v1, 0x16

    if-ge v0, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    .line 292
    :cond_f
    const/4 v0, 0x2

    return v0

    .line 311
    :cond_10
    const/4 v0, 0x2

    const/4 v1, 0x2

    .line 292
    :goto_8
    return v1

    .line 311
    :cond_11
    return v2

    .line 286
    :cond_12
    return v0

    .line 312
    :cond_13
    return v2
.end method

.method public final a(I)Landroid/view/View;
    .locals 1

    .line 257
    invoke-virtual {p0}, Liv;->j()V

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    .line 258
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Liv;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 84
    sget-object v2, Ljh;->j:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x74

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Liv;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v2, p0, Liv;->ad:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Liv;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Liv;->ad:Landroid/support/v7/app/AppCompatViewInflater;

    .line 92
    sget-object v2, Ljh;->y:[I

    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 93
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    const-string v5, "AppCompatViewInflater"

    const-string v6, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_4

    .line 96
    instance-of v2, p2, Ljp;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Ljp;

    iget v2, v2, Ljp;->a:I

    if-eq v2, v4, :cond_4

    :cond_3
    new-instance v2, Ljp;

    .line 97
    invoke-direct {v2, p2, v4}, Ljp;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 98
    :cond_4
    move-object v2, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_5
    goto/16 :goto_2

    .line 117
    :sswitch_0
    nop

    .line 98
    const-string v3, "Button"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "EditText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "CheckBox"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v3, "ImageView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_5
    const-string v3, "ToggleButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xd

    goto :goto_3

    :sswitch_6
    const-string v3, "RadioButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    goto :goto_3

    :sswitch_7
    const-string v4, "Spinner"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :sswitch_8
    const-string v3, "SeekBar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xc

    goto :goto_3

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_a
    const-string v3, "TextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    goto :goto_3

    :sswitch_c
    const-string v3, "CheckedTextView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_d
    const-string v3, "RatingBar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xb

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    goto :goto_4

    .line 107
    :pswitch_0
    new-instance v3, Lns;

    invoke-direct {v3, v2, p3}, Lns;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 106
    :pswitch_1
    new-instance v3, Lna;

    invoke-direct {v3, v2, p3}, Lna;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 105
    :pswitch_2
    new-instance v3, Lmz;

    invoke-direct {v3, v2, p3}, Lmz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 104
    :pswitch_3
    new-instance v3, Lmv;

    invoke-direct {v3, v2, p3}, Lmv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 108
    :pswitch_4
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lmj;

    move-result-object v3

    .line 109
    invoke-virtual {v0, v3, p1}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 103
    :pswitch_5
    new-instance v3, Lmn;

    invoke-direct {v3, v2, p3}, Lmn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 110
    :pswitch_6
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lmy;

    move-result-object v3

    .line 111
    invoke-virtual {v0, v3, p1}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 112
    :pswitch_7
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lmm;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v3, p1}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_8
    new-instance v3, Lms;

    .line 102
    invoke-direct {v3, v2, p3}, Lms;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 101
    :pswitch_9
    new-instance v3, Lnn;

    invoke-direct {v3, v2, p3}, Lnn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_a
    new-instance v3, Lmr;

    .line 100
    invoke-direct {v3, v2, p3}, Lmr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 114
    :pswitch_b
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lml;

    move-result-object v3

    .line 115
    invoke-virtual {v0, v3, p1}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_c
    new-instance v3, Lmu;

    .line 99
    invoke-direct {v3, v2, p3}, Lmu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 116
    :pswitch_d
    invoke-virtual {v0, v2, p3}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lnq;

    move-result-object v3

    .line 117
    invoke-virtual {v0, v3, p1}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 98
    :goto_4
    if-nez v3, :cond_a

    if-eq p2, v2, :cond_a

    .line 118
    const-string p2, "view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 119
    const-string p1, "class"

    invoke-interface {p3, v4, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    :try_start_1
    iget-object p2, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v2, p2, v1

    aput-object p3, p2, v6

    const/16 p2, 0x2e

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ne p2, v5, :cond_9

    const/4 p2, 0x0

    :goto_5
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge p2, v3, :cond_8

    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->b:[Ljava/lang/String;

    .line 121
    aget-object v3, v3, p2

    invoke-virtual {v0, v2, p1, v3}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_7

    iget-object p1, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p1, v1

    aput-object v4, p1, v6

    goto :goto_6

    .line 130
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    iget-object p1, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p1, v1

    aput-object v4, p1, v6

    goto :goto_7

    :cond_9
    nop

    .line 122
    :try_start_2
    invoke-virtual {v0, v2, p1, v4}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p2, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p2, v1

    aput-object v4, p2, v6

    move-object v4, p1

    goto :goto_7

    .line 89
    :catchall_1
    move-exception p1

    iget-object p2, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p2, v1

    aput-object v4, p2, v6

    .line 123
    throw p1

    .line 89
    :catch_0
    move-exception p1

    iget-object p1, v0, Landroid/support/v7/app/AppCompatViewInflater;->c:[Ljava/lang/Object;

    aput-object v4, p1, v1

    aput-object v4, p1, v6

    goto :goto_7

    .line 122
    :cond_a
    nop

    .line 121
    :goto_6
    move-object v4, v3

    :goto_7
    if-eqz v4, :cond_d

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 125
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_d

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 126
    invoke-static {v4}, Lge;->D(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_8

    :cond_b
    sget-object p2, Landroid/support/v7/app/AppCompatViewInflater;->a:[I

    .line 127
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance p3, Liy;

    .line 129
    invoke-direct {p3, v4, p2}, Liy;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    :cond_d
    :goto_8
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Lhs;
    .locals 1

    .line 268
    invoke-virtual {p0}, Liv;->h()V

    iget-object v0, p0, Liv;->j:Lhs;

    return-object v0
.end method

.method final a(Landroid/view/Menu;)Lit;
    .locals 5

    iget-object v0, p0, Liv;->T:[Lit;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    .line 256
    :cond_0
    const/4 v2, 0x0

    .line 0
    :goto_0
    if-ge v1, v2, :cond_3

    .line 256
    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    iget-object v4, v3, Lit;->h:Lkp;

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Ljn;)Ljo;
    .locals 7

    .line 473
    invoke-virtual {p0}, Liv;->l()V

    iget-object v0, p0, Liv;->m:Ljo;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Ljo;->c()V

    :cond_0
    iget-object v0, p0, Liv;->i:Lic;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Liv;->D:Z

    if-nez v2, :cond_1

    :try_start_0
    invoke-interface {v0}, Lic;->h()Ljo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 474
    :goto_0
    if-eqz v0, :cond_2

    iput-object v0, p0, Liv;->m:Ljo;

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Liv;->y:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    .line 475
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Liv;->g:Landroid/content/Context;

    .line 476
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040009

    .line 477
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 478
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Liv;->g:Landroid/content/Context;

    .line 479
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 480
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 481
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v3, Ljp;

    iget-object v6, p0, Liv;->g:Landroid/content/Context;

    .line 482
    invoke-direct {v3, v6, v2}, Ljp;-><init>(Landroid/content/Context;I)V

    .line 483
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 511
    :cond_3
    iget-object v3, p0, Liv;->g:Landroid/content/Context;

    .line 483
    :goto_1
    new-instance v4, Landroid/support/v7/widget/ActionBarContextView;

    .line 484
    invoke-direct {v4, v3}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v4, Landroid/widget/PopupWindow;

    const v6, 0x7f040018

    .line 485
    invoke-direct {v4, v3, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Liv;->o:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 486
    invoke-static {v4, v6}, Lhz;->a(Landroid/widget/PopupWindow;I)V

    iget-object v4, p0, Liv;->o:Landroid/widget/PopupWindow;

    iget-object v6, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 487
    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v4, p0, Liv;->o:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    .line 488
    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 489
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v6, 0x7f040003

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 490
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 491
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 490
    invoke-static {v0, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v3, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    iput v0, v3, Landroid/support/v7/widget/ActionBarContextView;->e:I

    iget-object v0, p0, Liv;->o:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    .line 492
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Lii;

    .line 493
    invoke-direct {v0, p0}, Lii;-><init>(Liv;)V

    iput-object v0, p0, Liv;->p:Ljava/lang/Runnable;

    goto :goto_2

    .line 511
    :cond_4
    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    const v3, 0x7f0a003c

    .line 494
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v0, :cond_5

    .line 495
    invoke-virtual {p0}, Liv;->i()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v7/widget/ViewStubCompat;->a:Landroid/view/LayoutInflater;

    .line 496
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 493
    :cond_5
    :goto_2
    iget-object v0, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_9

    .line 497
    invoke-virtual {p0}, Liv;->l()V

    iget-object v0, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 498
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()V

    new-instance v0, Ljq;

    iget-object v3, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 499
    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v0, v3, v4, p1}, Ljq;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Ljn;)V

    iget-object v3, v0, Ljq;->a:Lkp;

    .line 500
    invoke-interface {p1, v0, v3}, Ljn;->a(Ljo;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 501
    invoke-virtual {v0}, Ljo;->d()V

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 502
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->a(Ljo;)V

    iput-object v0, p0, Liv;->m:Ljo;

    .line 503
    invoke-virtual {p0}, Liv;->k()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    .line 504
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 505
    invoke-static {p1}, Lge;->l(Landroid/view/View;)Lgi;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgi;->a(F)V

    iput-object p1, p0, Liv;->q:Lgi;

    new-instance v0, Lij;

    .line 506
    invoke-direct {v0, p0}, Lij;-><init>(Liv;)V

    invoke-virtual {p1, v0}, Lgi;->a(Lgj;)V

    goto :goto_3

    .line 512
    :cond_6
    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 507
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 508
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x20

    .line 509
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 510
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object p1, p0, Liv;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 511
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lge;->q(Landroid/view/View;)V

    .line 506
    :cond_7
    :goto_3
    iget-object p1, p0, Liv;->o:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_9

    iget-object p1, p0, Liv;->h:Landroid/view/Window;

    .line 512
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Liv;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 511
    :cond_8
    iput-object v1, p0, Liv;->m:Ljo;

    .line 474
    :cond_9
    :goto_4
    iget-object p1, p0, Liv;->m:Ljo;

    return-object p1
.end method

.method final a(ILit;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p2, Lit;->h:Lkp;

    :cond_0
    iget-boolean p2, p2, Lit;->m:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Liv;->D:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Liv;->L:Lin;

    iget-object p2, p2, Ljy;->b:Landroid/view/Window$Callback;

    .line 70
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .line 459
    invoke-virtual {p0}, Liv;->j()V

    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    .line 460
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 462
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Liv;->L:Lin;

    iget-object p1, p1, Ljy;->b:Landroid/view/Window$Callback;

    .line 463
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Liv;->j()V

    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    .line 465
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 466
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 467
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Liv;->L:Lin;

    iget-object p1, p1, Ljy;->b:Landroid/view/Window$Callback;

    .line 468
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final a(Lit;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget v0, p1, Lit;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Liv;->l:Lnv;

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Lnv;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p1, Lit;->h:Lkp;

    .line 78
    invoke-virtual {p0, p1}, Liv;->a(Lkp;)V

    return-void

    .line 74
    :cond_1
    :goto_0
    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 75
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lit;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lit;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 76
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget p2, p1, Lit;->a:I

    .line 77
    invoke-virtual {p0, p2, p1, v1}, Liv;->a(ILit;Landroid/view/Menu;)V

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p1, Lit;->k:Z

    iput-boolean p2, p1, Lit;->l:Z

    iput-boolean p2, p1, Lit;->m:Z

    iput-object v1, p1, Lit;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lit;->n:Z

    iget-object p2, p0, Liv;->A:Lit;

    if-ne p2, p1, :cond_3

    iput-object v1, p0, Liv;->A:Lit;

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Liv;->M:Ljava/lang/CharSequence;

    iget-object v0, p0, Liv;->l:Lnv;

    if-nez v0, :cond_2

    iget-object v0, p0, Liv;->j:Lhs;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Lhs;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Liv;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 471
    :cond_2
    invoke-interface {v0, p1}, Lnv;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final a(Lkp;)V
    .locals 2

    iget-boolean v0, p0, Liv;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Liv;->S:Z

    iget-object v0, p0, Liv;->l:Lnv;

    .line 71
    invoke-interface {v0}, Lnv;->i()V

    .line 72
    invoke-virtual {p0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Liv;->D:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 73
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Liv;->S:Z

    return-void
.end method

.method public final a(Z)V
    .locals 10

    iget-boolean v0, p0, Liv;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Liv;->m()I

    move-result v0

    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    .line 23
    invoke-virtual {p0, v1, v0}, Liv;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Liv;->g:Landroid/content/Context;

    .line 24
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Liv;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-boolean v2, p0, Liv;->Y:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Liv;->f:Ljava/lang/Object;

    .line 25
    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Liv;->g:Landroid/content/Context;

    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 27
    :cond_1
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    const/high16 v6, 0x100c0000

    goto :goto_0

    .line 28
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, 0xc0000

    .line 27
    :goto_0
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Liv;->g:Landroid/content/Context;

    iget-object v9, p0, Liv;->f:Ljava/lang/Object;

    .line 29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {v2, v7, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 31
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Liv;->X:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 28
    :catch_0
    move-exception v2

    iput-boolean v5, p0, Liv;->X:Z

    .line 31
    :cond_4
    :goto_2
    iput-boolean v4, p0, Liv;->Y:Z

    iget-boolean v5, p0, Liv;->X:Z

    .line 26
    :goto_3
    iget-object v2, p0, Liv;->g:Landroid/content/Context;

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    .line 33
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eq v2, v1, :cond_6

    if-eqz p1, :cond_6

    if-nez v5, :cond_6

    iget-boolean p1, p0, Liv;->B:Z

    if-eqz p1, :cond_6

    sget-boolean p1, Liv;->d:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Liv;->V:Z

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Liv;->f:Ljava/lang/Object;

    .line 34
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_6

    check-cast p1, Landroid/app/Activity;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Liv;->f:Ljava/lang/Object;

    .line 51
    check-cast p1, Landroid/app/Activity;

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_4

    .line 59
    :cond_6
    if-eq v2, v1, :cond_a

    iget-object p1, p0, Liv;->g:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v2, Landroid/content/res/Configuration;

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v1, v6

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 39
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 40
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget p1, p0, Liv;->E:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    .line 41
    invoke-virtual {v1, p1}, Landroid/content/Context;->setTheme(I)V

    .line 42
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Liv;->g:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v1, p0, Liv;->E:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    if-eqz v5, :cond_9

    iget-object p1, p0, Liv;->f:Ljava/lang/Object;

    .line 44
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_9

    .line 45
    check-cast p1, Landroid/app/Activity;

    .line 46
    instance-of v1, p1, Ll;

    if-eqz v1, :cond_8

    .line 47
    move-object v1, p1

    check-cast v1, Ll;

    invoke-interface {v1}, Ll;->ab()Lj;

    move-result-object v1

    iget-object v1, v1, Lj;->a:Li;

    .line 48
    sget-object v3, Li;->d:Li;

    invoke-virtual {v1, v3}, Li;->a(Li;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 49
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_4

    :cond_8
    iget-boolean v1, p0, Liv;->C:Z

    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    :cond_9
    :goto_4
    iget-object p1, p0, Liv;->f:Ljava/lang/Object;

    .line 54
    instance-of v1, p1, Lib;

    if-eqz v1, :cond_a

    .line 55
    check-cast p1, Lib;

    :cond_a
    if-nez v0, :cond_b

    iget-object p1, p0, Liv;->g:Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Liv;->a(Landroid/content/Context;)Liq;

    move-result-object p1

    invoke-virtual {p1}, Liq;->c()V

    goto :goto_5

    .line 58
    :cond_b
    iget-object p1, p0, Liv;->Z:Liq;

    if-eqz p1, :cond_c

    .line 57
    invoke-virtual {p1}, Liq;->d()V

    :cond_c
    const/4 p1, 0x3

    if-ne v0, p1, :cond_d

    iget-object p1, p0, Liv;->g:Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Liv;->b(Landroid/content/Context;)Liq;

    move-result-object p1

    invoke-virtual {p1}, Liq;->c()V

    return-void

    .line 56
    :cond_d
    :goto_5
    iget-object p1, p0, Liv;->aa:Liq;

    if-eqz p1, :cond_e

    .line 58
    invoke-virtual {p1}, Liq;->d()V

    :cond_e
    return-void
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Liv;->f:Ljava/lang/Object;

    .line 131
    instance-of v1, v0, Lfo;

    if-nez v1, :cond_0

    instance-of v0, v0, Lix;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    .line 132
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lge;->b()V

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Liv;->L:Lin;

    iget-object v0, v0, Ljy;->b:Landroid/view/Window$Callback;

    .line 135
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 143
    :cond_2
    return v2

    .line 136
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v3, :cond_8

    if-eq v0, v4, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 157
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 158
    invoke-virtual {p0, v5}, Liv;->e(I)Lit;

    move-result-object v0

    iget-boolean v1, v0, Lit;->m:Z

    if-nez v1, :cond_5

    .line 159
    invoke-virtual {p0, v0, p1}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    goto/16 :goto_5

    :cond_5
    goto/16 :goto_5

    .line 160
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Liv;->U:Z

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 159
    :cond_8
    if-eq v0, v4, :cond_13

    if-eq v0, v1, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 155
    :cond_9
    iget-object v0, p0, Liv;->m:Ljo;

    if-eqz v0, :cond_a

    goto/16 :goto_5

    .line 138
    :cond_a
    invoke-virtual {p0, v5}, Liv;->e(I)Lit;

    move-result-object v0

    iget-object v1, p0, Liv;->l:Lnv;

    if-eqz v1, :cond_c

    .line 139
    invoke-interface {v1}, Lnv;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    .line 140
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Liv;->l:Lnv;

    .line 144
    invoke-interface {v1}, Lnv;->d()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Liv;->D:Z

    if-nez v1, :cond_12

    .line 145
    invoke-virtual {p0, v0, p1}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Liv;->l:Lnv;

    .line 146
    invoke-interface {p1}, Lnv;->f()Z

    move-result p1

    goto :goto_3

    .line 151
    :cond_b
    iget-object p1, p0, Liv;->l:Lnv;

    .line 147
    invoke-interface {p1}, Lnv;->g()Z

    move-result p1

    goto :goto_3

    :cond_c
    iget-boolean v1, v0, Lit;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Lit;->l:Z

    if-eqz v3, :cond_d

    goto :goto_2

    .line 141
    :cond_d
    iget-boolean v1, v0, Lit;->k:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lit;->o:Z

    if-eqz v1, :cond_e

    iput-boolean v5, v0, Lit;->k:Z

    .line 142
    invoke-virtual {p0, v0, p1}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 143
    :cond_e
    invoke-direct {p0, v0, p1}, Liv;->b(Lit;Landroid/view/KeyEvent;)V

    goto :goto_4

    :cond_f
    goto :goto_5

    .line 141
    :cond_10
    :goto_2
    invoke-virtual {p0, v0, v2}, Liv;->a(Lit;Z)V

    move p1, v1

    .line 146
    :goto_3
    if-eqz p1, :cond_12

    :goto_4
    iget-object p1, p0, Liv;->g:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 149
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    .line 150
    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_5

    :cond_11
    nop

    .line 151
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    goto :goto_5

    .line 159
    :cond_13
    iget-boolean p1, p0, Liv;->U:Z

    iput-boolean v5, p0, Liv;->U:Z

    .line 152
    invoke-virtual {p0, v5}, Liv;->e(I)Lit;

    move-result-object v0

    iget-boolean v1, v0, Lit;->m:Z

    if-eqz v1, :cond_15

    if-nez p1, :cond_14

    .line 156
    invoke-virtual {p0, v0, v2}, Liv;->a(Lit;Z)V

    goto :goto_5

    :cond_14
    goto :goto_5

    :cond_15
    iget-object p1, p0, Liv;->m:Ljo;

    if-eqz p1, :cond_16

    .line 153
    invoke-virtual {p1}, Ljo;->c()V

    goto :goto_5

    .line 154
    :cond_16
    invoke-virtual {p0}, Liv;->a()Lhs;

    move-result-object p1

    if-eqz p1, :cond_17

    check-cast p1, Ljg;

    iget-object v0, p1, Ljg;->d:Lnw;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lnw;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p1, Ljg;->d:Lnw;

    .line 155
    invoke-interface {p1}, Lnw;->d()V

    goto :goto_5

    :cond_17
    const/4 v2, 0x0

    .line 137
    :goto_5
    return v2
.end method

.method public final a(Lit;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 405
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lit;->k:Z

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {p0, p1, p3}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lit;->h:Lkp;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 407
    invoke-virtual {p1, p2, p3, v0}, Lkp;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final a(Lit;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Liv;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lit;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Liv;->A:Lit;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 408
    invoke-virtual {p0, v0, v1}, Liv;->a(Lit;Z)V

    .line 409
    :cond_2
    invoke-virtual {p0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lit;->a:I

    .line 410
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lit;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Lit;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .line 420
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 410
    :goto_0
    if-eqz v3, :cond_6

    iget-object v5, p0, Liv;->l:Lnv;

    if-eqz v5, :cond_6

    .line 411
    invoke-interface {v5}, Lnv;->h()V

    :cond_6
    iget-object v5, p1, Lit;->g:Landroid/view/View;

    if-nez v5, :cond_1a

    iget-object v5, p1, Lit;->h:Lkp;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v7, p1, Lit;->o:Z

    if-eqz v7, :cond_14

    :cond_7
    if-nez v5, :cond_f

    iget-object v5, p0, Liv;->g:Landroid/content/Context;

    iget v7, p1, Lit;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_d

    :cond_8
    iget-object v4, p0, Liv;->l:Lnv;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    .line 412
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 413
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040009

    .line 414
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 415
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f04000a

    if-eqz v8, :cond_9

    .line 416
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 417
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 418
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 419
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_1

    .line 444
    :cond_9
    nop

    .line 420
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 421
    :goto_1
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    .line 422
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 423
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 424
    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, Ljp;

    .line 425
    invoke-direct {v4, v5, v1}, Ljp;-><init>(Landroid/content/Context;I)V

    .line 426
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    goto :goto_2

    .line 444
    :cond_c
    goto :goto_2

    .line 420
    :cond_d
    nop

    .line 427
    :goto_2
    new-instance v4, Lkp;

    invoke-direct {v4, v5}, Lkp;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lkp;->b:Lkn;

    .line 428
    invoke-virtual {p1, v4}, Lit;->a(Lkp;)V

    iget-object v4, p1, Lit;->h:Lkp;

    if-eqz v4, :cond_e

    goto :goto_3

    .line 444
    :cond_e
    return v1

    .line 428
    :cond_f
    :goto_3
    if-eqz v3, :cond_11

    iget-object v4, p0, Liv;->l:Lnv;

    if-eqz v4, :cond_11

    iget-object v4, p0, Liv;->N:Lik;

    if-nez v4, :cond_10

    new-instance v4, Lik;

    .line 429
    invoke-direct {v4, p0}, Lik;-><init>(Liv;)V

    iput-object v4, p0, Liv;->N:Lik;

    :cond_10
    iget-object v4, p0, Liv;->l:Lnv;

    iget-object v5, p1, Lit;->h:Lkp;

    iget-object v7, p0, Liv;->N:Lik;

    .line 430
    invoke-interface {v4, v5, v7}, Lnv;->a(Landroid/view/Menu;Llc;)V

    :cond_11
    iget-object v4, p1, Lit;->h:Lkp;

    .line 431
    invoke-virtual {v4}, Lkp;->e()V

    iget v4, p1, Lit;->a:I

    iget-object v5, p1, Lit;->h:Lkp;

    .line 432
    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 433
    invoke-virtual {p1, v6}, Lit;->a(Lkp;)V

    if-eqz v3, :cond_12

    iget-object p1, p0, Liv;->l:Lnv;

    if-eqz p1, :cond_12

    iget-object p2, p0, Liv;->N:Lik;

    .line 434
    invoke-interface {p1, v6, p2}, Lnv;->a(Landroid/view/Menu;Llc;)V

    :cond_12
    return v1

    :cond_13
    iput-boolean v1, p1, Lit;->o:Z

    :cond_14
    iget-object v4, p1, Lit;->h:Lkp;

    .line 435
    invoke-virtual {v4}, Lkp;->e()V

    iget-object v4, p1, Lit;->p:Landroid/os/Bundle;

    if-eqz v4, :cond_15

    iget-object v5, p1, Lit;->h:Lkp;

    .line 436
    invoke-virtual {v5, v4}, Lkp;->b(Landroid/os/Bundle;)V

    iput-object v6, p1, Lit;->p:Landroid/os/Bundle;

    :cond_15
    iget-object v4, p1, Lit;->g:Landroid/view/View;

    iget-object v5, p1, Lit;->h:Lkp;

    .line 437
    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v3, :cond_16

    iget-object p2, p0, Liv;->l:Lnv;

    if-eqz p2, :cond_16

    iget-object v0, p0, Liv;->N:Lik;

    .line 438
    invoke-interface {p2, v6, v0}, Lnv;->a(Landroid/view/Menu;Llc;)V

    :cond_16
    iget-object p1, p1, Lit;->h:Lkp;

    .line 439
    invoke-virtual {p1}, Lkp;->f()V

    return v1

    :cond_17
    if-eqz p2, :cond_18

    .line 440
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_4

    .line 444
    :cond_18
    const/4 p2, -0x1

    .line 441
    :goto_4
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 442
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_19

    const/4 p2, 0x1

    goto :goto_5

    .line 444
    :cond_19
    const/4 p2, 0x0

    .line 442
    :goto_5
    iget-object v0, p1, Lit;->h:Lkp;

    .line 443
    invoke-virtual {v0, p2}, Lkp;->setQwertyMode(Z)V

    iget-object p2, p1, Lit;->h:Lkp;

    .line 444
    invoke-virtual {p2}, Lkp;->f()V

    :cond_1a
    iput-boolean v2, p1, Lit;->k:Z

    iput-boolean v1, p1, Lit;->l:Z

    iput-object p1, p0, Liv;->A:Lit;

    return v2
.end method

.method public final a(Lkp;Landroid/view/MenuItem;)Z
    .locals 2

    .line 335
    invoke-virtual {p0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Liv;->D:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lkp;->j()Lkp;

    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Liv;->a(Landroid/view/Menu;)Lit;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lit;->a:I

    .line 337
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Liv;->C:Z

    .line 355
    invoke-virtual {p0}, Liv;->a()Lhs;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1, v0}, Lhs;->b(Z)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 454
    invoke-virtual {p0}, Liv;->j()V

    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    .line 455
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 456
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    .line 457
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Liv;->L:Lin;

    iget-object p1, p1, Ljy;->b:Landroid/view/Window$Callback;

    .line 458
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Liv;->j()V

    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    .line 19
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Liv;->L:Lin;

    iget-object p1, p1, Ljy;->b:Landroid/view/Window$Callback;

    .line 21
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 281
    invoke-virtual {p0}, Liv;->a()Lhs;

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Liv;->f(I)V

    return-void
.end method

.method public final c(I)V
    .locals 4

    const/16 v0, 0x6d

    const-string v1, "AppCompatDelegate"

    const/16 v2, 0x6c

    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    .line 445
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    .line 452
    :cond_0
    const/16 v3, 0x9

    if-ne p1, v3, :cond_1

    .line 446
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 445
    :cond_1
    :goto_0
    iget-boolean v1, p0, Liv;->z:Z

    if-eqz v1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 452
    :cond_2
    return-void

    .line 445
    :cond_3
    :goto_1
    iget-boolean v1, p0, Liv;->v:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-ne p1, v3, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Liv;->v:Z

    :cond_4
    if-eq p1, v3, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x5

    if-eq p1, v1, :cond_8

    const/16 v1, 0xa

    if-eq p1, v1, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    .line 453
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    return-void

    .line 447
    :cond_5
    invoke-direct {p0}, Liv;->q()V

    iput-boolean v3, p0, Liv;->w:Z

    return-void

    .line 448
    :cond_6
    invoke-direct {p0}, Liv;->q()V

    iput-boolean v3, p0, Liv;->v:Z

    return-void

    .line 449
    :cond_7
    invoke-direct {p0}, Liv;->q()V

    iput-boolean v3, p0, Liv;->x:Z

    return-void

    .line 450
    :cond_8
    invoke-direct {p0}, Liv;->q()V

    iput-boolean v3, p0, Liv;->R:Z

    return-void

    .line 451
    :cond_9
    invoke-direct {p0}, Liv;->q()V

    iput-boolean v3, p0, Liv;->Q:Z

    return-void

    .line 452
    :cond_a
    invoke-direct {p0}, Liv;->q()V

    iput-boolean v3, p0, Liv;->z:Z

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Liv;->f:Ljava/lang/Object;

    .line 324
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lid;->c:Ljava/lang/Object;

    .line 325
    monitor-enter v0

    .line 326
    :try_start_0
    invoke-static {p0}, Lid;->a(Lid;)V

    .line 327
    monitor-exit v0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v1

    .line 327
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Liv;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    .line 328
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Liv;->ab:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Liv;->C:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Liv;->D:Z

    iget v0, p0, Liv;->W:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Liv;->f:Ljava/lang/Object;

    .line 329
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 330
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Liv;->J:Lto;

    iget-object v1, p0, Liv;->f:Ljava/lang/Object;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Liv;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 334
    :cond_2
    sget-object v0, Liv;->J:Lto;

    iget-object v1, p0, Liv;->f:Ljava/lang/Object;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_1
    iget-object v0, p0, Liv;->Z:Liq;

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {v0}, Liq;->d()V

    :cond_3
    iget-object v0, p0, Liv;->aa:Liq;

    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v0}, Liq;->d()V

    :cond_4
    return-void
.end method

.method final d(I)V
    .locals 3

    .line 161
    invoke-virtual {p0, p1}, Liv;->e(I)Lit;

    move-result-object v0

    iget-object v1, v0, Lit;->h:Lkp;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    .line 162
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lit;->h:Lkp;

    .line 163
    invoke-virtual {v2, v1}, Lkp;->a(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lit;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lit;->h:Lkp;

    .line 165
    invoke-virtual {v1}, Lkp;->e()V

    iget-object v1, v0, Lit;->h:Lkp;

    .line 166
    invoke-virtual {v1}, Lkp;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lit;->o:Z

    iput-boolean v1, v0, Lit;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Liv;->l:Lnv;

    if-eqz p1, :cond_3

    .line 167
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Liv;->e(I)Lit;

    move-result-object v0

    iput-boolean p1, v0, Lit;->k:Z

    const/4 p1, 0x0

    .line 168
    invoke-virtual {p0, v0, p1}, Liv;->a(Lit;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final e(I)Lit;
    .locals 4

    iget-object v0, p0, Liv;->T:[Lit;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    goto :goto_1

    .line 0
    :cond_1
    :goto_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lit;

    if-eqz v0, :cond_2

    array-length v2, v0

    .line 265
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v1, p0, Liv;->T:[Lit;

    move-object v0, v1

    .line 266
    :goto_1
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lit;

    .line 267
    invoke-direct {v1, p1}, Lit;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 276
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 278
    invoke-static {v0, p0}, Ley;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-void

    .line 279
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Liv;

    if-nez v0, :cond_1

    .line 280
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Liv;->B:Z

    .line 313
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Liv;->a(Z)V

    .line 314
    invoke-direct {p0}, Liv;->p()V

    iget-object v1, p0, Liv;->f:Ljava/lang/Object;

    .line 315
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 316
    :try_start_0
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lec;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 316
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Liv;->j:Lhs;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Liv;->ac:Z

    goto :goto_1

    .line 321
    :cond_0
    nop

    .line 317
    invoke-virtual {v1, v0}, Lhs;->a(Z)V

    .line 316
    :cond_1
    :goto_1
    sget-object v1, Lid;->c:Ljava/lang/Object;

    .line 318
    monitor-enter v1

    .line 319
    :try_start_1
    invoke-static {p0}, Lid;->a(Lid;)V

    sget-object v2, Lid;->b:Ltj;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 320
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ltj;->add(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v1

    goto :goto_2

    .line 317
    :catchall_0
    move-exception v0

    .line 321
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iput-boolean v0, p0, Liv;->V:Z

    return-void
.end method

.method final g()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    .line 269
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 270
    invoke-virtual {p0}, Liv;->j()V

    iget-boolean v0, p0, Liv;->v:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Liv;->j:Lhs;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Liv;->f:Ljava/lang/Object;

    .line 271
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Ljg;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Liv;->w:Z

    invoke-direct {v1, v0, v2}, Ljg;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Liv;->j:Lhs;

    goto :goto_0

    .line 273
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 274
    new-instance v1, Ljg;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Ljg;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Liv;->j:Lhs;

    .line 272
    :cond_2
    :goto_0
    iget-object v0, p0, Liv;->j:Lhs;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Liv;->ac:Z

    .line 275
    invoke-virtual {v0, v1}, Lhs;->a(Z)V

    :cond_3
    return-void

    .line 270
    :cond_4
    :goto_1
    return-void
.end method

.method final i()Landroid/content/Context;
    .locals 1

    .line 259
    invoke-virtual {p0}, Liv;->a()Lhs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lhs;->b()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final j()V
    .locals 9

    iget-boolean v0, p0, Liv;->s:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 170
    sget-object v1, Ljh;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 173
    const/16 v2, 0x7e

    .line 174
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0, v5}, Liv;->c(I)V

    goto :goto_0

    .line 200
    :cond_0
    nop

    .line 176
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p0, v4}, Liv;->c(I)V

    .line 175
    :cond_1
    :goto_0
    const/16 v1, 0x76

    .line 178
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {p0, v2}, Liv;->c(I)V

    :cond_2
    const/16 v1, 0x77

    .line 180
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 181
    invoke-virtual {p0, v1}, Liv;->c(I)V

    :cond_3
    nop

    .line 182
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Liv;->y:Z

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    invoke-direct {p0}, Liv;->p()V

    iget-object v0, p0, Liv;->h:Landroid/view/Window;

    .line 185
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 186
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Liv;->z:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Liv;->y:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0d000c

    .line 187
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Liv;->w:Z

    iput-boolean v3, p0, Liv;->v:Z

    goto/16 :goto_2

    .line 222
    :cond_4
    iget-boolean v0, p0, Liv;->v:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    .line 188
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    .line 189
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f040009

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 190
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Ljp;

    iget-object v7, p0, Liv;->g:Landroid/content/Context;

    .line 191
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Ljp;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 198
    :cond_5
    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    .line 192
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0017

    .line 193
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0079

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnv;

    iput-object v1, p0, Liv;->l:Lnv;

    .line 195
    invoke-virtual {p0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Lnv;->a(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Liv;->w:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Liv;->l:Lnv;

    .line 196
    invoke-interface {v1, v2}, Lnv;->b(I)V

    :cond_6
    iget-boolean v1, p0, Liv;->Q:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Liv;->l:Lnv;

    const/4 v2, 0x2

    .line 197
    invoke-interface {v1, v2}, Lnv;->b(I)V

    :cond_7
    iget-boolean v1, p0, Liv;->R:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Liv;->l:Lnv;

    const/4 v2, 0x5

    .line 198
    invoke-interface {v1, v2}, Lnv;->b(I)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Liv;->x:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0d0016

    .line 199
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0d0015

    .line 200
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 187
    :cond_b
    :goto_2
    if-eqz v0, :cond_1e

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lif;

    .line 203
    invoke-direct {v1, p0}, Lif;-><init>(Liv;)V

    invoke-static {v0, v1}, Lge;->a(Landroid/view/View;Lfu;)V

    iget-object v1, p0, Liv;->l:Lnv;

    if-nez v1, :cond_c

    const v1, 0x7f0a01ad

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Liv;->P:Landroid/widget/TextView;

    .line 205
    :cond_c
    invoke-static {v0}, Lsd;->b(Landroid/view/View;)V

    const v1, 0x7f0a002d

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v2, p0, Liv;->h:Landroid/view/Window;

    .line 207
    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 208
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_d

    .line 209
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 210
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 211
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    const/4 v8, -0x1

    .line 212
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 213
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 214
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    .line 215
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v2, p0, Liv;->h:Landroid/view/Window;

    .line 216
    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Lig;

    .line 217
    invoke-direct {v2, p0}, Lig;-><init>(Liv;)V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->i:Lig;

    iput-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    iget-object v0, p0, Liv;->f:Ljava/lang/Object;

    .line 218
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 219
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 222
    :cond_f
    iget-object v0, p0, Liv;->M:Ljava/lang/CharSequence;

    .line 220
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Liv;->l:Lnv;

    if-eqz v1, :cond_10

    .line 223
    invoke-interface {v1, v0}, Lnv;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 252
    :cond_10
    iget-object v1, p0, Liv;->j:Lhs;

    if-eqz v1, :cond_11

    .line 221
    invoke-virtual {v1, v0}, Lhs;->a(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    iget-object v1, p0, Liv;->P:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 222
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_12
    :goto_5
    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    .line 224
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Liv;->h:Landroid/view/Window;

    .line 225
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v8, v0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    .line 229
    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    invoke-static {v0}, Lge;->z(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 231
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_13
    iget-object v1, p0, Liv;->g:Landroid/content/Context;

    sget-object v2, Ljh;->j:[I

    .line 232
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    if-nez v2, :cond_14

    new-instance v2, Landroid/util/TypedValue;

    .line 233
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    :cond_14
    const/16 v2, 0x7c

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 234
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    if-nez v2, :cond_15

    new-instance v2, Landroid/util/TypedValue;

    .line 235
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    :cond_15
    const/16 v2, 0x7d

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 236
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 237
    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    if-nez v6, :cond_16

    new-instance v6, Landroid/util/TypedValue;

    .line 238
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    :cond_16
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 239
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    nop

    .line 240
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    if-nez v6, :cond_18

    new-instance v6, Landroid/util/TypedValue;

    .line 241
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    :cond_18
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 242
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    nop

    .line 243
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    if-nez v6, :cond_1a

    new-instance v6, Landroid/util/TypedValue;

    .line 244
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :cond_1a
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 245
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1b
    nop

    .line 246
    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    if-nez v6, :cond_1c

    new-instance v6, Landroid/util/TypedValue;

    .line 247
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    :cond_1c
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    .line 248
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 249
    :cond_1d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    iput-boolean v5, p0, Liv;->s:Z

    .line 251
    invoke-virtual {p0, v3}, Liv;->e(I)Lit;

    move-result-object v0

    iget-boolean v1, p0, Liv;->D:Z

    if-nez v1, :cond_20

    iget-object v0, v0, Lit;->h:Lkp;

    if-nez v0, :cond_20

    .line 252
    invoke-direct {p0, v4}, Liv;->f(I)V

    return-void

    .line 187
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Liv;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Liv;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Liv;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Liv;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Liv;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_20
    return-void
.end method

.method final k()Z
    .locals 1

    iget-boolean v0, p0, Liv;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Liv;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 472
    invoke-static {v0}, Lge;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Liv;->q:Lgi;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lgi;->a()V

    :cond_0
    return-void
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Liv;->W:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget v0, Lid;->a:I

    return v0
.end method

.method public final n()V
    .locals 1

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Liv;->a(Z)V

    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Liv;->l:Lnv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 338
    invoke-interface {v0}, Lnv;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Liv;->g:Landroid/content/Context;

    .line 339
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liv;->l:Lnv;

    .line 340
    invoke-interface {v0}, Lnv;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    :cond_0
    invoke-virtual {p0}, Liv;->g()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v3, p0, Liv;->l:Lnv;

    .line 345
    invoke-interface {v3}, Lnv;->d()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_1

    iget-object v1, p0, Liv;->l:Lnv;

    .line 352
    invoke-interface {v1}, Lnv;->g()Z

    iget-boolean v1, p0, Liv;->D:Z

    if-nez v1, :cond_3

    .line 353
    invoke-virtual {p0, v2}, Liv;->e(I)Lit;

    move-result-object v1

    iget-object v1, v1, Lit;->h:Lkp;

    .line 354
    invoke-interface {v0, v4, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Liv;->D:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Liv;->F:Z

    if-eqz v3, :cond_2

    iget v3, p0, Liv;->G:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Liv;->h:Landroid/view/Window;

    .line 346
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Liv;->ab:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Liv;->ab:Ljava/lang/Runnable;

    .line 347
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    nop

    .line 348
    invoke-virtual {p0, v2}, Liv;->e(I)Lit;

    move-result-object v1

    iget-object v3, v1, Lit;->h:Lkp;

    if-eqz v3, :cond_3

    iget-boolean v5, v1, Lit;->o:Z

    if-nez v5, :cond_3

    iget-object v5, v1, Lit;->g:Landroid/view/View;

    .line 349
    invoke-interface {v0, v2, v5, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lit;->h:Lkp;

    .line 350
    invoke-interface {v0, v4, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Liv;->l:Lnv;

    .line 351
    invoke-interface {v0}, Lnv;->f()Z

    return-void

    .line 354
    :cond_3
    return-void

    .line 351
    :cond_4
    nop

    .line 341
    invoke-virtual {p0, v2}, Liv;->e(I)Lit;

    move-result-object v0

    iput-boolean v1, v0, Lit;->n:Z

    .line 342
    invoke-virtual {p0, v0, v2}, Liv;->a(Lit;Z)V

    const/4 v1, 0x0

    .line 343
    invoke-direct {p0, v0, v1}, Liv;->b(Lit;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 322
    invoke-virtual {p0, p2, p3, p4}, Liv;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 323
    invoke-virtual {p0, p1, p2, p3}, Liv;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
